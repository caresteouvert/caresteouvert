import 'mapbox-gl/dist/mapbox-gl.css';
import '../font/osm.css';

import Vue from 'vue';
import Vuetify, {
  VAlert,
  VApp,
  VBtn,
  VCard,
  VCardSubtitle,
  VCardText,
  VCardTitle,
  VCheckbox,
  VCol,
  VContainer,
  VContent,
  VDivider,
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
  VListItemTitle,
  VNavigationDrawer,
  VRow,
  VSlideXReverseTransition,
  VSpacer,
  VSubheader,
  VToolbar,
  VToolbarTitle,
  VTooltip,
} from 'vuetify/lib';
import { Resize } from 'vuetify/lib/directives'
import VueRouter from 'vue-router';
import VueI18n from 'vue-i18n';

import App from './app.vue';
import OsmMain from './main.vue';

import messages from '../locales.json';
import markdownPages from '../pages/*.md';

Vue.use(Vuetify, {
  components: {
    VAlert,
    VApp,
    VBtn,
    VCard,
    VCardSubtitle,
    VCardText,
    VCardTitle,
    VCheckbox,
    VCol,
    VContainer,
    VContent,
    VDivider,
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
    VListItemTitle,
    VNavigationDrawer,
    VRow,
    VSlideXReverseTransition,
    VSpacer,
    VSubheader,
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

const vuetify = new Vuetify({
  icons: {
    values: {
      prev: 'osm-chevron_left',
      next: 'osm-chevron_right',
      expand: 'osm-arrow_down',
      checkboxOn: 'osm-check_box',
      checkboxOff: 'osm-check_box_outline_blank'
    }
  }
});

const i18n = new VueI18n({
  locale: 'fr',
  messages,
});

console.log(markdownPages);

const staticPagesMarkdown = Object.keys(markdownPages).map((page) => {
  return {
    name: page,
    path: `/${page}`,
    component: () => import('./page'),
    props: { html: markdownPages[page] }
  };
});

const routes = [
  ...staticPagesMarkdown,
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
        component: () => import('./detail'),
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

const mapName = i18n.t('title');
router.afterEach((route) => {
  const title = () => {
    const markdownPage = markdownPages[route.name];
    if (markdownPage) {
      const doc2 = new DOMParser().parseFromString(markdownPages[route.name], 'text/html');
      const title = doc2.querySelector('h1').textContent;
      return `${title} - ${mapName}`;
    } else {
      return mapName;
    }
  };
  document.title = title();
});

new Vue({
  router,
  i18n,
  vuetify,
  render: createEle => createEle(App),
}).$mount('#app');
