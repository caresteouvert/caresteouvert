function filterSubCategories(subcategories, country) {
  return Object.keys(subcategories).reduce((memo, subcategory) => {
    const areas = subcategories[subcategory].areas;
    const minusAreas = subcategories[subcategory]["-areas"];
    const mapfilter = subcategories[subcategory].mapfilter;
    const minusMapfilter = subcategories[subcategory]["-mapfilter"];

    if (
      ((areas && (areas === 'all' || areas.includes(country))) || (minusAreas && !minusAreas.includes(country)))
      && (!minusMapfilter || (minusMapfilter !== "all" && !minusMapfilter.includes(country)))
      && (!mapfilter || mapfilter.includes(country))
    ) {
      memo[subcategory] = subcategories[subcategory];
    }
    return memo;
  }, {});
}

export default function categoriesForCountry(data, country) {
  return Object.keys(data.categories).reduce((memo, category) => {
    const minusMapfilter = data.categories[category]["-mapfilter"];
    const mapfilter = data.categories[category].mapfilter;
    const subcategories = filterSubCategories(data.categories[category].subcategories, country);
    if (Object.keys(subcategories).length > 0 && (!minusMapfilter || !minusMapfilter.includes(country)) && (!mapfilter || mapfilter.includes(country))) {
      memo[category] = { subcategories };
    }
    return memo;
  }, {});
}

export function availableSubFilters(categories, filter) {
  const [ category, subcategory ] = filter.split('/');
  if (!categories[category]) {
    return [];
  }
  const subcategories = categories[category].subcategories;
  const services = [];
  if (subcategory) {
    if (subcategories[subcategory]) {
      services.push(...subcategories[subcategory].form_details || []);
    }
  } else {
    for (let [name, value] of Object.entries(subcategories)) {
      (value.form_details || []).forEach((service) => {
        if (!services.includes(service)) {
          services.push(service);
        }
      });
    }
  }
  return services.filter(s => ['delivery', 'takeaway'].includes(s));
}
