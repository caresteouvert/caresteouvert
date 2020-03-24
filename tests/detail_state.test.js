import { shallowMount, createLocalVue } from '@vue/test-utils';
import DetailState from '../js/detail_state';

describe('DetailState', () => {
  let localVue;
  const stubs = {
    'v-alert': '<div />'
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
    const detail = createWrapper({ status: 'ouvert' });
    expect(detail.vm.type).toEqual('success');
  });

  it('returns the state when ouvert_adapté', () => {
    const detail = createWrapper({ status: 'ouvert_adapté' });
    expect(detail.vm.type).toEqual('success');
  });

  it('returns the state when partiel', () => {
    const detail = createWrapper({ status: 'partiel' });
    expect(detail.vm.type).toEqual('warning');
  });

  it('returns the state when inconnu', () => {
    const detail = createWrapper({ status: 'inconnu' });
    expect(detail.vm.type).toEqual('warning');
  });
});
