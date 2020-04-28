<template>
  <div>
    <directory-list
      :title="title"
      :links="links"
      :items="categories"
      :property-label="[{translation: 'categories.'}]"
    />
  </div>
</template>

<script>
import DirectoryList from "~/components/directory_list";

export default {
  components: {
    DirectoryList
  },
  asyncData({ params, query }) {
    return DirectoryList.fetchData({
      region: params.regions,
      departement: params.departements,
      commune: params.communes,
      category: params.categories,
      query: query
    }).then(directoryData => {
      directoryData.selected = params.communes;
      return directoryData;
    });
  },
  head() {
    return {
      titleTemplate: `%s - ${this.selected} - ${this.$t(this.title)}`
    };
  }
};
</script>
