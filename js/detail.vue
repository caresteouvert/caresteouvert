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
          tile
          dark
        >
          <v-icon>{{ `osm-${point.properties.cat}` }}</v-icon>
          <v-toolbar-title
            :title="title"
            class="ml-3 toolbar-title"
          >
            {{ title || type }}
            <template v-if="title">
              <br>
              <span class="subtitle-1">{{ type }}</span>
            </template>
          </v-list-item>
          </v-toolbar-title>
          <v-spacer></v-spacer>
          <v-btn
            icon
            dark
            @click="close">
            <v-icon>osm-close</v-icon>
          </v-btn>
        </v-toolbar>

        <detail-state
          :point="point"
          :status="point.properties.status"
        />

        <v-alert
          v-if="point.properties.brand_infos"
          type="info"
          :icon="false"
          tile
          class="mb-0"
        >
          {{ point.properties.brand_infos }}
        </v-alert>

        <v-list>
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

          <v-list-item
            v-if="email"
            :href="`mailto:${email}`"
          >
            <v-list-item-icon><v-icon>osm-mail</v-icon></v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title>
                {{ email }}
              </v-list-item-title>
            </v-list-item-content>
          </v-list-item>

          <detail-opening-hours
            v-if="point.properties.opening_hours"
            :value="point.properties.opening_hours"
          />
          <v-list-item
            v-else-if="point.properties.brand_hours"
            :href="point.properties.brand_hours"
          >
            <v-list-item-icon><v-icon>osm-time</v-icon></v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title>
                {{ $t('details.containment_brand_hours') }}
              </v-list-item-title>
            </v-list-item-content>
          </v-list-item>
          <template
            v-else-if="point.properties.tags.opening_hours"
          >
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
        </v-list>
      </v-card>
    </v-slide-x-reverse-transition>
  </div>
</template>

<script>
import { poiFeature, apiKey } from '../config.json';
import DetailTag from './detail_tag';
import DetailEntry from './detail_entry';
import DetailOpeningHours from './detail_opening_hours';
import DetailState from './detail_state';

export default {
  components: {
    DetailEntry,
    DetailTag,
    DetailOpeningHours,
    DetailState
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

    email() {
      return this.point.properties.tags.email || this.point.properties.tags['contact:email'];
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
.toolbar-title {
  line-height: 1;
}
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
  top: 0;
  left: 0;
  z-index: 10;
  overflow-y: auto;
}
</style>
