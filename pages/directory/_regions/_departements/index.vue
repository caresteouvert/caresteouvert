<template>
  <div>
    <directory-list
      :title="title"
      :items="communes"
      :links="links"
      :property-label="[{key: 'libelle'}]"
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
      query: query
    }).then(directoryData => {
      directoryData.selected = params.departements;
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
