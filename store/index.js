import { findBrand } from '../lib/url';
import categories from '../categories.json';
import categoriesForCountry from '../lib/categories';

export const state = () => ({
  country: '',
  brandId: 'DEFAULT',
  categories: [],
  place: null,
  highlightPlace: null,
  contribution: null
});

export const mutations = {
  setCountry (state, country) {
    state.country = country;
  },

  setPlace (state, place) {
    state.place = place;
  },

  setBrandId (state, brandId) {
    state.brandId = brandId;
  },

  highlightPlace (state, place) {
    state.highlightPlace = place;
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

export const actions = {
  nuxtServerInit ({ commit }, { req }) {
    if (req.headers.host) {
      commit('setBrandId', findBrand(req.headers.host).brand);
    }
  }
};
