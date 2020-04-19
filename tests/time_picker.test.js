import Vue from 'vue';
import { shallowMount } from '@vue/test-utils';
import TimePicker from '../components/time_picker';

describe('TimePicker', () => {
  const stubs = ['v-time-picker'];

  it('allow only some minutes', () => {
    const editor = shallowMount(TimePicker, {
      stubs,
      propsData: {
        value: ''
      }
    });
    expect(editor.vm.allowedMinutes).toEqual([0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55]);
  });
});
