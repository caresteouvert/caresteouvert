<template>
  <v-bottom-sheet
    v-model="open"
    scrollable
    hide-overlay
  >
    <template v-slot:activator="{ on }">
      <div
        v-touch="{ up: openMenu }"
        class="bottom text-center"
      >
        <v-btn
          :class="{ 'animation-button': animate }"
          color="white"
          v-on="on"
        >
          <div class="handle grey lighten-1"></div>
        </v-btn>
        <v-sheet :elevation="2" />
      </div>
    </template>
    <v-card :height="`${height}vh`">
      <v-card-text class="pa-0">
        <div
          v-if="open"
          v-touch="{ up: moveUp, down: moveDown }"
          class="retract text-center"
        >
          <v-btn
            color="white"
            @click="open = false"
          >
            <div class="handle grey lighten-1"></div>
          </v-btn>
        </div>
        <slot />
      </v-card-text>
    </v-card>
  </v-bottom-sheet>
</template>

<script>
import { getCookie, setCookie } from '../lib/cookie';

export default {
  props: {
    filter: {
      type: String,
      required: true
    }
  },

  data() {
    return {
      open: false,
      height: 50,
      animate: getCookie('animateMenu') ? false : true
    };
  },

  mounted() {
    this.open = this.filter !== '' && this.$route.name !== 'place';
  },

  methods: {
    openMenu() {
      this.open = true;
    },

    moveUp() {
      this.height = 90;
    },

    moveDown() {
      this.height == 50 ? this.open = false : this.height = 50;
    }
  },

  watch: {
    open() {
      if (this.animate) {
        setCookie('animateMenu', false);
        this.animate = false;
      }
    },

    '$route'(route, oldRoute) {
      if (route.name === 'place') {
        this.open = false;
        this.height = 50;
      } else if (oldRoute.name === 'place' && this.filter !== '') {
        this.open = true;
      }
    }
  }
}
</script>

<style scoped>
.handle {
  width: 35px;
  height: 5px;
  border-radius: 2px;
  position: relative;
  top: -3px;
}
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
.v-card {
  transition: height .3s ease;
}
@keyframes move_icon { 0% { top: -10px; } 30% { top: -15px; } 60% { top: -10px; } 100% { top: -10px; }  }
.animate-button {
  position: relative;
  animation: 2s ease-in-out infinite 5s move_icon;
}
</style>
