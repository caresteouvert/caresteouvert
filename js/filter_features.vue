<template>
  <div>
    <v-list
      v-for="(category, id) in taxonomy"
      :key="id"
      class="pt-1"
      subheader
    >
      <v-subheader class="subtitle-1 pt-2">{{ category.name }}</v-subheader>
      <p class="body-2 px-4 pt-3 mb-0">Dernière mise à jour le 21 mars 2020.<br>
       Les informations de cette carte évoluent rapidement et seront actualisées en collaboration avec la mairie.</p>
      <v-list-item
        v-for="(feature, idFeature) in category.features"
        :key="idFeature"
        class="small-item-height"
        @click=""
      >
        <v-list-item-icon class="mr-0 my-3">
          <v-icon
            :color="feature.selected ? (feature.color || category.color) : null"
            small
          >{{ feature.icon || category.icon }}</v-icon>
        </v-list-item-icon>

        <v-list-item-content
          class="ml-2 py-1"
          @click="feature.selected = !feature.selected"
        >
          <v-list-item-title>{{ feature.name }}</v-list-item-title>
        </v-list-item-content>

        <v-list-item-action class="ma-0">
          <v-checkbox v-model="feature.selected" dense></v-checkbox>
        </v-list-item-action>
      </v-list-item>
    </v-list>
  </div>
</template>

<script>
export default {
  props: {
    taxonomy: {
      type: Object,
      required: true
    }
  }
}
</script>

<style scoped>
  .small-item-height {
    height: 40px;
    min-height: 35px;
  }
</style>
