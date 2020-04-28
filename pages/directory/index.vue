<template>
  <div>
    <directory-list
      :title="title"
      :items="regions"
      :links="links"
      :property-label="[{key: 'libelle'}]"
    />
  </div>
</template>

<script>
import DirectoryList from "~/components/directory_list";
import i18nMixin from "~/components/mixins/i18n";

export default {
  mixins: [i18nMixin],
  components: {
    DirectoryList
  },
  asyncData({ query }) {
    return DirectoryList.fetchData({ query: query });
  },
  head() {
    return {
      titleTemplate: "%s - " + this.$t(this.title)
    };
  }
};
</script>
