<template>
  <div>
    <h1>{{ title }}</h1>
    <ul id="directory-links">
      <li v-for="link in getRelatedLinks(links)" :key="link.title">
        <a :href="link.href" :rel="link.rel">{{ link.title }}</a>
      </li>
    </ul>
    <ul id="directory-items">
      <li v-for="item in items" :key="item.id">
        <a :href="itemLink(item)">{{ getLabel(item, propertyLabel) }}</a>
      </li>
    </ul>
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
