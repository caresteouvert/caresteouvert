import { shallowMount, createLocalVue } from '@vue/test-utils';
import ContributeForm from '../components/contribute_form';

describe('ContributeForm', () => {
  let localVue;
  const stubs = ['v-stepper', 'v-stepper-step', 'v-stepper-content', 'v-btn', 'v-select', 'v-textarea', 'v-checkbox'];

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
    expect(form.vm.open).toBe(null);
    expect(form.vm.step).toEqual(1);
    form.vm.clickOpen();
    expect(form.vm.open).toBe(true);
    expect(form.vm.step).toEqual(2);
  });

  it('allow to set the close state', () => {
    const form = createWrapper({ place: { properties: { tags: { } } } });
    expect(form.vm.open).toBe(null);
    form.vm.clickClose();
    expect(form.vm.open).toBe(false);
    expect(form.vm.step).toEqual(3);
  });

  it('reset the opening hours when the user change is mind', () => {
    const form = createWrapper({ place: { properties: { tags: { } } } });
    expect(form.vm.open).toBe(null);
    form.vm.clickOpen();
    form.vm.openingHours = [{}];
    form.vm.clickClose();
    expect(form.vm.openingHours).toEqual([]);
  });

  describe('delivery', () => {
    it('dont parse the delivery:covid19 tag if it dont exists', () => {
      const form = createWrapper({ place: { properties: { tags: { } } } });
      form.vm.clickOpen();
      expect(form.vm.fieldValues.delivery).toBe(null);
      expect(form.vm.filteredFields.find(f => f.id === 'delivery')).toBe(undefined);
    });

    it('parse the delivery:covid19 tag if it exists', () => {
      const form = createWrapper({ place: { properties: { cat: 'restaurant', normalized_cat: 'eat', tags: { 'delivery:covid19': 'yes' } } } });
      form.vm.clickOpen();
      expect(form.vm.fieldValues.delivery).toBe('yes');
      expect(form.vm.filteredFields.find(f => f.id === 'delivery') !== undefined).toBe(true);
    });

    it('if the delivery tag has an unknow value, hide the field', () => {
      const form = createWrapper({ place: { properties: { tags: { 'delivery:covid19': 'Mo-Fr 09:00-18:00' } } } });
      form.vm.clickOpen();
      expect(form.vm.fieldValues.delivery).toBe(null);
      expect(form.vm.filteredFields.find(f => f.id === 'delivery')).toBe(undefined);
    });

    it('if the place if closed, dont, hide the delivery field', () => {
      const form = createWrapper({ place: { properties: { tags: { } } } });
      form.vm.clickClose();
      expect(form.vm.filteredFields.find(f => f.id === 'delivery')).toBe(undefined);
    });
  });

  describe('takeaway', () => {
    it('dont parse the takeaway:covid19 tag if it dont exists', () => {
      const form = createWrapper({ place: { properties: { tags: { } } } });
      form.vm.clickOpen();
      expect(form.vm.fieldValues.takeaway).toBe(null);
      expect(form.vm.filteredFields.find(f => f.id === 'takeaway')).toBe(undefined);
    });

    it('parse the takeaway:covid19 tag if it exists', () => {
      const form = createWrapper({ place: { properties: { cat: 'restaurant', normalized_cat: 'eat', tags: { 'takeaway:covid19': 'yes' } } } });
      form.vm.clickOpen();
      expect(form.vm.fieldValues.takeaway).toBe('yes');
      expect(form.vm.filteredFields.find(f => f.id === 'takeaway') !== null).toBe(true);
    });

    it('if the takeaway tag has an unknow value, hide the field', () => {
      const form = createWrapper({ place: { properties: { tags: { 'takeaway:covid19': 'Mo-Fr 09:00-18:00' } } } });
      form.vm.clickOpen();
      expect(form.vm.fieldValues.takeaway).toBe(null);
      expect(form.vm.filteredFields.find(f => f.id === 'takeaway')).toBe(undefined);
    });

    it('if the place if closed, dont, hide the takeaway field', () => {
      const form = createWrapper({ place: { properties: { tags: { } } } });
      form.vm.clickClose();
      expect(form.vm.filteredFields.find(f => f.id === 'takeaway')).toBe(undefined);
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

  it('reformat the id', () => {
    const form = createWrapper({ place: { id: "n12345", properties: { tags: { } } } });
    expect(form.vm.id).toEqual('node/12345');

    form.setProps({ place: { id: "w12345" , properties: { tags: { } } } });
    expect(form.vm.id).toEqual('way/12345');

    form.setProps({ place: { id: "r12345", properties: { tags: { } } } });
    expect(form.vm.id).toEqual('relation/12345');
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
      form.vm.clickOpen();
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
          opening_hours: 'same'
        }
      });
    });

    it('open, with opening hours and delivery', () => {
      form.vm.clickOpen();
      form.vm.openingHours = [{ days: ['mo'], hours: ['08:00-18:00'] }];
      form.vm.openingHoursWithoutLockDown = false;
      form.vm.fieldValues.delivery = 'yes';
      expect(form.vm.payload).toEqual({
        name: 'Test',
        state: 'open',
        details: '',
        opening_hours: [{ days: ['mo'], hours: ['08:00-18:00'] }],
        lat: 2,
        lon: 1,
        lang: 'fr',
        tags: {
          'delivery:covid19': 'yes'
        }
      });
    });

    it('open, with takeaway', () => {
      form.vm.clickOpen();
      form.vm.fieldValues.takeaway = 'yes';
      expect(form.vm.payload).toEqual({
        name: 'Test',
        state: 'open',
        details: '',
        opening_hours: [],
        lat: 2,
        lon: 1,
        lang: 'fr',
        tags: {
          'takeaway:covid19': 'yes'
        }
      });
    });

    it('open, with details', () => {
      form.vm.clickOpen();
      form.vm.details = 'test';
      expect(form.vm.payload).toEqual({
        name: 'Test',
        state: 'open',
        details: 'test',
        opening_hours: [],
        lat: 2,
        lon: 1,
        lang: 'fr',
        tags: {}
      });
    });

    it('close, with details', () => {
      form.vm.clickClose();
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
