<template>
  <v-dialog
    v-model="dialog"
    :width="400"
  >
    <template v-slot:activator="{ on }">
      <v-list-item v-on="on">
        <v-list-item-content class="ml-2">
          <v-list-item-title class="body-1">{{ $t('change_lang') }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </template>

    <v-card>
      <v-card-title>
        {{ $t('change_lang') }}
        <v-spacer></v-spacer>
        <v-btn
          icon
          @click="dialog = false"
        >
          <v-icon>osm-close</v-icon>
        </v-btn>
      </v-card-title>
      <v-card-text>
        <v-btn
          v-for="locale in $i18n.availableLocales"
          outlined
          class="ml-2 mb-2"
          @click="changeLang(locale)"
        >{{ $t('lang', locale) }}</v-btn>
      </v-card-text>
    </v-card>
  </v-dialog>
</template>

<script>
export default {
  data() {
    return {
      dialog: false
    };
  },

  methods: {
    changeLang(lang) {
      this.$root.$i18n.locale = lang;
      localStorage.setItem('lang', lang);
      this.dialog = false;
    }
  }
};
</script>
