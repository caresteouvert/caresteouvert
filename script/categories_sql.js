/*
 * Generate SQL functions to handle POI categories in DB
 */

const path = require('path');
const fs = require('fs');

const CATEGORIES_JSON = path.join(__dirname, "..", "categories.json");
const CATEGORIES_SQL = path.join(__dirname, "..", "db", "categories_functions.sql");
const CATEGORIES_SQL_TESTS = path.join(__dirname, "..", "db", "categories_functions_test.sql");
const POI_SQL = path.join(__dirname, "..", "db", "update_poi.sql");

const catg = require(CATEGORIES_JSON);


/**
 * Converts a list of OSM tags for a category into SQL conditions
 */
function tagsPerCategoryToSql(tpc) {
	const sqlPerCategory = {};
	Object.entries(tpc).forEach(e => {
		const [ catId, tags ] = e;
		const sqlCond = tags.map(kv => {
			return Object.entries(kv).map(kv => {
				const [ k, v ] = kv;

				if(k === "areas") {
					const rightpart = v.length === 1 ? `LIKE '${v[0]}%'` : `SIMILAR TO '(${v.join("|")})%'`;
					return `area ${rightpart}`;
				}
				else if(k === "-areas") {
					const rightpart = v.length === 1 ? `LIKE '${v[0]}%'` : `SIMILAR TO '(${v.join("|")})%'`;
					return `area NOT ${rightpart}`;
				}
				else {
					const values = v.split("|");
					const rightpart =
						values.length === 1 ?
						(values[0] === "*" ? `!= ''` : `= '${values[0]}'`)
						: `IN (${values.map(v => `'${v}'`).join(", ")})`;
					return `tags->'${k}' ${rightpart}`;
				}
			})
			.join(" AND ");
		});

		sqlPerCategory[catId] = sqlCond.length === 1 ? sqlCond : sqlCond.map(c => `(${c})`).join(" OR ");
	});

	// Generate string for list of conditions
	let conditionsSql = '';
	Object.entries(sqlPerCategory).forEach((e, i) => {
		const [ cat, sql ] = e;

		conditionsSql += `${i === 0 ? '' : '\n\tELS'}IF ${sql} THEN
		RETURN '${cat}';`;
	});

	return conditionsSql;
}


// Find all tags for a category
const tagsPerCategory = {};

Object.entries(catg.categories).forEach(e => {
	const [ catId, cat ] = e;
	const singleTags = {};
	tagsPerCategory[catId] = Object.values(cat.subcategories)
	.filter(subcat => subcat.osm_tags)
	.map(subcat => {
		let result;
		if(subcat.osm_filter_tags) {
			result = [];
			subcat.osm_tags.forEach(tags => {
				result.push(Object.assign({}, tags, { "opening_hours:covid19": "*" }));
				subcat.osm_filter_tags.forEach(ftags => {
					result.push(Object.assign({}, tags, ftags));
				});
			});
		}
		else {
			result = subcat.osm_tags;
		}

		if(subcat.areas && subcat.areas !== "all") {
			result = result.map(obj => Object.assign({}, obj, { areas: subcat.areas }));
		}

		if(subcat["-areas"]) {
			result = result.map(obj => Object.assign({}, obj, { "-areas": subcat["-areas"] }));
		}

		return result;
	}).flat();

	// Merge single tags
	tagsPerCategory[catId].forEach(kv => {
		if(Object.keys(kv).length === 1) {
			const k = Object.keys(kv)[0];
			if(!singleTags[k]) {
				singleTags[k] = [ kv[k] ];
			}
			else {
				singleTags[k].push(kv[k]);
			}
		}
	});

	tagsPerCategory[catId] = tagsPerCategory[catId].filter(kv => Object.keys(kv).length !== 1 || !Object.keys(singleTags).includes(Object.keys(kv)[0]));
	Object.entries(singleTags).forEach(e => {
		tagsPerCategory[catId].push({ [e[0]]: e[1].join("|") });
	});
});

const catfct = `CREATE OR REPLACE FUNCTION get_category(tags HSTORE, area VARCHAR) RETURNS VARCHAR AS $$
BEGIN
	${tagsPerCategoryToSql(tagsPerCategory)}
	ELSIF tags->'opening_hours:covid19' != '' THEN
		RETURN 'other';
	ELSE
		RETURN NULL;
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;
`;


// Find all tags for subcategories
const tagsPerSubcategory = {};
Object.values(catg.categories).forEach(cat => {
	Object.entries(cat.subcategories).forEach(e => {
		const [ subcatId, subcat ] = e;
		if(subcat.osm_tags) {
			tagsPerSubcategory[subcatId] = subcat.osm_tags;
		}
	});
});

