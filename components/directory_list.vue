<template>
  <div>
    <h1>{{ title }}</h1>
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
    }
  },
  fetchData(region, departement, commune, category) {
    const url =
      directoryUrl +
      (region ? "/" + region : "") +
      (departement ? "/" + departement : "") +
      (commune ? "/" + commune : "") +
      (category ? "/" + category : "");
    return fetch(url)
      .then(res => {
        return res.json();
      })
      .then(json => {
        json.title = json.links.title;
        return json;
      });
  }
};
</script>
