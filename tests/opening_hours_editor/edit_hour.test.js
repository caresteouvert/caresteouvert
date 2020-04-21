import Vue from 'vue';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import EditHour from '../../components/opening_hours_editor/edit_hour';
import TimePicker from '../../components/opening_hours_editor/time_picker';

describe('EditHour', () => {
  let localVue;
  const stubs = ['v-dialog', 'v-card', 'v-btn', 'v-spacer', 'v-card-actions'];
  let editor;

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = () => {};
    editor = shallowMount(EditHour, {
      localVue,
      stubs,
      propsData: {
        value: '08:00',
        step: 'start'
      }
    });

  });

  it('init the hour', () => {
    expect(editor.vm.hour).toEqual('08:00');
  });

  it('update the hour', async () => {
    editor.setProps({ value: '09:00' });
    await Vue.nextTick();
    expect(editor.vm.hour).toEqual('09:00');
  });

  it('emit the input event', () => {
    editor.vm.hour = '10:00';
    editor.vm.next();
    expect(editor.emitted('input').length).toEqual(1);
    expect(editor.emitted('input')[0]).toEqual(['10:00']);
  });

  it('reset the value on cancel', () => {
    editor.vm.hour = '10:00';
    editor.vm.cancel();
    expect(editor.emitted('input')).toBe(undefined);
    expect(editor.vm.hour).toEqual('08:00');
  });
});
