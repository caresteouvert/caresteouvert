<template>
  <div>
    <h1>{{ links.title }}</h1>
    <ul id="region-list">
      <li v-for="reg in regs" :key="reg.id">
        <a>{{ reg.properties.libelle }}</a>
      </li>
    </ul>
  </div>
</template>

<script>
import { directoryUrl } from "../../config.json";

export default {
  data() {
    return {
      regs: [],
      links: []
    };
  },
  fetch() {
    return fetch(directoryUrl)
      .then(res => res.json())
      .then(json => {
        this.regs = json.regions.sort((a, b) =>
          a.properties.libelle.localeCompare(b.properties.libelle)
        );
        this.links = json.links;
      });
  }
};
</script>
