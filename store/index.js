import categories from '../categories.json';
import categoriesForCountry from '../lib/categories';

export const state = () => ({
  country: '',
  categories: [],
  place: null,
  contribution: null
});

export const mutations = {
  setCountry (state, country) {
    state.country = country;
  },

  setPlace (state, place) {
    state.place = place;
  },

  setContribution (state, contribution) {
    state.contribution = contribution
  },
};

export const getters = {
  categories(state) {
    return Object.keys(categoriesForCountry(categories, state.country)).concat(['other']);
  },

  allCategories(state) {
    return categoriesForCountry(categories, state.country);
  },
};
