<template>
  <v-dialog
    v-model="dialog"
    :eager="true"
    :width="600"
  >
    <template v-slot:activator="{ on }">
      <v-list-item v-on="on">
        <v-list-item-icon class="mr-0">
          <v-icon small>osm-plus</v-icon>
        </v-list-item-icon>
        <v-list-item-content class="ml-2">
          <v-list-item-title class="body-1">{{ $t('missing_shop') }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </template>

    <v-card>
      <v-card-title>
        {{ $t('missing_shop') }}
        <v-spacer></v-spacer>
        <v-btn
          icon
          @click="dialog = false"
        >
          <v-icon>osm-close</v-icon>
        </v-btn>
      </v-card-title>
      <v-card-text>
        <p class="text-pre">{{ $t('missing_shop_dialog.description', { brand }) }}</p>
        <v-row>
          <v-col md="7">
            {{ $t('missing_shop_dialog.add_osm') }}
          </v-col>
          <v-col md="5">
            <v-btn
              :href="links.shopMissing"
              class="full-width"
              outlined
              color="primary"
              target="_blank"
            >
              {{ $t('missing_shop_dialog.add_osm_cta') }}
            </v-btn>
          </v-col>
        </v-row>
        <v-row>
          <v-col md="7">
            {{ $t('missing_shop_dialog.add_category') }}
          </v-col>
          <v-col md="5">
            <v-btn
              href="https://github.com/osmontrouge/caresteouvert/issues/new?assignees=&labels=categories&template=missing_category.md&title=Missing+category%3A+%28name+of+category%29"
              class="full-width"
              outlined
              color="primary"
              target="_blank"
            >
              {{ $t('missing_shop_dialog.add_category_cta') }}
            </v-btn>
          </v-col>
        </v-row>
        <v-row v-if="country === 'FR'">
          <v-col md="7">
            <p>Vous avez votre propre établissement et vous avez besoin d'aide pour le rajouter :</p>
          </v-col>
          <v-col md="5">
            <v-btn
              href="https://airtable.com/shrwKi4g2nJu0rwUK"
              class="full-width"
              outlined
              color="primary"
              target="_blank"
            >Contactez nous</v-btn>
          </v-col>
        </v-row>
      </v-card-text>
    </v-card>
  </v-dialog>
</template>

<script>
import { mapState } from 'vuex';
import i18nMixin from './mixins/i18n';

export default {
  mixins: [i18nMixin],

  data() {
    return {
      dialog: false
    };
  },

  computed: mapState(['country']),

  watch: {
    dialog(value) {
      if (!value) return;
      _paq.push(['trackEvent', 'MissingShop', 'Open']);
    }
  }
};
</script>
