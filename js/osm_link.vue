<template>
  <v-row>
    <v-col class="col-2">
      <img
        src="../images/openstreetmap.svg"
        class="logo"
       />
    </v-col>
    <v-col class="col-10 body-2">
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
import parseId from './parse_id';
import config from '../config.json';

export default {
  props: {
    id: {
      type: String,
      required: true
    }
  },

  data() {
    const { type, id } = parseId(this.id);

    return {
      osmLink: `https://www.openstreetmap.org/${type}/${id}`,
      idLink: `https://www.openstreetmap.org/edit?editor=id&${type}=${id}`,
    };
  },

  computed: {
    brand() {
      return (config[this.$i18n.locale] || config.en).brand_text;
    }
  }

};
</script>

<style scoped>
.logo {
  max-width: 100%;
}
</style>
