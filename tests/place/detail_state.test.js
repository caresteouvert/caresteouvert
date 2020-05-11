import Vue from 'vue';
import Vuex from 'vuex';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import DetailState from '../../components/place/detail_state';
import ContributeForm from '../../components/contribute_form';

describe('DetailState', () => {
  let localVue;
  let store;
  const stubs = ['v-alert', 'v-divider', 'v-btn'];

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = () => {};
    localVue.use(Vuex);
    store = new Vuex.Store({});
  });

  function createWrapper(props) {
    return shallowMount(DetailState, {
      localVue,
      stubs,
      store,
      propsData: props
    });
  }

  it('returns the state when open', () => {
    const detail = createWrapper({ status: 'open', place: {} });
    expect(detail.vm.type).toEqual('success');
  });

  it('returns the state when open_adapted', () => {
    const detail = createWrapper({ status: 'open_adapted', place: {} });
    expect(detail.vm.type).toEqual('success');
  });

  it('returns the state when partial', () => {
    const detail = createWrapper({ status: 'partial', place: {} });
    expect(detail.vm.type).toEqual('warning');
  });

  it('returns the state when unknown', () => {
    const detail = createWrapper({ status: 'unknown', place: {} });
    expect(detail.vm.type).toEqual('warning');
  });

  it('returns the state when closed', () => {
    const detail = createWrapper({ status: 'closed', place: {} });
    expect(detail.vm.type).toEqual('error');
  });

  it('open the contribute form', async () => {
    const detail = createWrapper({ status: 'unknown', place: {} });
    expect(detail.findComponent(ContributeForm).exists()).toBe(false);
    detail.vm.contribute = true;
    await Vue.nextTick();
    expect(detail.findComponent(ContributeForm).exists()).toBe(true);
  });
});
