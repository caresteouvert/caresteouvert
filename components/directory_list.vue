<template>
  <div class="directory">
    <h1 class="directory-title">{{ title }}</h1>
    <div class="directory-links">
      <div v-for="link in getRelatedLinks(links)" :key="link.title" class="directory-link">
        <a :href="link.href" :rel="link.rel">{{ link.title }}</a>
      </div>
    </div>
    <div class="directory-items">
      <div v-for="item in items" :key="item.id" class="directory-item">
        <div class="directory-item-info">{{ getLabel(item, propertyLabel) }}</div>
        <div class="directory-item-link">
          <a :href="itemLink(item)">
            <img src="~/assets/openstreetmap.svg" alt="brand" class="logo" />
          </a>
        </div>
      </div>
    </div>
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

.directory-links {
  padding: 1rem 0;
  display: flex;
  flex-direction: row;
}

.directory-links .directory-link {
  flex-grow: 1;
  text-align: center;
  max-width: 25%;
  border: 0.1rem solid lightgrey;
  margin-right: 1rem;
  padding: 1rem 0;
}
.directory-links .directory-link:hover {
  border: 0.1rem solid darkgrey;
}

.directory-items {
  display: flex;
  flex-direction: column;
}

.directory-items .directory-item {
  border: 0.1rem solid lightgrey;
  display: flex;
  flex-direction: row;
  margin-bottom: 1rem;
  padding: 0.5rem;
}
.directory-items .directory-item:hover {
  border: 0.1rem solid darkgrey;
}

.directory-items .directory-item .directory-item-info {
  flex-grow: 1;
}

.directory-items .directory-item .logo {
  height: 5rem;
}
</style>