<template>
  <v-bottom-sheet
    v-model="open"
    scrollable
    hide-overlay
  >
    <template v-slot:activator="{ on }">
      <div
        v-touch="{ up: () => { open = true; } }"
        class="bottom text-center"
      >
        <v-btn
          color="white"
          v-on="on"
        >
          <v-icon :class="{ icon: animate }">osm-chevron_up</v-icon>
        </v-btn>
        <v-sheet
          :elevation="2"
        />
      </div>
    </template>
    <v-card max-height="50vh">
      <v-card-text class="pa-0">
        <div
          v-if="open"
          v-touch="{ down: () => open = false }"
          class="retract text-center"
        >
          <v-btn
            color="white"
            @click="open = false"
          >
            <v-icon>osm-chevron_down</v-icon>
          </v-btn>
        </div>
        <slot />
      </v-card-text>
    </v-card>
  </v-bottom-sheet>
</template>

<script>
import { getCookie, setCookie } from './cookie';

export default {
  data() {
    return {
      open: false,
      animate: getCookie('animateMenu') ? false : true
    };
  },

  watch: {
    open() {
      if (this.animate) {
        setCookie('animateMenu', false);
        this.animate = false;
      }
    }
  }
}
</script>

<style scoped>
.bottom {
  position: fixed;
  bottom: 0;
  width: 100%;
}
.bottom .v-sheet {
  position: fixed;
  bottom: 0;
  width: 100%;
  height: 20px;
}
.bottom .v-btn {
  position: relative;
  bottom: 15px;
}
.retract {
  z-index: -1;
  position: absolute;
  width: 100%;
  top: -30px;
}
@keyframes move_icon { 0% { bottom: 0; } 50% { bottom: 5px; } 100% { bottom: 0; }  }
.icon {
  animation: 1s ease-in-out infinite 5s move_icon;
}
</style>
