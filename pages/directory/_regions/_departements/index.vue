<template>
  <div>
    <DirectoryList :title="title" :items="communes" :links="links" propertyLabel="libelle" />
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
    });
  }
};
</script>
