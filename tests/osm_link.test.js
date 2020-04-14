import Vuex from 'vuex';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import OsmLink from '../components/osm_link';

describe('OSMLink', () => {
  const stubs = ['v-row', 'v-col', 'v-btn'];
  let localVue;
  let store;

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = () => {};
    localVue.prototype.$i18n = {};
    localVue.use(Vuex);
    store = new Vuex.Store({ state: { country: '' } });
  });

  function createWrapper(props) {
    return shallowMount(OsmLink, {
      localVue,
      stubs,
      store,
      propsData: props
    });
  }

  it('display the link to the POI', () => {
    const link = createWrapper({ id: 'n1234' });
    expect(link.vm.osmLink).toEqual('https://www.openstreetmap.org/node/1234');
    expect(link.vm.idLink).toEqual('https://www.openstreetmap.org/edit?editor=id&node=1234');
  });
});
