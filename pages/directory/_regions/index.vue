<template>
  <div>
    <DirectoryList :title="title" :items="departements" :links="links" propertyLabel="libelle" />
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
