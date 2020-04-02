/*
 * Inject locales JSON labels into categories.json file.
 */

const path = require('path');
const fs = require('fs');

const LOCALES_DIR = path.join(__dirname, "..", "locales");
const CATEGORIES_JSON = path.join(__dirname, "..", "categories.json");

const catg = require(CATEGORIES_JSON);
const JSON_RGX = /^[A-Za-z0-9_\-]+\.json$/;

// Load in-memory all translation files
let locales = {};

fs.readdirSync(LOCALES_DIR).forEach((file) => {
	if(JSON_RGX.test(file) && file !== "en.json") {
		try {
			const localeJson = JSON.parse(fs.readFileSync(LOCALES_DIR+"/"+file, 'utf8'));
			locales[file.substring(0, file.length-5)] = localeJson;
		}
		catch(e) {
			throw new Error("Can't parse translation file: "+file+" ("+e.message+")");
		}
	}
});

// Add translations into categories
Object.entries(locales).forEach(e => {
	const [ localeId, locale ] = e;
	const localeLabels = locale.categories;

	if(localeLabels) {
		Object.entries(catg.categories).forEach(e => {
			const [ key, cat ] = e;

			if(localeLabels[key]) {
				cat.name[localeId] = localeLabels[key];
			}

			Object.entries(cat.subcategories).forEach(e => {
				const [ sckey, scobj ] = e;

				if(localeLabels[sckey]) {
					scobj.name[localeId] = localeLabels[sckey];
				}
			});
		});
	}
});

// Write updated categories
const outCategories = JSON.stringify(catg, null, 2);
fs.writeFile(CATEGORIES_JSON, outCategories, (err) => {
	if(err) { throw new Error(err); }
});
