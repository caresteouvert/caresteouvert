<template>
  <v-list-item v-if="openingHours && alwaysOpen">
    <v-list-item-icon><v-icon>osm-time</v-icon></v-list-item-icon>
    <v-list-item-content>
      <v-list-item-title>24/7</v-list-item-title>
    </v-list-item-content>
  </v-list-item>
  <v-list-group
    v-else-if="openingHours"
    prepend-icon="osm-time"
    no-action
  >
    <template v-slot:activator>
      <v-list-item-content>
        <template v-if="comment">
          <v-list-item-title>
            {{ $t(`details.opening_hours.state.${state}`) }}
          </v-list-item-title>
          <v-list-item-subtitle
            v-text="comment"
            :title="comment"
          ></v-list-item-subtitle>
        </template>
        <v-list-item-title v-else>
          {{ $t(`${namespace}.state_until_date`, { state: $t(`details.opening_hours.state.${state}`), date: formatNextDate}) }}
        </v-list-item-title>
      </v-list-item-content>
    </template>

    <v-list-item
      v-for="(interval, day) in weekDays"
      :key="day"
    >
      <v-list-item-content>
        <v-list-item-title>
          {{ $t(`days.${day}`) }}:
          {{ interval.hours }}
        </v-list-item-title>
        <v-list-item-subtitle
          v-text="interval.comment"
          :title="interval.comment"
        ></v-list-item-subtitle>
      </v-list-item-content>
    </v-list-item>
  </v-list-group>
</template>

<script>
import OpeningHours from 'opening_hours';

export default {
  props: {
    value: {
      type: String,
      required: true
    },
    namespace: {
      type: String,
      required: false,
      default: 'details.opening_hours'
    },
    mode: {
      type: Number,
      required: false,
      default: 0
    },
    country: {
      type: String,
      required: false,
      default: 'FR'
    },
    coordinates: {
      type: Array,
      required: false,
      default: [2.3469, 48.8589]
    }
  },

  computed: {
    openingHours() {
      try {
        return new OpeningHours(this.value, { address: { country_code: this.country.toLowerCase() }, lon: this.coordinates[0], lat: this.coordinates[1] }, { mode: this.mode, locale: this.$i18n.locale });
      } catch (e) {
        // If missing holidays, no address given
        try {
          return new OpeningHours(this.value, null, { mode: this.mode, locale: this.$i18n.locale });
        }
        catch(e) {
        }
      }
    },
    comment() {
      return this.openingHours.getComment();
    },
    state() {
      return this.openingHours.getState() ? 'open' : 'closed';
    },
    weekDays() {
      return ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'].reduce((memo, day, index) => {
        const comment = this.openingHours.getComment(this.getDayOfWeek(index + 1)[0]);
        memo[day] = {
          hours: this.formatIntervals(this.openingHours.getOpenIntervals(...this.getDayOfWeek(index + 1))),
          comment
        };
        return memo;
      }, {});
    },
    alwaysOpen() {
      return this.nextChange ? false : true;
    },
    nextChange() {
      return this.openingHours.getNextChange();
    },
    formatNextDate() {
      const format = {
        weekday: this.isToday(this.nextChange) || this.isTomorrow(this.nextChange) ? undefined : 'long'
      };
      const next = this.formatDate(this.nextChange, format);
      if (this.isTomorrow(this.nextChange)) {
        const tomorrow = this.$t(`${this.namespace}.tomorrow`);
        return `${tomorrow} ${next}`;
      }
      return next;
    }
  },

  methods: {
    getDayOfWeek(day) {
      const start = new Date();
      start.setDate(start.getDate() + (day + 7 - start.getDay()) % 7);
      start.setHours(0, 0, 0, 0);
      const end = new Date();
      end.setDate(end.getDate() + (day + 7 - end.getDay()) % 7);
      end.setHours(24, 0, 0, 0);
      return [start, end];
    },

    formatIntervals(intervals) {
      if (intervals.length === 0) {
        return this.$t(`${this.namespace}.state.closed`);
      }
      return intervals.map((interval) => {
        return interval.slice(0, 2).map(this.formatDate).join('-');
      }).join(' ');
    },

    formatDate(date, format={}) {
      return date.toLocaleString(this.$i18n.locale, { hour: '2-digit', minute: '2-digit', ...format });
    },

    isToday(date) {
      const today = new Date()
      return this.isSameDay(today, date);
    },

    isTomorrow(date) {
      const tomorrow = new Date()
      tomorrow.setDate(tomorrow.getDate() + 1);
      return this.isSameDay(tomorrow, date);
    },

    isSameDay(date1, date2) {
      return date1.getFullYear() == date2.getFullYear() &&
        date1.getMonth() == date2.getMonth() &&
        date1.getDate() == date2.getDate();
    }
  }
}
</script>
