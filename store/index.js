import categories from '../categories.json';
import categoriesForCountry from '../components/categories';

export const state = () => ({
  country: '',
  categories: []
});

export const mutations = {
  setCountry (state, country) {
    state.country = country;
  }
};

export const getters = {
  categories(state) {
    return Object.keys(categoriesForCountry(categories, state.country)).concat(['other']);
  }
};
