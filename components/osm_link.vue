<template>
  <v-row no-gutters>
    <v-col class="col-1">
      <img
        src="~/assets/openstreetmap.svg"
        class="logo"
       />
    </v-col>
    <v-col class="col-11 body-2 pl-2">
      {{ $t('osm_link.title', { brand }) }}
      <br>
      <v-btn
        :href="osmLink"
        target="_blank"
        small
        text
      >{{ $t('osm_link.view') }}</v-btn>
      <v-btn
        :href="idLink"
        target="_blank"
        small
        text
      >{{ $t('osm_link.edit') }}</v-btn>
    </v-col>
  </v-row>
</template>

<script>
import parseId from '../lib/parse_id';
import i18nMixin from './mixins/i18n';

export default {
  mixins: [i18nMixin],

  props: {
    id: {
      type: String,
      required: true
    }
  },

  computed: {
    parsed() {
      return parseId(this.id);
    },

    osmLink() {
      return `https://www.openstreetmap.org/${this.parsed.type}/${this.parsed.id}`;
    },

    idLink() {
      return `https://www.openstreetmap.org/edit?editor=id&${this.parsed.type}=${this.parsed.id}`;
    }
  }
};
</script>

<style scoped>
.logo {
  max-width: 100%;
}
</style>
