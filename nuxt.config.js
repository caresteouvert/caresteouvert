import glob from 'glob';
import { resolve, basename } from 'path';

const messages = {};
glob.sync('./locales/*.json' ).forEach((file) => {
  const locale = basename(file, '.json').replace('_', '-');
  messages[locale] = require(resolve(file));
});

export default {
  mode: 'universal',
  /*
  ** Headers of the page
  */
  head: {
    title: process.env.npm_package_name || '',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no' }
    ],
    link: [
      { rel: 'icon', type: 'image/png', href: '/favicon.png' }
    ]
  },
  /*
  ** Customize the progress-bar color
  */
  loading: { color: '#fff' },
  /*
  ** Global CSS
  */
  css: [
    './font/osm.css'
  ],
  /*
  ** Plugins to load before mounting the App
  */
  plugins: [
    { src: '~/plugins/map', mode: 'client' },
    { src: '~/plugins/qa_map', mode: 'client' },
    { src: '~/plugins/matomo', mode: 'client' },
    { src: '~/plugins/linkified' },
    { src: '~/plugins/url' }
  ],
  /*
  ** Nuxt.js dev-modules
  */
  buildModules: [
    '@nuxtjs/vuetify',
  ],
  /*
  ** Nuxt.js modules
  */
  modules: [
    ['~/modules/i18n', { messages }],
    ['@nuxtjs/redirect-module'],
    ['@nuxt/content'],
  ],

  redirect: [
    { from: '^/about', to: 'https://blog.caresteouvert.fr/about' }
  ],

  /*
  ** vuetify module configuration
  ** https://github.com/nuxt-community/vuetify-module
  */
  vuetify: {
    treeShake: {
      directives: ['Touch']
    },
    optionsPath: './vuetify.options.js',
    defaultAssets: {
      icons: false,
      font: false
    }
  },
  /*
  ** Build configuration
  */
  build: {},
  router: {
    extendRoutes(routes, resolve) {
      const index = routes.findIndex(route => route.path === '/');
      routes[index] = {
        ...routes[index],
        path: '/:featuresAndLocation?'
      };
      routes[index].children[0].name = 'place';
    }
  }
}
