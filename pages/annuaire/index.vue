<script>
import DirectoryList from "~/components/directory_list";

export default {
  extends: DirectoryList,
  data() {
    return {
      propertyLabel: [{ key: "libelle" }],
      itemKey: "regions"
    };
  },
  asyncData({ query }) {
    return DirectoryList.fetchData({ query: query });
  },
  head() {
    return {
      titleTemplate: "%s - " + this.$t(this.title)
    };
  }
};
</script>
