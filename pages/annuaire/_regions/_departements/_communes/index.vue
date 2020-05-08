<template>
  <v-container>
    <h1 class="text-center">Les lieux ouverts à {{ commune }} durant le confinement</h1>
    <v-list>
      <v-list-item
        v-for="category in categories"
        :key="category"
        :to="`${commune}/${category}`"
        nuxt
      >
        {{ $t(`categories.${category}`) }}
      </v-list-item>
    </v-list>
  </v-container>
</template>

<script>
import i18nMixin from "~/components/mixins/i18n";
import categories from "~/categories.json";
import categoriesForArea from "~/lib/categories";

export default {
  mixins: [i18nMixin],

  head() {
    return {
      title: `${this.$route.params.communes} - ${this.brand}`,

      meta: [
        { hid: "robots", name: "robots", content: "noindex, follow" }
      ]
    };
  },

  data() {
    return {
      categories: Object.keys(categoriesForArea(categories, 'FR')).concat(['other'])
    };
  },

  computed: {
    commune() {
      return this.$route.params.communes;
    }
  }
};
</script>
