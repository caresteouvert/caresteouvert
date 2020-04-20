<template>
  <div>
    <DirectoryList :title="title" :items="categories" />
  </div>
</template>

<script>
import DirectoryList from "~/components/directory_list";

export default {
  components: {
    DirectoryList
  },
  asyncData({ params }) {
    return DirectoryList.fetchData(
      params.regions,
      params.departements,
      params.communes
    );
  }
};
</script>
