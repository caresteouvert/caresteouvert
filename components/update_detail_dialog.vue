<template>
  <v-dialog
    v-model="dialog"
    :width="600"
  >
    <template v-slot:activator="{ on }">
      <v-list dense two-line>
        <v-list-item v-on="on">
          <v-list-item-icon class="mr-1">
            <v-icon>osm-alert</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-title>{{ $t('details.update_dialog.complete1') }}</v-list-item-title>
            <v-list-item-subtitle>{{ $t('details.update_dialog.complete2') }}</v-list-item-subtitle>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </template>

    <v-card>
      <v-card-title class="flex-nowrap">
        <span class="body-1">{{ $t('details.update_dialog.title') }}</span>
        <v-spacer></v-spacer>
        <v-btn
          icon
          @click="dialog=false"
        >
          <v-icon>osm-close</v-icon>
        </v-btn>
      </v-card-title>
      <v-card-text>
        <p class="mb-0" v-html="$t('details.update_dialog.promo').replace(/\n/g, '<br />')"></p>
        <br />
        <p class="text-center">
          <v-btn
            :href="`https://airtable.com/shrfssuOhvXzVxtui?prefill_osm_id=${osm}&prefill_osm_name=${place.properties.name}`"
            target="_blank"
            color="primary"
          >{{ $t('details.update_dialog.contact') }}</v-btn>
        </p>
      </v-card-text>
    </v-card>
  </v-dialog>
</template>

<script>
import parseId from '../lib/parse_id';

export default {
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
