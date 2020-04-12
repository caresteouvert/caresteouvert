import Vue from 'vue';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import OpeningHoursEditorInterval from '../components/opening_hours_editor_interval';

describe('OpeningHoursEditorInterval', () => {
  let localVue;
  const stubs = ['v-btn', 'v-time-picker', 'v-slide-x-reverse-transition'];

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = () => {};
  });

  it('allow only some minutes', () => {
    const editor = shallowMount(OpeningHoursEditorInterval, {
      localVue,
      stubs
    });
    expect(editor.vm.allowedMinutes).toEqual([0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55]);
  });

  it('allow to choose the interval', async () => {
    const editor = shallowMount(OpeningHoursEditorInterval, {
      localVue,
      stubs
    });
    expect(editor.findAll('v-time-picker-stub').length).toBe(1);
    editor.vm.intervalStart = '08:00';
    editor.vm.next();
    expect(editor.findAll('v-time-picker-stub').length).toBe(1);
    editor.vm.intervalEnd = '16:00';
    editor.vm.next();
    expect(editor.emitted('input').length).toEqual(1);
    expect(editor.emitted('input')[0]).toEqual(['08:00-16:00']);
  });
});
