import Vue from 'vue';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import DetailState from '../js/detail_state';
import ContributeForm from '../js/contribute_form';

describe('DetailState', () => {
  let localVue;
  const stubs = ['v-alert', 'v-divider', 'v-btn'];

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = () => {};
  });

  function createWrapper(props) {
    return shallowMount(DetailState, {
      localVue,
      stubs,
      propsData: props
    });
  }

  it('returns the state when open', () => {
    const detail = createWrapper({ status: 'open', point: {} });
    expect(detail.vm.type).toEqual('success');
  });

  it('returns the state when open_adapted', () => {
    const detail = createWrapper({ status: 'open_adapted', point: {} });
    expect(detail.vm.type).toEqual('success');
  });

  it('returns the state when partial', () => {
    const detail = createWrapper({ status: 'partial', point: {} });
    expect(detail.vm.type).toEqual('warning');
  });

  it('returns the state when unknown', () => {
    const detail = createWrapper({ status: 'unknown', point: {} });
    expect(detail.vm.type).toEqual('warning');
  });

  it('returns the state when closed', () => {
    const detail = createWrapper({ status: 'closed', point: {} });
    expect(detail.vm.type).toEqual('error');
  });

  it('open the contribute form', async () => {
    const detail = createWrapper({ status: 'unknown', point: {} });
    expect(detail.contains(ContributeForm)).toBe(false);
    detail.vm.contribute = true;
    await Vue.nextTick();
    expect(detail.contains(ContributeForm)).toBe(true);
  });
});