const subcatfct = `CREATE OR REPLACE FUNCTION get_subcategory(tags HSTORE, area VARCHAR) RETURNS VARCHAR AS $$
BEGIN
	${tagsPerCategoryToSql(tagsPerSubcategory)}
	ELSE
		RETURN 'unknown';
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;
`;


// Write whole SQL into file
const wholeSql = `--
-- AUTOMATICALLY GENERATED SCRIPT
-- DO NOT EDIT DIRECTLY, EDIT INSTEAD "/categories.json"
-- THEN RUN "yarn run categories" TO UPDATE
--

-- Function for getting normalized category from OSM tags
${catfct}

-- Function for getting normalized subcategory from OSM tags
${subcatfct}`;

fs.writeFile(CATEGORIES_SQL, wholeSql, (err) => {
	if(err) { throw new Error(err); }
});


function areasFor(subCat) {
  if (subCat.areas === 'all') {
    return catg.countries;
  } else if (subCat['-areas']) {
    return catg.countries.filter(c => !subCat['-areas'].includes(c));
  } else {
    return subCat.areas;
  }
}

function tagsToHstore(tags) {
  return Object.entries(tags).map(([key, value]) => {
    return `${key}=>${value}`;
  }).join(', ');
}


function allPossibleCases(arr) {
  if (arr.length == 1) {
    return arr[0];
  } else {
    var result = [];
    var allCasesOfRest = allPossibleCases(arr.slice(1));
    for (var i = 0; i < allCasesOfRest.length; i++) {
      for (var j = 0; j < arr[0].length; j++) {
        result.push({...arr[0][j], ...allCasesOfRest[i] });
      }
    }
    return result;
  }
}

function expandTags(tags) {
  const toZip = Object.entries(tags).map(([key, value]) => {
    return value.split('|').map((v) => {
      return { [key]: v };
    });
  });
  return allPossibleCases(toZip);
}


const categoriesTests = [];

Object.entries(catg.categories).forEach(([catId, cat]) => {
  Object.entries(cat.subcategories).forEach(([subCatId, subCat]) => {
    if (!subCat.osm_tags) {
      return;
    }
    let allTags = subCat.osm_tags.flatMap(tags => expandTags(tags));
    if (subCat.osm_filter_tags) {
      allTags = subCat.osm_filter_tags.flatMap((tags) => {
        return allPossibleCases([expandTags(tags), allTags]);
      });
    }

    allTags.forEach((tags) => {
      areasFor(subCat).forEach((area) => {
        categoriesTests.push({ tags: tagsToHstore(tags), area, subCatId, catId });
      });
    });
   })
});

function createTest(fn, test, result) {
  return `SELECT is(
  ${fn}('${test.tags}'::hstore, '${test.area}'),
  '${result}',
  '${fn} ${test.tags} for ${test.area} should be ${result}'
);`;
}

const categoriesTestsString = categoriesTests.flatMap((test) => {
  return [
    createTest('get_category', test, test.catId),
    createTest('get_subcategory', test, test.subCatId)
  ];
}).join("\n\n");

const testsSql = `
BEGIN;
SELECT plan(${categoriesTests.length * 2});

${categoriesTestsString}

SELECT * FROM finish();
ROLLBACK;
`;

fs.writeFile(CATEGORIES_SQL_TESTS, testsSql, (err) => {
	if(err) { throw new Error(err); }
});

// Edit categories filter in update_poi.sql
const tagsForCondition = {};

Object.values(catg.categories)
.map(cat => (
	Object.values(cat.subcategories)
	.filter(subcat => subcat.osm_tags)
	.map(subcat => subcat.osm_tags)
	.flat()
))
.flat()
.forEach(e => {
	Object.entries(e).forEach(kv => {
		const [ k, v ] = kv;
		if(catg.sql_columns.includes(k)) {
			if(!tagsForCondition[k]) {
				tagsForCondition[k] = new Set();
			}
			v.split("|").map(sv => tagsForCondition[k].add(sv));
		}
	});
});

const sqlCond = `\n\tcountry_iso2 IN (${catg.countries.map(c => `'${c}'`).join(", ")}) AND ("opening_hours:covid19" != '' OR `+Object.entries(tagsForCondition).map(e => `"${e[0]}" IN (${[...e[1]].sort().map(v => `'${v}'`).join(', ')})`).join(" OR ")+`) --CATEGORIES\n`;

fs.readFile(POI_SQL, 'utf8', (err, txt) => {
	if(err) { throw new Error(err); }

	const newTxt = txt.replace(/\n.*--CATEGORIES\n/g, sqlCond);

	fs.writeFile(POI_SQL, newTxt, 'utf8', (err) => {
		if(err) { throw new Error(err); }
	});
});
