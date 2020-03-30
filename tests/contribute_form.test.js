import { shallowMount, createLocalVue } from '@vue/test-utils';
import ContributeForm from '../js/contribute_form';

describe('ContributeForm', () => {
  let localVue;
  const stubs = {
    'v-stepper': '<div><slot /></div>',
    'v-stepper-step': '<div><slot /></div>',
    'v-stepper-content': '<div><slot /></div>',
    'v-btn': '<div class="btn" />',
    'v-textarea': '<div />'
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
    const form = createWrapper({ point: {} });
    expect(form.vm.open).toBe(null);
    expect(form.vm.step).toEqual(1);
    form.vm.clickOpen();
    expect(form.vm.open).toBe(true);
    expect(form.vm.step).toEqual(2);
  });

  it('allow to set the close state', () => {
    const form = createWrapper({ point: {} });
    expect(form.vm.open).toBe(null);
    form.vm.clickClose();
    expect(form.vm.open).toBe(false);
    expect(form.vm.step).toEqual(3);
  });

  it('reset the opening hours when the user change is mind', () => {
    const form = createWrapper({ point: {} });
    expect(form.vm.open).toBe(null);
    form.vm.clickOpen();
    form.vm.openingHours = [{}];
    form.vm.clickClose();
    expect(form.vm.openingHours).toEqual([]);
  });

  it('reformat the id', () => {
    const form = createWrapper({ point: { id: "n12345" } });
    expect(form.vm.id).toEqual('node/12345');

    form.setProps({ point: { id: "w12345" } });
    expect(form.vm.id).toEqual('way/12345');

    form.setProps({ point: { id: "r12345" } });
    expect(form.vm.id).toEqual('relation/12345');
  });
});
