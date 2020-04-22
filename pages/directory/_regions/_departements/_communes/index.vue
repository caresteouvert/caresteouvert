<template>
  <div>
    <DirectoryList :title="title" :links="links" :items="categories" />
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
      regions: params.regions,
      departements: params.departements,
      communes: params.communes,
      categories: params.categories,
      query: query
    });
  }
};
</script>
