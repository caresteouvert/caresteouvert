<template>
  <div>
    <directory-list
      :title="title"
      :items="departements"
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
      query: query
    });
  }
};
</script>
