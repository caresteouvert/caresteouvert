<template>
  <v-row>
    <v-col class="col-2">
      <img
        src="../assets/openstreetmap.svg"
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
import i18nMixin from './mixins/i18n';

export default {
  mixins: [i18nMixin],

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
  }
};
</script>

<style scoped>
.logo {
  max-width: 100%;
}
</style>
