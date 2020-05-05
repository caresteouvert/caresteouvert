<script>
import DirectoryList from "~/components/directory_list";

export default {
  extends: DirectoryList,
  data() {
    return {
      propertyLabel: [{ translation: "categories." }]
    };
  },
  asyncData({ params, query }) {
    return DirectoryList.fetchData({
      region: params.regions,
      departement: params.departements,
      commune: params.communes,
      category: params.categories,
      query: query
    }).then(directoryData => {
      directoryData.selected = params.communes;
      return directoryData;
    });
  },
  head() {
    return {
      title: `${this.selected} - ${this.$t(this.title)} - ${this.brand}`,
      meta: [
        {
          hid: "robots",
          name: "robots",
          content: "noindex, follow"
        }
      ]
    };
  }
};
</script>
