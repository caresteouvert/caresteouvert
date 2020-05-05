<script>
import DirectoryList from "~/components/directory_list";
import { maxZoomPoi } from "~/config.json";

export default {
  extends: DirectoryList,
  data() {
    return {
      propertyLabel: [
        { key: "name" },
        { key: "cat", translation: "categories." }
      ],
      displayIcon: true
    };
  },
  methods: {
    itemLink(item) {
      return item.properties?.lat && item.properties?.lon
        ? `/@${item.properties.lat},${item.properties.lon},${maxZoomPoi}/place/${item.id}`
        : `/place/${item.id}`;
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
      title: `${this.selected} - ${this.$t(
        "categories." + this.category
      )} - ${this.$t(this.title)} - ${this.brand}`
    };
  }
};
</script>
