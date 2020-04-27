<template>
  <div>
    <directory-list
      :title="title"
      :items="pois"
      :links="links"
      :property-label="[{key: 'name'},{key: 'cat', translation: 'categories.'}]"
      :item-link="pointUrl"
      :display-icon="true"
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
