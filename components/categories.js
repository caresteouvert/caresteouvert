function filterSubCategories(subcategories, lang) {
  return Object.keys(subcategories).reduce((memo, subcategory) => {
    const areas = subcategories[subcategory].areas;
    const minusAreas = subcategories[subcategory]["-areas"];
    if ((areas && (areas === 'all' || areas.includes(lang))) || (minusAreas && !minusAreas.includes(lang))) {
      memo[subcategory] = subcategories[subcategory];
    }
    return memo;
  }, {});
}

export default function categoriesForCountry(data, lang) {
  return Object.keys(data.categories).reduce((memo, category) => {
    const subcategories = filterSubCategories(data.categories[category].subcategories, lang);
    if (Object.keys(subcategories).length > 0) {
      memo[category] = { subcategories };
    }
    return memo;
  }, {});
}
