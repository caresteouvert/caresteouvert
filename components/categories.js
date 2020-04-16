function filterSubCategories(subcategories, country) {
  return Object.keys(subcategories).reduce((memo, subcategory) => {
    const areas = subcategories[subcategory].areas;
    const minusAreas = subcategories[subcategory]["-areas"];
    if ((areas && (areas === 'all' || areas.includes(country))) || (minusAreas && !minusAreas.includes(country))) {
      memo[subcategory] = subcategories[subcategory];
    }
    return memo;
  }, {});
}

export default function categoriesForCountry(data, country) {
  return Object.keys(data.categories).reduce((memo, category) => {
    const subcategories = filterSubCategories(data.categories[category].subcategories, country);
    if (Object.keys(subcategories).length > 0) {
      memo[category] = { subcategories };
    }
    return memo;
  }, {});
}
