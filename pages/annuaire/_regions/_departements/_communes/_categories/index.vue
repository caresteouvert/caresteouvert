<script>
import DirectoryList from "~/components/directory_list";

export default {
  extends: DirectoryList,
  data() {
    return {
      propertyLabel: [
        { key: "name" },
        { key: "cat", translation: "categories." }
      ],
      itemKey: "pois",
      displayIcon: true
    };
  },
  methods: {
    itemLink(item) {
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
    }).then(directoryData => {
      directoryData.selected = params.communes;
      directoryData.category = params.categories;
      return directoryData;
    });
  },
  head() {
    return {
      titleTemplate: `%s - ${this.selected} - ${this.$t(
        "categories." + this.category
      )} - ${this.$t(this.title)}`
    };
  }
};
</script>
