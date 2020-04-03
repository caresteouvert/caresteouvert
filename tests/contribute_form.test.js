import { shallowMount, createLocalVue } from '@vue/test-utils';
import ContributeForm from '../js/contribute_form';

describe('ContributeForm', () => {
  let localVue;
  const stubs = {
    'v-stepper': '<div><slot /></div>',
    'v-stepper-step': '<div><slot /></div>',
    'v-stepper-content': '<div><slot /></div>',
    'v-btn': '<div class="btn" />',
    'v-textarea': '<div />',
    'v-select': '<div />',
    'v-checkbox': '<div />'
  };

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
    const form = createWrapper({ point: { properties: { tags: { } } } });
    expect(form.vm.open).toBe(null);
    expect(form.vm.step).toEqual(1);
    form.vm.clickOpen();
    expect(form.vm.open).toBe(true);
    expect(form.vm.step).toEqual(2);
  });

  it('allow to set the close state', () => {
    const form = createWrapper({ point: { properties: { tags: { } } } });
    expect(form.vm.open).toBe(null);
    form.vm.clickClose();
    expect(form.vm.open).toBe(false);
    expect(form.vm.step).toEqual(3);
  });

  it('reset the opening hours when the user change is mind', () => {
    const form = createWrapper({ point: { properties: { tags: { } } } });
    expect(form.vm.open).toBe(null);
    form.vm.clickOpen();
    form.vm.openingHours = [{}];
    form.vm.clickClose();
    expect(form.vm.openingHours).toEqual([]);
  });

  it('dont parse the the delivery:covid19 if it dont exists', () => {
    const form = createWrapper({ point: { properties: { tags: { } } } });
    form.vm.clickOpen();
    expect(form.vm.delivery).toBe(null);
    expect(form.vm.showDelivery).toBe(true);
  });

  it('parse the the delivery:covid19 if it exists', () => {
    const form = createWrapper({ point: { properties: { tags: { 'delivery:covid19': 'yes' } } } });
    form.vm.clickOpen();
    expect(form.vm.delivery).toEqual('yes');
    expect(form.vm.showDelivery).toBe(true);
  });

  it('if the delivery has an unknow value, hide the field', () => {
    const form = createWrapper({ point: { properties: { tags: { 'delivery:covid19': 'Mo-Fr 09:00-18:00' } } } });
    form.vm.clickOpen();
    expect(form.vm.delivery).toBe(null);
    expect(form.vm.showDelivery).toBe(false);
  });

  it('if the place if closed, dont, hide the delivery field', () => {
    const form = createWrapper({ point: { properties: { tags: { } } } });
    form.vm.clickClose();
    expect(form.vm.showDelivery).toBe(false);
  });

  it('parse and display the opening_hours:covid19 if they are already here', () => {
    const form = createWrapper({ point: { properties: { opening_hours: 'Mo-Fr 08:00-09:00', tags: { } } } });
    expect(form.vm.openingHours).toEqual([
      { days: ['mo'], hours: ['08:00-09:00'] },
      { days: ['tu'], hours: ['08:00-09:00'] },
      { days: ['we'], hours: ['08:00-09:00'] },
      { days: ['th'], hours: ['08:00-09:00'] },
      { days: ['fr'], hours: ['08:00-09:00'] }
    ]);

  });

  it('if there already opening hours, allow to specify same', () => {
    const form = createWrapper({ point: { properties: { tags: { opening_hours: 'Mo-Fr 08:00-09:00' } } } });
    expect(form.vm.hasOpeningHours).toBe(true);
    expect(form.vm.openingHours).toEqual([]);
    form.vm.sameOpeningHours();
    expect(form.vm.openingHours).toEqual([
      { days: ['mo'], hours: ['08:00-09:00'] },
      { days: ['tu'], hours: ['08:00-09:00'] },
      { days: ['we'], hours: ['08:00-09:00'] },
      { days: ['th'], hours: ['08:00-09:00'] },
      { days: ['fr'], hours: ['08:00-09:00'] }
    ]);
  });

  it('hasOpeningHours: true', () => {
    const form = createWrapper({ point: { properties: { tags: { opening_hours: 'Mo-Fr 08:00-09:00' } } } });
    expect(form.vm.hasOpeningHours).toBe(true);
  });

  it('hasOpeningHours: false', () => {
    const form = createWrapper({ point: { properties: { tags: { } } } });
    expect(form.vm.hasOpeningHours).toBe(false);
  });

  it('showOpeningHoursWithoutLockDown: true', () => {
    const form = createWrapper({ point: { properties: { tags: { } } } });
    expect(form.vm.showOpeningHoursWithoutLockDown).toBe(false);
    form.vm.openingHours.push({ days: 'mo', hours: ['08:00-12:00']});
    expect(form.vm.showOpeningHoursWithoutLockDown).toBe(true);
  });

  it('showOpeningHoursWithoutLockDown: false when there is opening_hours', () => {
    const form = createWrapper({ point: { properties: { tags: { opening_hours: 'Mo-Fr 08:00-09:00' } } } });
    expect(form.vm.showOpeningHoursWithoutLockDown).toBe(false);
    form.vm.openingHours.push({ days: 'mo', hours: ['08:00-12:00']});
    expect(form.vm.showOpeningHoursWithoutLockDown).toBe(false);
  });

  it('reformat the id', () => {
    const form = createWrapper({ point: { id: "n12345", properties: { tags: { } } } });
    expect(form.vm.id).toEqual('node/12345');

    form.setProps({ point: { id: "w12345" , properties: { tags: { } } } });
    expect(form.vm.id).toEqual('way/12345');

    form.setProps({ point: { id: "r12345", properties: { tags: { } } } });
    expect(form.vm.id).toEqual('relation/12345');
  });

  it('format the payload', () => {
    const form = createWrapper({ point: { id: "n12345", geometry: { coordinates: [1, 2] }, properties: { name: 'Test', tags: { } } } });
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
      tags: {
        opening_hours: 'same'
      }
    });
    form.vm.openingHoursWithoutLockDown = false;
    form.vm.delivery = 'yes';
    expect(form.vm.payload).toEqual({
      name: 'Test',
      state: 'open',
      details: '',
      opening_hours: [{ days: ['mo'], hours: ['08:00-18:00'] }],
      lat: 2,
      lon: 1,
      tags: {
        'delivery:covid19': 'yes'
      }
    });
  });
});
