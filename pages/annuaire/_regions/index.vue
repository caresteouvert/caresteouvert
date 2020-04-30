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
      query: query
    }).then(directoryData => {
      directoryData.selected = params.regions;
      return directoryData;
    });
  },
  head({ params }) {
    return {
      title: `${this.selected} - ${this.$t(this.title)} - ${this.brand}`
    };
  }
};
</script>
