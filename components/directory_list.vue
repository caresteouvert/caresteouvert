<template>
  <div class="directory">
    <h1 class="directory-title">{{ $t(title) }}</h1>
    <v-divider />
    <v-list>
      <v-list-item
        v-for="link in getRelatedLinks(links)"
        :key="link.title"
        :href="link.href"
        :rel="link.rel"
      >{{ $t(link.title) }}</v-list-item>
    </v-list>
    <v-divider />
    <v-list>
      <v-list-item :href="itemLink(item)" v-for="item in items" :key="item.id">
        <img src="~/assets/caresteouvert.svg" alt="brand" class="directory-logo" />
        <div>{{ getLabel(item, propertyLabel) }}</div>
      </v-list-item>
    </v-list>
  </div>
</template>

<script>
import { directoryUrl } from "~/config.json";

export default {
  props: {
    title: {
      type: String,
      default: undefined
    },
    items: {
      type: Array,
      default: undefined
    },
    links: {
      type: Array,
      default: undefined
    },
    propertyLabel: {
      type: String,
      default: undefined
    },
    itemLink: {
      type: Function,
      default: item => {
        return item.links.href;
      }
    }
  },
  methods: {
    getLabel: (item, attrs) => {
      if (!attrs) {
        return item.properties;
      } else {
        return attrs
          .split(",")
          .map(key => item.properties[key.trim()])
          .filter(value => value)
          .join(", ");
      }
    },
    getRelatedLinks: links => {
      return links ? links.filter(link => link.rel !== "self") : links;
    }
  },
  fetchData({ region, departement, commune, category, query }) {
    const url =
      directoryUrl +
      (region ? "/" + region : "") +
      (departement ? "/" + departement : "") +
      (commune ? "/" + commune : "") +
      (category ? "/" + category : "") +
      (query && Object.keys(query).length > 0
        ? "?" +
          Object.keys(query)
            .map(key => `${key}=${query[key]}`)
            .join("&")
        : "");
    return fetch(url)
      .then(res => {
        return res.json();
      })
      .then(json => {
        const selfLink = json.links.filter(link => link.rel === "self");
        json.title = selfLink.length > 0 ? selfLink[0].title : "";
        return json;
      });
  }
};
</script>
<style>
.directory {
  padding: 0 10rem;
}

.directory-title {
  text-align: center;
  padding: 1rem 0;
}

.directory-logo {
  height: 2rem;
  margin-right: 1rem;
}
</style>