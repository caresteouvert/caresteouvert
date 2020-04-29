<script>
import DirectoryList from "~/components/directory_list";

export default {
  extends: DirectoryList,
  data() {
    return {
      propertyLabel: [{ key: "libelle" }],
      itemKey: "departements"
    };
  },
  asyncData({ params, query }) {
    return DirectoryList.fetchData({
      region: params.regions,
      query: query
    }).then(directoryData => {
      directoryData.selected = params.regions;
      return directoryData;
    });
  },
  head({ params }) {
    return {
      titleTemplate: `%s - ${this.selected} - ${this.$t(this.title)}`
    };
  }
};
</script>
