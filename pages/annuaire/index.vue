<script>
import DirectoryList from "~/components/directory_list";

export default {
  extends: DirectoryList,
  data() {
    return {
      propertyLabel: [{ key: "libelle" }]
    };
  },
  asyncData({ query }) {
    return DirectoryList.fetchData({ query: query });
  },
  head() {
    return {
      title: `${this.$t(this.title)} - ${this.brand}`,
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
