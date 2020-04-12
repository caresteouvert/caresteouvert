import Vue from 'vue';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import Detail from '../components/detail';
import DetailOpeningHours from '../components/detail_opening_hours';

describe('Detail', () => {
  let localVue;
  let point;
  const stubs = ['v-alert', 'v-toolbar', 'v-toolbar-title', 'v-card', 'v-list',
                 'v-icon', 'v-btn', 'v-spacer', 'v-footer', 'v-slide-x-reverse-transition'];

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$te = () => true;
    localVue.prototype.$t = (key) => key;
    localVue.directive('resize', {});
  });

  function createWrapper(props) {
    return shallowMount(Detail, {
      localVue,
      stubs,
      propsData: props
    });
  }

  it('display opening_hours', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.point = { properties: { status: 'ouvert', cat: '', opening_hours: 'Mo-Sa 09:00-18:00', tags: {} } };
    await Vue.nextTick();
    expect(detail.contains(DetailOpeningHours)).toBe(true);
  });

  it('dont display opening_hours when "open"', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.point = { properties: { status: 'ouvert', cat: '', opening_hours: 'open', tags: {} } };
    await Vue.nextTick();
    expect(detail.contains(DetailOpeningHours)).toBe(false);
  });

  it('display opening_hours in an alert when opening_hours present in tags', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.point = { properties: { status: 'ouvert', cat: '', opening_hours: null, tags: { opening_hours: 'Mo-Sa 09:00-18:00' } } };
    await Vue.nextTick();
    expect(detail.find('v-alert-stub').contains(DetailOpeningHours)).toBe(true);
  });

  it('display only one opening_hours', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.point = { properties: { status: 'ouvert', cat: '', opening_hours: 'Mo-Sa 09:00-18:00', tags: { opening_hours: 'Mo-Sa 09:00-18:00' } } };
    await Vue.nextTick();
    expect(detail.findAll(DetailOpeningHours).length).toEqual(1);
  });

  it('add the facebook url if not present', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.point = { properties: { status: 'ouvert', cat: '', tags: { facebook: 'test' } } };
    await Vue.nextTick();
    expect(detail.vm.contact('facebook')).toEqual('https://facebook.com/test');

    detail.vm.point.properties.tags.facebook = 'https://facebook.com/test2';
    expect(detail.vm.contact('facebook')).toEqual('https://facebook.com/test2');
  });

  it('returns phone', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.point = { properties: { status: 'ouvert', cat: '', tags: { phone: 'test' } } };
    await Vue.nextTick();
    expect(detail.vm.contact('phone')).toEqual('test');
  });
});
