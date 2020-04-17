import glob from 'glob';
import { resolve, basename } from 'path';
import FMMode from 'frontmatter-markdown-loader/mode';

const messages = {};
glob.sync('./locales/*.json' ).forEach((file) => {
  const locale = basename(file, '.json');
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
    ['~/modules/i18n', { messages }]
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
  build: {
    /*
    ** You can extend webpack config here
    */
    extend (config, _ctx) {
      config.module.rules.push(
        {
          test: /\.md$/,
          loader: 'frontmatter-markdown-loader',
          include: resolve(__dirname, 'articles'),
          options: {
            mode: [FMMode.VUE_COMPONENT]
          }
        }
      )
    }
  },
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
