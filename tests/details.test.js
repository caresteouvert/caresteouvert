import Vue from 'vue';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import Detail from '../js/detail';
import DetailOpeningHours from '../js/detail_opening_hours';

describe('Detail', () => {
  let localVue;
  let point;
  const stubs = {
    'v-alert': '<div class="v-alert"><slot /></div>',
    'v-toolbar': '<div><slot /></div>',
    'v-toolbar-title': '<div><slot /></div>',
    'v-card': '<div><slot /></div>',
    'v-list': '<div><slot /></div>',
    'v-icon': '<div></div>',
    'v-btn': '<div></div>',
    'v-spacer': '<div></div>',
    'v-footer': '<div></div>',
    'v-slide-x-reverse-transition': '<div><slot /></div>'
  };

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$te = () => true;
    localVue.prototype.$t = (key) => key;
    localVue.directive('resize', {});

    global.fetch = () => {
      return Promise.resolve({
        json() {
          return point;
        }
      });
    };
  });

  function createWrapper(props) {
    return shallowMount(Detail, {
      localVue,
      stubs,
      propsData: props
    });
  }

  it('fetch the given POI', async () => {
    point = { properties: { status: 'ouvert', cat: '', tags: {} } };
    const detail = createWrapper({ id: '' });
    expect(detail.vm.point).toBe(null);
    await global.fetch();
    await Vue.nextTick();
    expect(detail.vm.point).not.toBe(null);
  });

  it('display opening_hours', async () => {
    point = { properties: { status: 'ouvert', cat: '', opening_hours: 'Mo-Sa 09:00-18:00', tags: {} } };
    const detail = createWrapper({ id: '' });
    await global.fetch();
    await Vue.nextTick();
    expect(detail.contains(DetailOpeningHours)).toBe(true);
  });

  it('dont display opening_hours when "open"', async () => {
    point = { properties: { status: 'ouvert', cat: '', opening_hours: 'open', tags: {} } };
    const detail = createWrapper({ id: '' });
    await global.fetch();
    await Vue.nextTick();
    expect(detail.contains(DetailOpeningHours)).toBe(false);
  });

  it('display opening_hours in an alert when opening_hours present in tags', async () => {
    point = { properties: { status: 'ouvert', cat: '', opening_hours: null, tags: { opening_hours: 'Mo-Sa 09:00-18:00' } } };
    const detail = createWrapper({ id: '' });
    await global.fetch();
    await Vue.nextTick();
    expect(detail.find('.v-alert').contains(DetailOpeningHours)).toBe(true);
  });

  it('display only one opening_hours', async () => {
    point = { properties: { status: 'ouvert', cat: '', opening_hours: 'Mo-Sa 09:00-18:00', tags: { opening_hours: 'Mo-Sa 09:00-18:00' } } };
    const detail = createWrapper({ id: '' });
    await global.fetch();
    await Vue.nextTick();
    expect(detail.findAll(DetailOpeningHours).length).toEqual(1);
  });

  it('add the facebook url if not present', async () => {
    point = { properties: { status: 'ouvert', cat: '', tags: { facebook: 'test' } } };
    const detail = createWrapper({ id: '' });
    await global.fetch();
    await Vue.nextTick();
    expect(detail.vm.contact('facebook')).toEqual('https://facebook.com/test');

    detail.vm.point.properties.tags.facebook = 'https://facebook.com/test2';
    expect(detail.vm.contact('facebook')).toEqual('https://facebook.com/test2');
  });

  it('returns phone', async () => {
    point = { properties: { status: 'ouvert', cat: '', tags: { phone: 'test' } } };
    const detail = createWrapper({ id: '' });
    await global.fetch();
    await Vue.nextTick();
    expect(detail.vm.contact('phone')).toEqual('test');
  });

});
