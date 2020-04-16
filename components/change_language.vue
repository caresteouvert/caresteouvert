<template>
  <v-dialog
    v-model="dialog"
    :width="400"
  >
    <template v-slot:activator="{ on }">
      <v-list-item v-on="on">
        <v-list-item-icon class="mr-0">
          <v-icon small>osm-language</v-icon>
        </v-list-item-icon>
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
        <v-row
          v-for="locales in chunkLocales"
          :key="locales.join()"
        >
          <v-col
            v-for="locale in locales"
            :key="locale"
          >
            <v-btn
              outlined
              width="100%"
              @click="changeLang(locale)"
            >{{ $t('lang', locale) }}</v-btn>
          </v-col>
          <v-col v-if="locales.length === 1" />
        </v-row>
      </v-card-text>
    </v-card>
  </v-dialog>
</template>

<script>
import chunk from 'lodash.chunk';

export default {
  data() {
    return {
      dialog: false
    };
  },

  computed: {
    chunkLocales() {
      return chunk(this.$i18n.availableLocales, 2);
    }
  },

  methods: {
    changeLang(lang) {
      this.$i18n.setLocale(lang);
      this.dialog = false;
    }
  }
};
</script>
