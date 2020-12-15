import { shallowMount, createLocalVue } from '@vue/test-utils';
import ContributeForm from '../components/contribute_form';

describe('ContributeForm', () => {
  let localVue;
  const stubs = ['v-icon', 'v-list-item', 'v-list-item-icon', 'v-list-item-content', 'v-list-item-title', 'v-list-item-subtitle', 'v-btn', 'v-select', 'v-divider', 'v-list-item-action', 'v-switch', 'v-list', 'v-textarea', 'v-checkbox'];

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = () => {};
  });

  function createWrapper(props) {
    return shallowMount(ContributeForm, {
      localVue,
      stubs,
      propsData: props
    });
  }

  it('allow to set the open state', () => {
    const form = createWrapper({ place: { properties: { tags: { } } } });
    expect(form.vm.tab_access).toBe(false);
    expect(form.vm.tab_click_collect).toBe(false);
    expect(form.vm.tab_closed).toBe(false);
    form.vm.clickPlaceAccess({});
    expect(form.vm.tab_access).toBe(true);
    expect(form.vm.tab_click_collect).toBe(false);
    expect(form.vm.tab_closed).toBe(false);
  });

  it('allow to set the close state', () => {
    const form = createWrapper({ place: { properties: { tags: { } } } });
    expect(form.vm.tab_access).toBe(false);
    expect(form.vm.tab_click_collect).toBe(false);
    expect(form.vm.tab_closed).toBe(false);
    form.vm.clickPlaceClosed({});
    expect(form.vm.tab_access).toBe(false);
    expect(form.vm.tab_click_collect).toBe(false);
    expect(form.vm.tab_closed).toBe(true);
  });

  it('reset the opening hours when the user changes his mind', () => {
    const form = createWrapper({ place: { properties: { tags: { } } } });
    expect(form.vm.tab_access).toBe(false);
    form.vm.clickPlaceAccess({});
    form.vm.openingHours = [{}];
    form.vm.clickPlaceClosed({});
    expect(form.vm.openingHours).toEqual([]);
  });

  describe('delivery', () => {
    it('dont parse the delivery:covid19 tag if it dont exists', () => {
      const form = createWrapper({ place: { properties: { tags: { } } } }, { formDetails: ["delivery"] });
      form.vm.clickPlaceClickCollect({});
      expect(form.vm.opt_fields.delivery).toBe(false);
      expect(form.vm.filteredFields.find(f => f.id === 'delivery')).toBe(undefined);
    });

    it('parse the delivery:covid19 tag if it exists', () => {
      const form = createWrapper({ place: { properties: { cat: 'restaurant', normalized_cat: 'eat', tags: { 'delivery:covid19': 'yes' } } } }, { formDetails: ["delivery"] });
      expect(form.vm.opt_fields.delivery).toBe(true);
      expect(form.vm.filteredFields.find(f => f === 'delivery') !== undefined).toBe(true);
    });

    it('if the delivery tag has an unknow value, hide the field', () => {
      const form = createWrapper({ place: { properties: { tags: { 'delivery:covid19': 'Mo-Fr 09:00-18:00' } } } }, { formDetails: ["delivery"] });
      form.vm.clickPlaceClickCollect({});
      expect(form.vm.opt_fields.delivery).toBe(false);
      expect(form.vm.filteredFields.find(f => f === 'delivery')).toBe(undefined);
    });

    it('if the place if closed, dont, hide the delivery field', () => {
      const form = createWrapper({ place: { properties: { tags: { } } } }, { formDetails: ["delivery"] });
      form.vm.clickPlaceClosed({});
      expect(form.vm.filteredFields.find(f => f === 'delivery')).toBe(undefined);
    });
  });

  describe('takeaway', () => {
    it('dont parse the takeaway:covid19 tag if it dont exists', () => {
      const form = createWrapper({ place: { properties: { tags: { } } } }, { formDetails: ["takeaway"] });
      expect(form.vm.opt_fields.takeaway).toBe(false);
      expect(form.vm.filteredFields.find(f => f === 'takeaway')).toBe(undefined);
    });

    it('parse the takeaway:covid19 tag if it exists', () => {
      const form = createWrapper({ place: { properties: { cat: 'restaurant', normalized_cat: 'eat', tags: { 'takeaway:covid19': 'yes' } } } }, { formDetails: ["takeaway"] });
      expect(form.vm.opt_fields.takeaway).toBe(true);
      expect(form.vm.filteredFields.find(f => f === 'takeaway') !== null).toBe(true);
    });

    it('if the takeaway tag has an unknow value, hide the field', () => {
      const form = createWrapper({ place: { properties: { tags: { 'takeaway:covid19': 'Mo-Fr 09:00-18:00' } } } }, { formDetails: ["takeaway"] });
      expect(form.vm.opt_fields.takeaway).toBe(false);
      expect(form.vm.filteredFields.find(f => f === 'takeaway')).toBe(undefined);
    });

    it('if the place if closed, dont, hide the takeaway field', () => {
      const form = createWrapper({ place: { properties: { tags: { } } } }, { formDetails: ["takeaway"] });
      form.vm.clickPlaceClosed({});
      expect(form.vm.filteredFields.find(f => f === 'takeaway')).toBe(undefined);
    });
  });

  it('parse and display the opening_hours:covid19 if they are already here', () => {
    const form = createWrapper({ place: { properties: { opening_hours: 'Mo-Fr 08:00-09:00', tags: { } } } });
    expect(form.vm.openingHours).toEqual([
      { days: ['mo', 'tu', 'we', 'th', 'fr'], hours: ['08:00-09:00'] }
    ]);
  });

  it('if there already opening hours, allow to specify same', () => {
    const form = createWrapper({ place: { properties: { tags: { opening_hours: 'Mo-Fr 08:00-09:00' } } } });
    expect(form.vm.hasOpeningHours).toBe(true);
    expect(form.vm.openingHours).toEqual([]);
    form.vm.sameOpeningHours();
    expect(form.vm.openingHours).toEqual([
      { days: ['mo', 'tu', 'we', 'th', 'fr'], hours: ['08:00-09:00'] },
    ]);
  });

  it('hasOpeningHours: true', () => {
    const form = createWrapper({ place: { properties: { tags: { opening_hours: 'Mo-Fr 08:00-09:00' } } } });
    expect(form.vm.hasOpeningHours).toBe(true);
  });

  it('hasOpeningHours: false', () => {
    const form = createWrapper({ place: { properties: { tags: { } } } });
    expect(form.vm.hasOpeningHours).toBe(false);
  });

  it('showOpeningHoursWithoutLockDown: true', () => {
    const form = createWrapper({ place: { properties: { tags: { } } } });
    expect(form.vm.showOpeningHoursWithoutLockDown).toBe(false);
    form.vm.openingHours.push({ days: 'mo', hours: ['08:00-12:00']});
    expect(form.vm.showOpeningHoursWithoutLockDown).toBe(true);
  });

  it('showOpeningHoursWithoutLockDown: false when there is opening_hours', () => {
    const form = createWrapper({ place: { properties: { tags: { opening_hours: 'Mo-Fr 08:00-09:00' } } } });
    expect(form.vm.showOpeningHoursWithoutLockDown).toBe(false);
    form.vm.openingHours.push({ days: 'mo', hours: ['08:00-12:00']});
    expect(form.vm.showOpeningHoursWithoutLockDown).toBe(false);
  });

  describe('reformat the id', () => {
    const createTest = (place, result) => {
      it(`format the id with the result ${result}`, () => {
        const form = createWrapper({ place });
        expect(form.vm.id).toEqual(result);
      });
    };
    createTest({ id: "n12345", properties: { tags: { } } }, 'node/12345');
    createTest({ id: "w12345", properties: { tags: { } } }, 'way/12345');
    createTest({ id: "r12345", properties: { tags: { } } }, 'relation/12345');
  });

  describe('offersService', () => {
    it('works with basic tag', () => {
      const form = createWrapper({ place: { properties: { tags: { delivery: 'yes' } } } });
      expect(form.vm.offersService('delivery')).toBe(true);
    });

    it('works with covid tag', () => {
      const form = createWrapper({ place: { properties: { tags: { 'delivery:covid19': 'yes' } } } });
      expect(form.vm.offersService('delivery')).toBe(true);
    });

    it('prioritizes covid tag', () => {
      const form = createWrapper({ place: { properties: { tags: { 'delivery:covid19': 'no', 'delivery': 'yes' } } } });
      expect(form.vm.offersService('delivery')).toBe(false);
    });

    it('works with missing tag', () => {
      const form = createWrapper({ place: { properties: { tags: { } } } });
      expect(form.vm.offersService('delivery')).toBe(false);
    });
  });

  describe('format the payload', () => {
    let form;

    beforeEach(() => {
      localVue.prototype.$i18n = { locale: 'fr' };
      form = createWrapper({
        place: {
          id: "n12345",
          geometry: { coordinates: [1, 2] },
          properties: { name: 'Test', tags: { } }
        }
      });
    });

    it('open, with opening hours and same hours', () => {
      form.vm.clickPlaceAccess({});
      form.vm.openingHours = [{ days: ['mo'], hours: ['08:00-18:00'] }];
      form.vm.openingHoursWithoutLockDown = true;
      expect(form.vm.payload).toEqual({
        name: 'Test',
        state: 'open',
        details: '',
        opening_hours: [{ days: ['mo'], hours: ['08:00-18:00'] }],
        lat: 2,
        lon: 1,
        lang: 'fr',
        tags: {
          "access:covid19": "yes",
          opening_hours: 'same'
        }
      });
    });

    it('open, with opening hours and delivery', () => {
      form.vm.clickPlaceClickCollect({});
      form.vm.clickPlaceAccess({});
      form.vm.openingHours = [{ days: ['mo'], hours: ['08:00-18:00'] }];
      form.vm.openingHoursWithoutLockDown = false;
      form.vm.form_details = ["delivery"];
      form.vm.opt_fields.delivery = 'yes';
      expect(form.vm.payload).toEqual({
        name: 'Test',
        state: 'open',
        details: '',
        opening_hours: [{ days: ['mo'], hours: ['08:00-18:00'] }],
        lat: 2,
        lon: 1,
        lang: 'fr',
        tags: {
          "access:covid19": "yes",
          'delivery': 'yes'
        }
      });
    });

    it('open, with takeaway', () => {
      form.vm.clickPlaceClickCollect({});
      form.vm.form_details = ["takeaway"];
      form.vm.opt_fields.takeaway = true;
      expect(form.vm.payload).toEqual({
        name: 'Test',
        state: 'open',
        details: '',
        opening_hours: [],
        lat: 2,
        lon: 1,
        lang: 'fr',
        tags: {
          'takeaway': 'yes',
          "access:covid19": "no"
        }
      });
    });

    it('open, with details', () => {
      form.vm.clickPlaceAccess({});
      form.vm.details = 'test';
      expect(form.vm.payload).toEqual({
        name: 'Test',
        state: 'open',
        details: 'test',
        opening_hours: [],
        lat: 2,
        lon: 1,
        lang: 'fr',
        tags: {
          "access:covid19": "yes"
        }
      });
    });

    it('close, with details', () => {
      form.vm.clickPlaceClosed({});
      form.vm.details = 'test';
      expect(form.vm.payload).toEqual({
        name: 'Test',
        state: 'closed',
        details: 'test',
        opening_hours: [],
        lat: 2,
        lon: 1,
        lang: 'fr',
        tags: {}
      });
    });
  });
});
