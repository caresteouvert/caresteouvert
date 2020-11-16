function isRelatedToArea(list, area) {
  if(list === "all" || list.includes(area)) {
    return true;
  }
  // If area is a subcountry, look for country
  else if(area.length > 2) {
    const country = area.substring(0, 2);
    return list.includes(country);
  }
  else {
    return false;
  }
}

function filterSubCategories(subcategories, area) {
  return Object.keys(subcategories).reduce((memo, subcategory) => {
    const areas = subcategories[subcategory].areas;
    const minusAreas = subcategories[subcategory]["-areas"];
    const mapfilter = subcategories[subcategory].mapfilter;
    const minusMapfilter = subcategories[subcategory]["-mapfilter"];

    if (
      ((areas && isRelatedToArea(areas, area)) || (minusAreas && !isRelatedToArea(minusAreas, area)))
      && (!minusMapfilter || !isRelatedToArea(minusMapfilter, area))
      && (!mapfilter || isRelatedToArea(mapfilter, area))
    ) {
      memo[subcategory] = subcategories[subcategory];
    }
    return memo;
  }, {});
}

export default function categoriesForArea(data, area) {
  return Object.keys(data.categories).reduce((memo, category) => {
    const minusMapfilter = data.categories[category]["-mapfilter"];
    const mapfilter = data.categories[category].mapfilter;

    const subcategories = filterSubCategories(data.categories[category].subcategories, area);

    if (
      Object.keys(subcategories).length > 0
      && (!minusMapfilter || !isRelatedToArea(minusMapfilter, area))
      && (!mapfilter || isRelatedToArea(mapfilter, area))
    ) {
      memo[category] = { subcategories };
    }
    return memo;
  }, {});
}

export const SUB_FILTERS = ['delivery', 'takeaway'];

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
  return services.filter(s => SUB_FILTERS.includes(s));
}
