<template>
  <div class="directory">
    <v-divider v-if="relatedLinks.length > 0" />
    <v-list>
      <v-list-item
        v-for="link in relatedLinks"
        :key="link.title"
        :href="link.href"
        :rel="link.rel"
      >{{ $t(link.title) }}</v-list-item>
    </v-list>
    <v-divider />
    <v-list>
      <slot
        v-for="item in items"
        name="item"
        :item="replaceLink(item)"
      >
        <v-list-item
          :key="item.id"
          :to="replaceLink(item).links.href"
          nuxt
        >
          {{ item.properties.libelle }}
        </v-list-item>
      </slot>
    </v-list>
  </div>
</template>

<script>
import { apiUrl } from "~/config.json";
import i18nMixin from "./mixins/i18n";

export default {
  mixins: [i18nMixin],

  data() {
    return {
      json: {}
    };
  },

  computed: {
    items() {
      return this.json?.data;
    },

    relatedLinks() {
      return (this.json?.links || [])
        .filter(link => link.rel !== 'self')
        .map(link => {
          const href = link.href.replace('/directory', '/annuaire');
          return { ...link, href };
        });
    }
  },

  methods: {
    replaceLink(item) {
      return { ...item, links: { ...item.links, href: item.links.href.replace('/directory', '/annuaire') } };
    }
  },

  fetch() {
    const region = this.$route.params.regions ? `/${this.$route.params.regions}` : '';
    const departement = this.$route.params.departements ? `/${this.$route.params.departements}` : '';
    const commune = this.$route.params.communes ? `/${this.$route.params.communes}` : '';
    const category = this.$route.params.categories ? `/${this.$route.params.categories}` : '';
    const params = new URLSearchParams();
    Object.entries(this.$route.query).forEach(([key, value]) => params.append(key, value));
    const query = params.toString().length > 0 ? `?${params}` : '';
    const url = `${apiUrl}/directory${region}${departement}${commune}${category}${query}`;

    return fetch(url)
      .then(res => res.json())
      .then(json => {
        this.json = json;
      });
  }
};
</script>
<style scoped>
.directory {
  padding: 0 10rem;
}

.directory-logo {
  height: 2rem;
  margin-right: 1rem;
}

.directory-item-property {
  margin-right: 1rem;
}
</style>
