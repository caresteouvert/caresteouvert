<template>
  <v-dialog
    v-model="dialog"
    :width="500"
  >
    <template v-slot:activator="{ on }">
      <v-list dense>
        <v-list-item v-on="on">
          <v-list-item-icon class="mr-1">
            <v-icon>osm-alert</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-title>C'est votre établissement ? Complétez vos informations</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </template>

    <v-card>
      <v-card-title class="flex-nowrap">
        <span class="body-1">Compléter les informations de votre établissement</span>
        <v-spacer></v-spacer>
        <v-btn
          icon
          @click="dialog = false"
        >
          <v-icon>osm-close</v-icon>
        </v-btn>
      </v-card-title>
      <v-card-text>
        <p>
          Pour rajouter des informations vous pouvez
          <a href="https://blog.caresteouvert.fr/completer-les-infos-dun-lieu/"
            target="_blank">éditer vous-même votre établissement sur OpenStreetMap</a>.
        </p>
        <br />
        <p class="text-center">
          <v-btn
            :href="`https://airtable.com/shr9dsYsPX0VvUoUY?prefill_osm_id=${osm}&prefill_osm_name=${place.properties.name}`"
            target="_blank"
            color="primary"
          >Besoin d'aide ? Contactez nous</v-btn>
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
