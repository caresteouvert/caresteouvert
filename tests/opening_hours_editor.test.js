import Vue from 'vue';
import { shallowMount, createLocalVue } from '@vue/test-utils';
import OpeningHoursEditor from '../components/opening_hours_editor';
import OpeningHoursInterval from '../components/opening_hours_editor_interval';

describe('OpeningHoursEditor', () => {
  let localVue;
  const stubs = ['v-dialog', 'v-card', 'v-checkbox', 'v-btn', 'v-icon', 'v-switch', 'v-spacer', 'v-card-actions'];

  beforeEach(() => {
    localVue = createLocalVue();
    localVue.prototype.$t = () => {};
  });

  it('allow to choose the days', async () => {
    const editor = shallowMount(OpeningHoursEditor, {
      localVue,
      stubs
    });
    editor.vm.dialog = true;
    await Vue.nextTick();
    expect(editor.findAll('v-checkbox-stub').length).toBe(8);
    expect(editor.findAll('v-btn-stub').length).toBe(3);
  });

  it('allow to choose and display the interval', async () => {
    const editor = shallowMount(OpeningHoursEditor, {
      localVue,
      stubs
    });
    editor.vm.selectedWeekDays.push('mo');
    editor.vm.next();
    await Vue.nextTick();
    expect(editor.findAll('v-checkbox-stub').length).toBe(0);
    expect(editor.contains(OpeningHoursInterval)).toBe(true);
    editor.vm.interval = '08:00-12:00';
    editor.vm.close();
    await Vue.nextTick();
    expect(editor.contains(OpeningHoursInterval)).toBe(false);
    expect(editor.vm.openingHours).toEqual([{ days: ['mo'], hours: ['08:00-12:00'] }]);
    expect(editor.vm.selectedWeekDays).toEqual([]);
    expect(editor.vm.interval).toEqual('');
    expect(editor.emitted('input').length).toEqual(1);
  });

  it('allow to add a new sub interval', () => {
    const editor = shallowMount(OpeningHoursEditor, {
      localVue,
      stubs
    });
    editor.vm.openingHours.push({ days: ['mo'], hours: ['08:00-12:00'] });
    editor.vm.indexSubInterval = 0;
    editor.vm.interval = '14:00-16:00';
    editor.vm.close();
    expect(editor.vm.openingHours).toEqual([{ days: ['mo'], hours: ['08:00-12:00', '14:00-16:00'] }]);
    expect(editor.vm.indexSubInterval).toEqual(-1);
  });

  it('disable days already selected', () => {
    const editor = shallowMount(OpeningHoursEditor, {
      localVue,
      stubs
    });
    editor.vm.openingHours.push({ days: ['mo'], hours: ['08:00-10:00'] });
    expect(editor.vm.disabledWeekDays).toEqual(['mo']);
  });

  it('allow to remove an interval', () => {
    const editor = shallowMount(OpeningHoursEditor, {
      localVue,
      stubs
    });
    editor.vm.openingHours.push({ days: ['mo'], hours: ['08:00-10:00', '12:00-18:00'] });
    expect(editor.vm.disabledWeekDays).toEqual(['mo']);
    editor.vm.removeInterval(0, 0);
    expect(editor.vm.openingHours).toEqual([{ days: ['mo'], hours: ['12:00-18:00'] }]);
    editor.vm.removeInterval(0, 0);
    expect(editor.vm.openingHours).toEqual([]);
    expect(editor.emitted('input').length).toEqual(2);
  });
});
