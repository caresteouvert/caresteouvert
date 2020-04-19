import Vue from 'vue';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import OpeningHoursEditorInterval from '../components/opening_hours_editor_interval';
import TimePicker from '../components/time_picker';

describe('OpeningHoursEditorInterval', () => {
  let localVue;
  const stubs = ['v-btn', 'v-spacer', 'v-card-actions'];

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = () => {};
  });

  it('allow to choose the interval', async () => {
    const editor = shallowMount(OpeningHoursEditorInterval, {
      localVue,
      stubs
    });
    expect(editor.findAll(TimePicker).length).toBe(1);
    editor.vm.intervalStart = '08:00';
    editor.vm.next();
    expect(editor.findAll(TimePicker).length).toBe(1);
    editor.vm.intervalEnd = '16:00';
    editor.vm.next();
    expect(editor.emitted('input').length).toEqual(1);
    expect(editor.emitted('input')[0]).toEqual([['08:00', '16:00']]);
  });
});
