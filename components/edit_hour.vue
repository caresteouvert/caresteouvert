<template>
  <v-dialog
    v-model="dialog"
    width="350px"
  >
    <template v-slot:activator="{ on }">
      <v-text-field
        :value="value"
        readonly
        v-on="on"
      ></v-text-field>
    </template>
    <v-card>
      <h3 class="title">{{ $t(`opening_hours_editor.select_time.${step}`) }}</h3>
      <time-picker v-model="hour" />
      <v-card-actions>
        <v-spacer></v-spacer>
        <v-btn
          color="blue darken-1"
          text
          @click="cancel"
        >{{ $t('opening_hours_editor.cancel') }}</v-btn>
        <v-btn
          color="blue darken-1"
          text
          @click="next"
        >{{ $t('opening_hours_editor.next') }}</v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<script>
import TimePicker from './time_picker';

export default {
  components: { TimePicker },

  props: {
    step: {
      type: String,
      required: true
    },
    value: {
      type: String,
      required: true
    }
  },

  data() {
    return {
      dialog: false,
      hour: this.value
    };
  },

  watch: {
    value(value) {
      this.hour = value;
    }
  },

  methods: {
    cancel() {
      this.dialog = false;
      this.hour = this.value;
    },

    next() {
      this.dialog = false;
      this.$emit('input', this.hour);
    }
  }
};
</script>
