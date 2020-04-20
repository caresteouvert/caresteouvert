<template>
  <div>
    <DirectoryList :title="title" :items="pois" property-label="name,cat" :item-link="pointUrl" />
  </div>
</template>

<script>
import DirectoryList from "~/components/directory_list";

export default {
  components: {
    DirectoryList
  },
  methods: {
    pointUrl: item => {
      console.log(item);
      return "/place/" + item.id;
    }
  },
  asyncData({ params }) {
    return DirectoryList.fetchData(
      params.regions,
      params.departements,
      params.communes,
      params.categories
    );
  }
};
</script>
