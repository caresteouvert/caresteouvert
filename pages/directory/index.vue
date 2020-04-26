<template>
  <div>
    <DirectoryList
      :title="title"
      :items="regions"
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
  asyncData({ query }) {
    return DirectoryList.fetchData({ query: query });
  }
};
</script>
