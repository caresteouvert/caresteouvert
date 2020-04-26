import { shallowMount, createLocalVue } from '@vue/test-utils';
import Vuex from 'vuex';
import Vue from 'vue';
import FilterResults from '../components/filter_results';

describe('FilterResults', () => {
  const stubs = ['v-btn', 'v-icon', 'v-menu', 'v-list', 'v-divider',
                 'v-spacer', 'v-skeleton-loader'];
  let localVue;
  let store;

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = t => t;
    localVue.prototype.$vuetify = { breakpoint: {} };
    localVue.use(Vuex);
    store = new Vuex.Store({ state: {}, getters: { allCategories() { return {}; } } });
  });

  function createWrapper(props) {
    return shallowMount(FilterResults, {
      localVue,
      stubs,
      store,
      propsData: props
    });
  }

  it('display the current category', () => {
    const wrapper = createWrapper({ value: 'test/test2', mapBounds: [], services: [] });
    expect(wrapper.vm.category).toEqual('test');
  });

  it('return the filter name', () => {
    const wrapper = createWrapper({ value: 'test/test2', mapBounds: [], services: [] });
    expect(wrapper.vm.hasSelectedSubCategory).toBe(true);
    expect(wrapper.vm.filterName).toEqual('cat');
    expect(wrapper.vm.filterValue).toEqual('test2');

    wrapper.setProps({ value: 'cro' });
    expect(wrapper.vm.hasSelectedSubCategory).toBe(false);
    expect(wrapper.vm.filterName).toEqual('normalized_cat');
    expect(wrapper.vm.filterValue).toEqual('cro');
  });

  it('fetch the data', async () => {
    global.fetch = () => {  return Promise.resolve({ json() { return { test: 'hola' }; } }); };
    const wrapper = createWrapper({ value: 'test/test2', mapBounds: [[], []], services: [] });
    expect(wrapper.vm.loading).toBe(true);
    await Vue.nextTick();
    await Vue.nextTick();
    expect(wrapper.vm.results).toEqual({ test: 'hola' });
    expect(wrapper.vm.loading).toBe(false);
  });
});
