import Vue from 'vue';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import Detail from '../../components/place/detail';
import DetailOpeningHours from '../../components/place/detail_opening_hours';

describe('Detail', () => {
  let localVue;
  let place;
  const stubs = ['v-alert', 'v-toolbar', 'v-toolbar-title', 'v-card', 'v-list', 'v-sheet',
                 'v-subheader', 'v-list-item', 'v-list-item-content', 'v-list-item-icon',
                 'v-icon', 'v-btn', 'v-spacer', 'v-footer', 'v-slide-x-reverse-transition'];

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$te = () => true;
    localVue.prototype.$t = (key) => key;
    localVue.prototype.$vuetify = { breakpoint: {} };
    localVue.directive('resize', {});
    localVue.directive('linkified', {});
    localVue.directive('touch', {});
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
    detail.vm.place = { properties: { status: 'open', cat: '', opening_hours: 'Mo-Sa 09:00-18:00', tags: {} } };
    await Vue.nextTick();
    expect(detail.contains(DetailOpeningHours)).toBe(true);
  });

  it('dont display opening_hours when "open"', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.place = { properties: { status: 'open', cat: '', opening_hours: 'open', tags: {} } };
    await Vue.nextTick();
    expect(detail.vm.hasSpecificOpeningHours).toBe(false);
    expect(detail.contains(DetailOpeningHours)).toBe(false);
    expect(detail.vm.hasOpeningInfos).toBe(false);
    expect(detail.vm.hasOpeningInfos).toBe(false);
  });

  it('display opening_hours when opening_hours present in tags', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.place = { properties: { status: 'open', cat: '', opening_hours: null, tags: { opening_hours: 'Mo-Sa 09:00-18:00' } } };
    await Vue.nextTick();
    expect(detail.vm.hasSpecificOpeningHours).toBe(false);
    expect(detail.vm.hasOpeningInfos).toBe(true);
  });

  it('display only one opening_hours', async () => {
    const detail = createWrapper({ id: '' });
    detail.vm.place = { properties: { status: 'open', cat: '', opening_hours: 'Mo-Sa 09:00-18:00', tags: { opening_hours: 'Mo-Sa 09:00-18:00' } } };
    await Vue.nextTick();
    expect(detail.vm.hasSpecificOpeningHours).toBe(true);
    expect(detail.findAll(DetailOpeningHours).length).toEqual(1);
    expect(detail.vm.hasOpeningInfos).toBe(true);
  });

  it('hasOpeningInfos when there is brand_hours', () => {
    const detail = createWrapper({ id: '' });
    detail.vm.place = { properties: { status: 'open', cat: '', brand_hours: 'https://', tags: { } } };
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
      expect(detail.vm.contact('facebook')).toEqual([{ text: 'https://facebook.com/test', href: 'https://facebook.com/test' }]);

      detail.vm.place.properties.tags.facebook = 'https://facebook.com/test2';
      expect(detail.vm.contact('facebook')).toEqual([{ text: 'https://facebook.com/test2', href: 'https://facebook.com/test2' }]);
    });

    it('returns website', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { website: 'example.com' } } };
      expect(detail.vm.contact('website')).toEqual([{ text: 'http://example.com', href: 'http://example.com' }]);

      detail.vm.place.properties.tags.website = 'http://example.com';
      expect(detail.vm.contact('website')).toEqual([{ text: 'http://example.com', href: 'http://example.com' }]);
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
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { phone: 'test' } } };
      expect(detail.vm.contact('phone')).toEqual([{ text: 'test', href: 'tel:test' }]);
    });

    it('returns mobile', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { mobile: 'test' } } };
      expect(detail.vm.contact('mobile')).toEqual([{ text: 'test', href: 'tel:test' }]);
    });

    it('returns fax', () => {
      detail.vm.place = { properties: { status: 'open', cat: '', tags: { fax: 'test' } } };
      expect(detail.vm.contact('fax')).toEqual([{ text: 'test', href: 'test' }]);
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
