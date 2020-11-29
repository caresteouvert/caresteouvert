<template>
  <v-list dense two-line>
    <v-list-item v-on="on">
      <v-list-item-icon class="mr-1">
        <v-icon>osm-alert</v-icon>
      </v-list-item-icon>
      <v-list-item-content>
        <v-list-item-title
          :style="{ 'overflow': 'inherit', 'text-overflow': 'inherit', 'white-space': 'inherit' }">
          {{ $t('details.update_dialog.complete1') }}
        </v-list-item-title>
        <v-list-item-subtitle>{{ $t('details.update_dialog.complete2') }}</v-list-item-subtitle>
        <p class="text-center">
          <v-btn
            :href="links.contact"
            target="_blank"
            small
          >{{ $t('details.update_dialog.contact') }}</v-btn>
        </p>
      </v-list-item-content>
    </v-list-item>
  </v-list>
</template>


<script>
import i18nMixin from './mixins/i18n';
import parseId from '../lib/parse_id';

export default {
  mixins: [i18nMixin],

  props: {
    place: {
      type: Object,
      required: true
    }
  },

  data() {
    const { type, id } = parseId(this.place.id);
    return {
      dialog: false,
      osm: `https://openstreetmap.org/${type}/${id}`
    };
  },

  watch: {
    dialog(value) {
      if (!value) return;
      _paq.push(['trackEvent', 'UpdateDetailPOI', 'Open']);
    }
  }
};
</script>
