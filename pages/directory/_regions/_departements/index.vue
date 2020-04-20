<template>
  <div>
    <DirectoryList :title="title" :items="communes" propertyLabel="libelle" />
  </div>
</template>

<script>
import DirectoryList from "~/components/directory_list";

export default {
  components: {
    DirectoryList
  },
  asyncData({ params }) {
    return DirectoryList.fetchData(params.regions, params.departements);
  }
};
</script>
