import categories from '../categories.json';
import categoriesForCountry from '../components/categories';

export const state = () => ({
  country: '',
  categories: [],
  place: null
});

export const mutations = {
  setCountry (state, country) {
    state.country = country;
  },

  setPlace (state, place) {
    state.place = place;
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
