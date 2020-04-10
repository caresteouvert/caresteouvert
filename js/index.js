import 'mapbox-gl/dist/mapbox-gl.css';
import '../font/osm.css';

import Vue from 'vue';
import Vuetify, {
  VAlert,
  VApp,
  VAutocomplete,
  VBtn,
  VCard,
  VCardSubtitle,
  VCardText,
  VCardTitle,
  VCheckbox,
  VChip,
  VCol,
  VContainer,
  VContent,
  VDialog,
  VDivider,
  VFooter,
  VIcon,
  VImg,
  VLayout,
  VList,
  VListGroup,
  VListItem,
  VListItemAction,
  VListItemAvatar,
  VListItemContent,
  VListItemGroup,
  VListItemIcon,
  VListItemSubtitle,
  VListItemTitle,
  VNavigationDrawer,
  VRow,
  VSelect,
  VSlideXReverseTransition,
  VSlideYReverseTransition,
  VSpacer,
  VStepper,
  VStepperContent,
  VStepperStep,
  VSubheader,
  VTextarea,
  VTimePicker,
  VToolbar,
  VToolbarTitle,
  VTooltip,
} from 'vuetify/lib';
import { Resize } from 'vuetify/lib/directives'
import VueRouter from 'vue-router';
import VueI18n from 'vue-i18n';
import VueLinkify from 'vue-linkify'

import App from './app.vue';
import OsmMain from './main.vue';
import OsmDetail from './detail.vue';

import messages from '../locales/*.json';

Vue.use(Vuetify, {
  components: {
    VAlert,
    VApp,
    VAutocomplete,
    VBtn,
    VCard,
    VCardSubtitle,
    VCardText,
    VCardTitle,
    VCheckbox,
    VChip,
    VCol,
    VContainer,
    VContent,
    VDialog,
    VDivider,
    VFooter,
    VIcon,
    VImg,
    VLayout,
    VList,
    VListGroup,
    VListItem,
    VListItemAction,
    VListItemAvatar,
    VListItemContent,
    VListItemGroup,
    VListItemIcon,
    VListItemSubtitle,
    VListItemTitle,
    VNavigationDrawer,
    VRow,
    VSelect,
    VSlideXReverseTransition,
    VSlideYReverseTransition,
    VSpacer,
    VStepper,
    VStepperContent,
    VStepperStep,
    VSubheader,
    VTextarea,
    VTimePicker,
    VToolbar,
    VToolbarTitle,
    VTooltip,
  },
  directives: {
    Resize
  }
});
Vue.use(VueRouter);
Vue.use(VueI18n);
Vue.directive('linkified', VueLinkify);

const vuetify = new Vuetify({
  icons: {
    values: {
      prev: 'osm-chevron_left',
      next: 'osm-chevron_right',
      expand: 'osm-arrow_down',
      checkboxOn: 'osm-check_box',
      checkboxOff: 'osm-check_box_outline_blank',
      cancel: 'osm-close'
    }
  }
});

const getLocale = () => {
  try {
    return localStorage.getItem('lang') || navigator.language.split('-')[0]
  } catch (_) {
    return 'en'
  }
}
const i18n = new VueI18n({
  locale: getLocale(),
  fallbackLocale: 'en',
  messages
});

document.title = i18n.t('title');

const routes = [
  {
    name: 'index',
    path: '/:featuresAndLocation?',
    component: OsmMain,
    props: (route) => {
      return {
        featuresAndLocation: route.params.featuresAndLocation
      };
    },
    children: [
      {
        name: 'place',
        path: 'place/:id',
        component: OsmDetail,
        props: (route) => {
          return {
            featuresAndLocation: route.params.featuresAndLocation,
            id: route.params.id
          };
        }
      }
    ]
  }
];

const router = new VueRouter({
  mode: 'history',
  routes
});

new Vue({
  router,
  i18n,
  vuetify,
  render: createEle => createEle(App),
}).$mount('#app');
