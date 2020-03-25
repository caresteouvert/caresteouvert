import { shallowMount, createLocalVue } from '@vue/test-utils';
import ContributeForm from '../js/contribute_form';

describe('ContributeForm', () => {
  let localVue;
  const stubs = {
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
    form.vm.clickOpen();
    expect(form.vm.open).toBe(true);
  });

  it('allow to set the close state', () => {
    const form = createWrapper({ point: {} });
    expect(form.vm.open).toBe(null);
    form.vm.clickClose();
    expect(form.vm.open).toBe(false);
  });

  it('the submit button is disabled if open state is not set', () => {
    const form = createWrapper({ point: {} });
    expect(form.vm.submitDisabled).toBe(true);
    form.vm.clickClose();
    expect(form.vm.submitDisabled).toBe(false);
  });

  it('reformat the id', () => {
    const form = createWrapper({ point: { id: "n12345" } });
    expect(form.vm.id).toEqual('node/12345');

    form.setProps({ point: { id: "w12345" } });
    expect(form.vm.id).toEqual('way/12345');

    form.setProps({ point: { id: "r12345" } });
    expect(form.vm.id).toEqual('relation/12345');
  });

  it('format the note', () => {
    const form = createWrapper({
      point: {
        id: "n12345",
        geometry: {},
        properties: { name: 'Test'}
      }
    });
    form.vm.clickOpen();
    form.vm.details = "Hello World";
    expect(form.vm.message).toEqual(`Signalement #covid19 #caresteouvert

name: Test
id: node/12345

Etat: ouvert
Details: Hello World
`);
    form.vm.clickClose();
    expect(form.vm.message).toEqual(`Signalement #covid19 #caresteouvert

name: Test
id: node/12345

Etat: fermé
Details: Hello World
`);
  });
});
