import { shallowMount, createLocalVue } from '@vue/test-utils';
import DetailOpeningHours from '../js/detail_opening_hours';

describe('OpeningHours', () => {
  let localVue;
  const realDate = Date;
  const stubs = {
    'v-list-item': '<div />',
    'v-list-item-icon': '<div />',
    'v-list-item-content': '<div />',
    'v-list-group': '<div />'
  };
  let fakeDate;

  beforeEach(() => {
    fakeDate = '2019-10-28T11:01:58.135Z';
    localVue = createLocalVue();
    localVue.prototype.$i18n = {
      locale: 'en'
    };
    localVue.prototype.$t = () => {};
    global.Date = class extends Date {
      constructor(...date) {
        if (date.length > 0) {
          return super(...date);
        }
        super(fakeDate);
      }
    };
  });

  afterEach(() => {
    global.Date = realDate;
  });

  it('returns the state', () => {
    const detail = shallowMount(DetailOpeningHours, {
      localVue,
      stubs,
      propsData: {
        value: 'Mo-Fr 09:00-18:00'
      }
    });
    expect(detail.vm.state).toEqual('open');
    expect(detail.vm.alwaysOpen).toBe(false);
  });

  it('returns the state with 24/7', () => {
    const detail = shallowMount(DetailOpeningHours, {
      localVue,
      stubs,
      propsData: {
        value: '24/7'
      }
    });
    expect(detail.vm.state).toEqual('open');
    expect(detail.vm.alwaysOpen).toBe(true);
  });

  it('returns the weeks days', () => {
    fakeDate = '2019-10-21T11:01:58.135Z';
    const detail = shallowMount(DetailOpeningHours, {
      localVue,
      stubs,
      propsData: {
        value: 'Mo-Sa 09:00-18:00'
      }
    });
    expect(detail.vm.weekDays).toEqual({"monday": { hours: "09:00 AM-06:00 PM" },
                                        "tuesday": { hours: "09:00 AM-06:00 PM" },
                                        "wednesday": { hours: "09:00 AM-06:00 PM" },
                                        "thursday": { hours: "09:00 AM-06:00 PM" },
                                        "friday": { hours: "09:00 AM-06:00 PM" },
                                        "saturday": { hours: "09:00 AM-06:00 PM" },
                                        "sunday": { hours: undefined } });
  });

  it('returns the weeks days with overlapping month', () => {
    const detail = shallowMount(DetailOpeningHours, {
      localVue,
      stubs,
      propsData: {
        value: 'Mo-Sa 09:00-18:00'
      }
    });
    expect(detail.vm.weekDays).toEqual({"monday": { hours: "09:00 AM-06:00 PM" },
                                        "tuesday": { hours: "09:00 AM-06:00 PM" },
                                        "wednesday": { hours: "09:00 AM-06:00 PM" },
                                        "thursday": { hours: "09:00 AM-06:00 PM" },
                                        "friday": { hours: "09:00 AM-06:00 PM" },
                                        "saturday": { hours: "09:00 AM-06:00 PM" },
                                        "sunday": { hours: undefined } });
  });

  it('display the comment in the days detail', () => {
    const detail = shallowMount(DetailOpeningHours, {
      localVue,
      stubs,
      propsData: {
        value: 'Tu-Sa 09:00-18:00; Mo off "Sonnez en face"'
      }
    });
    expect(detail.vm.weekDays).toEqual({"monday": { hours: undefined,
                                                    comment: "Sonnez en face" },
                                        "tuesday": { hours: "09:00 AM-06:00 PM" },
                                        "wednesday": { hours: "09:00 AM-06:00 PM" },
                                        "thursday": { hours: "09:00 AM-06:00 PM" },
                                        "friday": { hours: "09:00 AM-06:00 PM" },
                                        "saturday": { hours: "09:00 AM-06:00 PM" },
                                        "sunday": { hours: undefined }});
  });

  it('format the next change', () => {
    const detail = shallowMount(DetailOpeningHours, {
      localVue,
      stubs,
      propsData: {
        value: 'Mo-Sa 09:00-18:00'
      }
    });
    localVue.prototype.$t = (name) => name;
    expect(detail.vm.formatNextDate).toEqual('06:00 PM');

    detail.setProps({ value: 'Tu-Sa 09:00-18:00' });
    expect(detail.vm.formatNextDate).toEqual('details.opening_hours.tomorrow 09:00 AM');

    detail.setProps({ value: 'We-Sa 09:00-18:00' });
    expect(detail.vm.formatNextDate).toEqual('Wednesday 09:00 AM');
  });
});
