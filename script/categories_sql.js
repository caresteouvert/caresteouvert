/*
 * Generate SQL functions to handle POI categories in DB
 */

const path = require('path');
const fs = require('fs');

const CATEGORIES_JSON = path.join(__dirname, "..", "categories.json");
const CATEGORIES_SQL = path.join(__dirname, "..", "db", "categories_functions.sql");
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
				const values = v.split("|");
				const rightpart = values.length === 1 ? `= '${values[0]}'` : `IN (${values.map(v => `'${v}'`).join(", ")})`;
				return `tags->'${k}' ${rightpart}`;
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
	tagsPerCategory[catId] = Object.values(cat.subcategories).map(subcat => subcat.osm_tags).flat();

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

const catfct = `CREATE OR REPLACE FUNCTION get_category(tags HSTORE) RETURNS VARCHAR AS $$
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
		tagsPerSubcategory[subcatId] = subcat.osm_tags;
	});
});

const subcatfct = `CREATE OR REPLACE FUNCTION get_subcategory(tags HSTORE) RETURNS VARCHAR AS $$
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


// Edit categories filter in update_poi.sql
const tagsForCondition = {};

Object.values(catg.categories).map(cat => Object.values(cat.subcategories).map(subcat => subcat.osm_tags).flat()).flat().forEach(e => {
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
