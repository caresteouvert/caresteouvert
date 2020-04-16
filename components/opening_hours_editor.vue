<template>
  <div>
    <div
      v-for="(interval, index) in openingHours"
      :key="index"
    >
      <div>{{ interval.days.map((day) => $t(`days.${weekDaysName[day]}`)).join(', ') }}</div>
      <div class="text-right">
        <div
          v-for="(hours, indexHours) in interval.hours"
          :key="indexHours"
        >
          {{ hours }}
          <v-btn
            icon
            @click="removeInterval(index, indexHours)">
            <v-icon>osm-close</v-icon>
          </v-btn>
        </div>
        <v-btn
          text
          @click="editSubInterval(index)">
          {{ $t('opening_hours_editor.add_interval') }}
        </v-btn>
      </div>
    </div>
    <v-btn
      width="100%"
      class="mt-3"
      @click="openDialog"
    >{{ $t('opening_hours_editor.add_new_days') }}</v-btn>
    <v-dialog
      v-model="dialog"
      width="350"
      @click:outside="resetValues"
    >
      <v-card class="pa-2">
        <template v-if="!selectTime">
          <h3 class="subtitle-1">{{ $t('opening_hours_editor.select_days') }}</h3>
          <v-switch
            v-for="(days, shortcut) in shortcutDays"
            :key="shortcut"
            :label="$t(`opening_hours_editor.day_shortcuts.${shortcut}`)"
            :value="days.every(day => selectedWeekDays.includes(day))"
            :disabled="days.some(day => disabledWeekDays.includes(day))"
            @change="value => toggleSelectedWeekDays(value, ...days)"
            dense
            hide-details
          />
          <v-checkbox
            v-for="day in weekDays"
            v-model="selectedWeekDays"
            :key="day"
            :label="$t(`days.${weekDaysName[day]}`)"
            :value="day"
            :disabled="disabledWeekDays.includes(day)"
            dense
            hide-details
          ></v-checkbox>
          <v-btn
            class="mt-3"
            @click="next"
          >{{ $t('opening_hours_editor.next') }}</v-btn>
        </template>
        <div v-if="selectTime">
          <opening-hours-editor-interval
            v-model="interval"
            @input="close"
          />
        </div>
      </v-card>
    </v-dialog>
  </div>
</template>

<script>
import OpeningHoursEditorInterval from './opening_hours_editor_interval';

export default {
  components: { OpeningHoursEditorInterval },

  props: {
    value: {
      type: Array,
      default: () => []
    }
  },

  data() {
    return {
      shortcutDays: {
        'weekdays': ['mo', 'tu', 'we', 'th', 'fr', 'sa']
      },
      weekDays: ['mo', 'tu', 'we', 'th', 'fr', 'sa', 'su', 'ph'],
      weekDaysName: {
        'mo': 'monday',
        'tu': 'tuesday',
        'we': 'wednesday',
        'th': 'thursday',
        'fr': 'friday',
        'sa': 'saturday',
        'su': 'sunday',
        'ph': 'ph'
      },
      selectTime: false,
      interval: '',
      selectedWeekDays: [],
      openingHours: this.value,
      indexSubInterval: -1,
      dialog: false
    };
  },

  computed: {
    disabledWeekDays() {
      return this.openingHours.flatMap(interval => interval.days);
    }
  },

  watch: {
    value(value) {
      this.openingHours = value;
      this.resetValues();
    }
  },

  methods: {
    openDialog() {
      this.dialog = true;
    },

    editSubInterval(index) {
      this.indexSubInterval = index;
      this.openDialog();
      this.next();
    },

    removeInterval(indexDay, indexInterval) {
      this.openingHours[indexDay].hours.splice(indexInterval, 1);
      if (this.openingHours[indexDay].hours.length === 0) {
        this.openingHours.splice(indexDay, 1);
      }
      this.$emit('input', this.openingHours);
    },

    next() {
      this.selectTime = true;
      this.displayDaysSelection = false;
    },

    close() {
      if (this.indexSubInterval === -1) {
        this.openingHours.push({ days: this.selectedWeekDays, hours: [this.interval] });
      } else {
        this.openingHours[this.indexSubInterval].hours.push(this.interval);
      }
      this.resetValues();
      this.$emit('input', this.openingHours);
    },

    resetValues() {
      this.selectedWeekDays = [];
      this.interval = '';
      this.selectTime = false;
      this.indexSubInterval = -1;
      this.dialog = false;
    },

    toggleSelectedWeekDays(value, ...days) {
      if (value) {
        this.selectedWeekDays = this.weekDays.filter(day => this.selectedWeekDays.includes(day) || days.includes(day));
      } else {
        this.selectedWeekDays = this.selectedWeekDays.filter(day => !days.includes(day));
      }
    }
  }
};
</script>
