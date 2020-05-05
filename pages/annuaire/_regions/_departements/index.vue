<script>
import DirectoryList from "~/components/directory_list";

export default {
  extends: DirectoryList,
  data() {
    return {
      propertyLabel: [{ key: "libelle" }]
    };
  },
  asyncData({ params, query }) {
    return DirectoryList.fetchData({
      region: params.regions,
      departement: params.departements,
      query: query
    }).then(directoryData => {
      directoryData.selected = params.departements;
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
        },
      ]
    };
  }
};
</script>
