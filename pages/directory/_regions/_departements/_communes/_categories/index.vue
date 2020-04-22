<template>
  <div>
    <DirectoryList
      :title="title"
      :items="pois"
      :links="links"
      property-label="name,cat"
      :item-link="pointUrl"
    />
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
      return "/place/" + item.id;
    }
  },
  asyncData({ params, query }) {
    return DirectoryList.fetchData({
      region: params.regions,
      departement: params.departements,
      commune: params.communes,
      category: params.categories,
      query: query
    });
  }
};
</script>
