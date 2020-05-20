import Vue from 'vue';
import Vuex from 'vuex';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import Detail from '../../components/place/detail';
import DetailOpeningHours from '../../components/place/detail_opening_hours';

describe('Detail', () => {
  let localVue;
  let place;
  let store;
  const stubs = ['v-alert', 'v-toolbar', 'v-toolbar-title', 'v-card', 'v-list', 'v-sheet',
                 'v-subheader', 'v-list-item', 'v-list-item-content', 'v-list-item-icon',
                 'v-icon', 'v-btn', 'v-spacer', 'v-footer', 'v-slide-x-reverse-transition'];

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$te = () => true;
    localVue.prototype.$t = (key) => key;
    localVue.prototype.$vuetify = { breakpoint: {} };
    localVue.use(Vuex);
    localVue.directive('resize', {});
    localVue.directive('linkified', {});
    localVue.directive('touch', {});
    store = new Vuex.Store({});
  });

  function createWrapper(props) {
    return shallowMount(Detail, {
      localVue,
      stubs,
      store,
      propsData: props
    });
  }

  it('display opening_hours', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.place = { properties: { status: 'open', cat: '', opening_hours: 'Mo-Sa 09:00-18:00', tags: {}, country: 'FR' }, geometry: { coordinates: [ 48.7, -1.2 ] } };
    await Vue.nextTick();
    expect(detail.findComponent(DetailOpeningHours).exists()).toBe(true);
  });

  it('dont display opening_hours when "open"', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.place = { properties: { status: 'open', cat: '', opening_hours: 'open', tags: {}, country: 'FR' }, geometry: { coordinates: [ 48.7, -1.2 ] } };
    await Vue.nextTick();
    expect(detail.vm.hasSpecificOpeningHours).toBe(false);
    expect(detail.findComponent(DetailOpeningHours).exists()).toBe(false);
    expect(detail.vm.hasOpeningInfos).toBe(false);
    expect(detail.vm.hasOpeningInfos).toBe(false);
  });

  it('display opening_hours when opening_hours present in tags', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.place = { properties: { status: 'open', cat: '', opening_hours: null, tags: { opening_hours: 'Mo-Sa 09:00-18:00' }, country: 'FR' }, geometry: { coordinates: [ 48.7, -1.2 ] } };
    await Vue.nextTick();
    expect(detail.vm.hasSpecificOpeningHours).toBe(false);
    expect(detail.vm.hasOpeningInfos).toBe(true);
  });

  it('display only one opening_hours', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.place = { properties: { status: 'open', cat: '', opening_hours: 'Mo-Sa 09:00-18:00', tags: { opening_hours: 'Mo-Sa 09:00-18:00' }, country: 'FR' }, geometry: { coordinates: [ 48.7, -1.2 ] } };
    await Vue.nextTick();
    expect(detail.vm.hasSpecificOpeningHours).toBe(true);
    expect(detail.findAllComponents(DetailOpeningHours).length).toEqual(1);
    expect(detail.vm.hasOpeningInfos).toBe(true);
  });

  it('hasOpeningInfos when there is brand_hours', () => {
    const detail = createWrapper({ id: '' });
    detail.vm.place = { properties: { status: 'open', cat: '', brand_hours: 'https://', tags: { }, country: 'FR' }, geometry: { coordinates: [ 48.7, -1.2 ] } };
    expect(detail.vm.hasSpecificOpeningHours).toBe(false);
    expect(detail.vm.hasOpeningInfos).toBe(true);
  });

  describe('hasContactInfos', () => {
    let detail;
    beforeEach(() => {
      detail = createWrapper({ id: '' });
    });

    it('true with phone', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { 'phone': '01' } } };
      expect(detail.vm.hasContactInfos).toBe(true);
    });

    it('true with mobile phone', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { 'mobile': '01' } } };
      expect(detail.vm.hasContactInfos).toBe(true);
    });

    it('false when nothing', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { } } };
      expect(detail.vm.hasContactInfos).toBe(false);
    });
  });

  describe('contact', () => {
    let detail;
    beforeEach(() => {
      detail = createWrapper({ id: '' });
    });

    it('add the facebook url if not present', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { facebook: 'test' } } };
      expect(detail.vm.contact('facebook')).toEqual([{ text: 'test', href: 'https://facebook.com/test' }]);

      detail.vm.place.properties.tags.facebook = 'https://facebook.com/test2';
      expect(detail.vm.contact('facebook')).toEqual([{ text: 'test2', href: 'https://facebook.com/test2' }]);
    });

    it('returns website', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { website: 'example.com' } } };
      expect(detail.vm.contact('website')).toEqual([{ text: 'example.com', href: 'http://example.com' }]);

      detail.vm.place.properties.tags.website = 'http://example.com';
      expect(detail.vm.contact('website')).toEqual([{ text: 'example.com', href: 'http://example.com' }]);
    });

    it('returns email', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { email: 'test@example.net' } } };
      expect(detail.vm.contact('email')).toEqual([{ text: 'test@example.net', href: 'mailto:test@example.net' }]);
    });

    it('returns multiple emails', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { email: 'test@example.net;test2@example.net' } } };
      expect(detail.vm.contact('email')).toEqual([{ text: 'test@example.net', href: 'mailto:test@example.net' },
                                                  { text: 'test2@example.net', href: 'mailto:test2@example.net' }]);
    });

    it('returns phone', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { phone: '+33123456789' } } };
      expect(detail.vm.contact('phone')).toEqual([{ text: '01 23 45 67 89', href: 'tel:+33123456789' }]);
    });

    it('returns mobile', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { mobile: '+33123456789' } } };
      expect(detail.vm.contact('mobile')).toEqual([{ text: '01 23 45 67 89', href: 'tel:+33123456789' }]);
    });

    it('returns fax', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { fax: '+33123456789' } } };
      expect(detail.vm.contact('fax')).toEqual([{ text: '01 23 45 67 89', href: 'fax:+33123456789' }]);
    });

    it('returns nothing', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { } } };
      expect(detail.vm.contact('fax')).toBe(undefined);
    });
  });

  it('display services depending of the tags', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.place = { properties: { status: 'open', cat: '', tags: { takeaway: 'yes' } } };
    expect(detail.vm.services).toEqual([{ service: 'takeaway', value: 'details.takeaway.yes' }]);

    detail.vm.place = { properties: { status: 'closed', cat: '', tags: { takeaway: 'yes' } } };
    expect(detail.vm.services).toEqual([]);

    detail.vm.place = { properties: { status: 'open', cat: '', tags: { 'takeaway:covid19': 'yes' } } };
    expect(detail.vm.services).toEqual([{ service: 'takeaway', value: 'details.takeaway.yes' }]);

    detail.vm.place = { properties: { status: 'partial', cat: '', tags: { 'takeaway:covid19': 'yes' } } };
    expect(detail.vm.services).toEqual([{ service: 'takeaway', value: 'details.takeaway.yes' }]);

    detail.vm.place = { properties: { status: 'partial', cat: '', tags: { takeaway: 'yes' } } };
    expect(detail.vm.services).toEqual([]);
  });
});
