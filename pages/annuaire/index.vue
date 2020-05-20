<template>
  <div>
    <h1 class="text-center">{{ title }}</h1>
    <directory-list />
  </div>
</template>

<script>
import i18nMixin from "~/components/mixins/i18n";
import DirectoryList from "~/components/directory_list";

export default {
  components: { DirectoryList },

  mixins: [i18nMixin],

  head() {
    return {
      title: `${this.title} - ${this.brand}`,
      meta: [
        { hid: "robots", name: "robots", content: "noindex, follow" },
      ]
    };
  },

  computed: {
    title() {
      return this.$t('directory.regions.title');
    }
  }
};
</script>
