import categories from '../categories.json';
import categoriesForCountry from '../components/categories';

export const state = () => ({
  country: '',
  categories: [],
  poi: null
});

export const mutations = {
  setCountry (state, country) {
    state.country = country;
  },

  setPoi (state, poi) {
    state.poi = poi;
  }
};

export const getters = {
  categories(state) {
    return Object.keys(categoriesForCountry(categories, state.country)).concat(['other']);
  },

  allCategories(state) {
    return categoriesForCountry(categories, state.country);
  }
};
