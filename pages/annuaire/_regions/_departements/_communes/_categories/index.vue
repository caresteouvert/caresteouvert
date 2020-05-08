<template>
  <div>
    <h1 class="text-center">{{ title }}</h1>
    <directory-list>
      <template v-slot:item="{ item }">
        <place-dense
          :place="item"
          :featuresAndLocation="featuresAndLocation(item)"
        />
      </template>
    </directory-list>
  </div>
</template>

<script>
import i18nMixin from "~/components/mixins/i18n";
import DirectoryList from "~/components/directory_list";
import PlaceDense from "~/components/place/dense";
import { maxZoomPoi } from "~/config.json";
import { encodePosition } from "~/lib/url";

export default {
  components: {
    DirectoryList,
    PlaceDense
  },

  mixins: [i18nMixin],

  methods: {
    featuresAndLocation(item) {
      return encodePosition(item.properties.lat, item.properties.lon, maxZoomPoi);
    }
  },

  head() {
    return {
      title: `${this.$route.params.communes} - ${this.$t(
        "categories." + this.$route.params.categories
      )} - ${this.brand}`
    };
  },

  computed: {
    title() {
      return `${this.$route.params.communes} - ${this.$t(
        "categories." + this.$route.params.categories
      )}`;
    }
  }
};
</script>
