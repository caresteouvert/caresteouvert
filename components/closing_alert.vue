<template>
  <v-alert
    dense
    tile
    color="red"
    dark
    class="mb-0"
  >
    {{ $t('closing.text', { brand }) }}
    <a
      href="https://blog.caresteouvert.fr/ca-reste-ouvert-ferme-ses-portes-le-30-septembre-2020/"
      target="_blank"
    >{{ $t('closing.link') }}</a>
  </v-alert>
</template>

<script>
import i18nMixin from './mixins/i18n';

export default {
  mixins: [i18nMixin],
};
</script>
