import { shallowMount, createLocalVue } from '@vue/test-utils';
import OsmLink from '../js/osm_link';

describe('OSMLink', () => {
  let localVue;
  const stubs = {
    'v-row': '<div><slot /></div>',
    'v-col': '<div><slot /></div>',
    'v-btn': '<div class="btn" />'
  };

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = () => {};
  });

  function createWrapper(props) {
    return shallowMount(OsmLink, {
      localVue,
      stubs,
      propsData: props
    });
  }

  it('display the link to the POI', () => {
    const link = createWrapper({ id: 'n1234' });
    expect(link.vm.osmLink).toEqual('https://www.openstreetmap.org/node/1234');
    expect(link.vm.idLink).toEqual('https://www.openstreetmap.org/edit?editor=id&node=1234');
  });
});
