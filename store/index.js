import { findBrand } from '../lib/url';
import categories from '../categories.json';
import categoriesForArea from '../lib/categories';

export const state = () => ({
  country: '',
  area: '',
  brandId: 'DEFAULT',
  categories: [],
  place: null,
  highlightPlace: null,
  contribution: null
});

export const mutations = {
  setArea (state, area) {
    state.area = area;
    state.country = area.split('-')[0];
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
    return Object.keys(categoriesForArea(categories, state.area)).concat(['other']);
  },

  allCategories(state) {
    return categoriesForArea(categories, state.area);
  },
};

export const actions = {
  nuxtServerInit ({ commit }, { req }) {
    if (req.headers.host) {
      commit('setBrandId', findBrand(req.headers.host).brand);
    }
  }
};
