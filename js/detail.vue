<template>
  <div
    v-resize="resize"
    :class="{ 'bottom-dialog': isMobile, 'right-sidebar': !isMobile }"
  >
    <v-slide-x-reverse-transition>
      <v-card
        v-if="point"
        tile
        min-height="100%"
      >
        <v-toolbar
          :color="color"
          tile
          dark
        >
          <v-icon>{{ `osm-${point.properties.cat}` }}</v-icon>
          <v-toolbar-title
            :title="title"
            class="ml-3"
            >{{ title || type }}</v-toolbar-title>
          <v-spacer></v-spacer>
          <v-btn
            icon
            dark
            @click="close">
            <v-icon>osm-close</v-icon>
          </v-btn>
        </v-toolbar>

        <v-list>
          <v-list-item v-if="title">
            <v-list-item-content>
              <v-list-item-title>
                {{ type }}
              </v-list-item-title>
            </v-list-item-content>
          </v-list-item>
          <v-list-item
            v-if="point.properties.tags.phone"
            :href="`tel:${point.properties.tags.phone}`"
          >
            <v-list-item-icon><v-icon>osm-phone</v-icon></v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title>
                {{ point.properties.tags.phone }}
              </v-list-item-title>
            </v-list-item-content>
          </v-list-item>

          <template v-if="!point.properties.opening_hours && point.properties.tags.opening_hours">
            <v-alert
              dense
              tile
              :icon="false"
              border="left"
              colored-border
              type="warning"
              class="mb-0 pa-0"
            >
              <div class="ml-3">{{ $t('details.containment_opening_hours') }}</div>
              <detail-opening-hours
                v-if="point.properties.tags.opening_hours"
                :value="point.properties.tags.opening_hours"
              />
            </v-alert>
          </template>
          <detail-opening-hours
            v-else-if="point.properties.opening_hours"
            :value="point.properties.opening_hours"
          />

          <detail-opening-hours
            v-if="point.properties.tags.collection_times"
            :mode="1"
            :value="point.properties.tags.collection_times"
            namespace="details.collection_times"
          />

          <detail-tag
            :value="point.properties.tags.capacity"
            icon="osm-info"
            name="Nombre de places :"
          />

          <detail-entry
            v-if="point.properties.tags.dog === 'no'"
            icon="osm-no_dogs"
          >
            {{ $t('details.dog_no') }}
          </detail-entry>

          <v-list-item
            v-if="point.properties.tags.website"
            :href="point.properties.tags.website"
          >
            <v-list-item-icon><v-icon>osm-link</v-icon></v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title>
                {{ point.properties.tags.website }}
              </v-list-item-title>
            </v-list-item-content>
          </v-list-item>

          <detail-entry
            v-if="point.properties.tags.operator"
            icon="osm-info"
          >
            <template v-if="point.properties.tags['operator:type']">
              {{ $t('details.operator_with_type', {
                name: point.properties.tags.operator,
                type: $t(`details.operator_type.${point.properties.tags['operator:type']}`)
              }) }}
            </template>
            <template v-else>
              {{ $t('details.operator', { name: point.properties.tags.operator }) }}
            </template>
          </detail-entry>
          <detail-tag
            v-else-if="point.properties.tags['operator:type']"
            :value="$t(`details.operator_type.${point.properties.tags['operator:type']}`)"
            icon="osm-info"
            name="Type de l'opérateur :"
          />
        </v-list>
      </v-card>
    </v-slide-x-reverse-transition>
  </div>
</template>

<script>
import { poiFeature } from '../config.json';
import DetailTag from './detail_tag';
import DetailEntry from './detail_entry';
import DetailOpeningHours from './detail_opening_hours';

export default {
  components: {
    DetailEntry,
    DetailTag,
    DetailOpeningHours
  },

  props: {
    id: {
      type: String,
      required: true
    },
    featuresAndLocation: {
      type: String,
      required: false,
      default: ''
    }
  },

  mounted() {
    this.resize();
    this.updatePoint();
  },

  data() {
    return {
      isMobile: true,
      point: null
    };
  },

  computed: {
    title() {
      return this.point.properties.name;
    },

    type() {
      return this.$t(`details.feature.${this.point.properties.cat}`);
    },

    color() {
      return ['ouvert', 'ouvert_partiel'].includes(this.point.properties.status) ? 'green' : 'gray';
    }
  },

  watch: {
    id() {
      this.point = null;
      this.updatePoint();
    }
  },

  methods: {
    resize() {
      this.isMobile = window.innerWidth < 800;
    },

    updatePoint() {
      fetch(`${poiFeature}/${this.id}.json`)
        .then(data => data.json())
        .then((feature) => {
          this.point = feature;
        });
    },

    close() {
      this.$router.push({ name: 'index', params: { featuresAndLocation: this.featuresAndLocation } })
    }
  }
}
</script>

<style scoped>
.right-sidebar {
  width: 400px;
  height: 100vh;
  position: fixed;
  top: 0;
  right: 0;
  z-index: 10;
  overflow-y: auto;
}

.bottom-dialog {
  width: 100vw;
  height: 100vh;
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 10;
  overflow-y: auto;
}
</style>
