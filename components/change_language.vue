<template>
  <v-dialog
    v-model="dialog"
    :width="400"
  >
    <template v-slot:activator="{ on }">
      <v-btn
        :height="50"
        tile
        text
        class="d-flex flex-grow-1 justify-start font-weight-regular body-1 text-none"
        v-on="on"
      >
        <v-icon
          small
          color="grey darken-1"
        >osm-language</v-icon>
        <span class="pl-3">{{ $t('change_lang') }}</span>
      </v-btn>
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
            cols="6"
          >
            <v-btn
              outlined
              width="100%"
              @click="changeLang(locale)"
            >{{ $t('lang', locale) }}</v-btn>
          </v-col>
          <v-col
            v-if="locales.length === 1"
            cols="6"
          />
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
