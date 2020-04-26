<template>
  <div v-if="entries.length > 0">
    <v-subheader>{{ $t('details.hygiene') }}</v-subheader>
    <v-list class="py-0">
      <hygiene-entry
        v-for="entry in entries"
        :key="entry"
        :place="place"
        :has="place.properties.tags[`vending:${entry}`]"
        :type="entry"
      />
    </v-list>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import HygieneEntry from './detail_hygiene_entry';

const entries = ['hydroalcoholic_gel', 'mask'];

export default {
  components: { HygieneEntry },

  props: {
    place: {
      type: Object,
      required: true
    }
  },

  computed: {
    ...mapGetters(['allCategories']),

    entries() {
      return entries.filter((e) => this.formDetails.includes(e));
    },

    formDetails() {
      return this.allCategories[this.place.properties.normalized_cat].subcategories[this.place.properties.cat].form_details || [];
    }
  }
};
</script>
