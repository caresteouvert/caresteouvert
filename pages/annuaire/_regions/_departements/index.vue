<script>
import DirectoryList from "~/components/directory_list";

export default {
  extends: DirectoryList,
  data() {
    return {
      propertyLabel: [{ key: "libelle" }],
      itemKey: "communes"
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
      titleTemplate: `%s - ${this.selected} - ${this.$t(this.title)}`
    };
  }
};
</script>
