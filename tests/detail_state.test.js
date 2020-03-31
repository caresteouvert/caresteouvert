import Vue from 'vue';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import DetailState from '../js/detail_state';
import ContributeForm from '../js/contribute_form';

describe('DetailState', () => {
  let localVue;
  const stubs = {
    'v-alert': '<div></div>',
    'v-divider': '<div></div>'
  };

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

  it('returns the state when ouvert', () => {
    const detail = createWrapper({ status: 'ouvert', point: {} });
    expect(detail.vm.type).toEqual('success');
  });

  it('returns the state when ouvert_adapté', () => {
    const detail = createWrapper({ status: 'ouvert_adapté', point: {} });
    expect(detail.vm.type).toEqual('success');
  });

  it('returns the state when partiel', () => {
    const detail = createWrapper({ status: 'partiel', point: {} });
    expect(detail.vm.type).toEqual('warning');
  });

  it('returns the state when inconnu', () => {
    const detail = createWrapper({ status: 'inconnu', point: {} });
    expect(detail.vm.type).toEqual('warning');
  });

  it('returns the state when fermé', () => {
    const detail = createWrapper({ status: 'fermé', point: {} });
    expect(detail.vm.type).toEqual('error');
  });

  it('open the contribute form', async () => {
    const detail = createWrapper({ status: 'inconnu', point: {} });
    expect(detail.contains(ContributeForm)).toBe(false);
    detail.vm.contribute = true;
    await Vue.nextTick();
    expect(detail.contains(ContributeForm)).toBe(true);
  });
});
