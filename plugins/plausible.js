import Vue from 'vue';
import { VuePlausible } from 'vue-plausible';

Vue.use(VuePlausible, {
  trackLocalhost: true,
  hashMode: true,
  domain: 'caresteouvert.fr'
});
