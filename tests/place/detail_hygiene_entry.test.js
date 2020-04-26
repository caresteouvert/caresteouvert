import Vue from 'vue';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import HygieneEntry from '../../components/place/detail_hygiene_entry';

describe('HygieneEntry', () => {
  let localVue;
  const stubs = ['v-list-item', 'v-list-item-content', 'v-list-item-title',
                 'v-list-item-action', 'v-btn', 'v-icon'];

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = () => {};
  });

  function createWrapper(props) {
    return shallowMount(HygieneEntry, {
      localVue,
      stubs,
      propsData: props
    });
  }

  it('returns the color and icon when the product is here', () => {
    const wrapper = createWrapper({ has: 'yes', place: {}, type: '' });
    expect(wrapper.vm.icon).toEqual('osm-check');
    expect(wrapper.vm.color).toEqual('success');
  });

  it('returns the color and icon when there is no product', () => {
    const wrapper = createWrapper({ has: 'no', place: {}, type: '' });
    expect(wrapper.vm.icon).toEqual('osm-close');
    expect(wrapper.vm.color).toEqual('error');
  });

  it('returns the color and icon when we dont know', () => {
    const wrapper = createWrapper({ has: undefined, place: {}, type: '' });
    expect(wrapper.vm.icon).toEqual('osm-unknown');
    expect(wrapper.vm.color).toEqual('');
  });

  it('allows to override the value once submitted', () => {
    const wrapper = createWrapper({ has: 'no', place: {}, type: '' });
    expect(wrapper.vm.icon).toEqual('osm-close');
    wrapper.vm.submitted = 'yes';
    expect(wrapper.vm.icon).toEqual('osm-check');
    expect(wrapper.vm.color).toEqual('success');
  });
});
