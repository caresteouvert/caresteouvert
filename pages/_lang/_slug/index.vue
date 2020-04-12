<template>
  <v-container lang="$18n.locale">
    <header>
      <nuxt-link to="/">
        <img
          :src="logo"
          :alt="brand"
          class="logo"
        />
      </nuxt-link>
      <h1>{{ title }}</h1>
    </header>
    <component
      v-if="component"
      :is="component"
      class="mt-5"
    />
  </v-container>
</template>

<script>
import i18nMixin from '../../../components/mixins/i18n';
import { getUrlFromReq } from '../../../components/url';

export default {
  mixins: [i18nMixin],

  asyncData({ req }) {
    return getUrlFromReq(req);
  },

  head () {
    return {
      title: `${this.title} - ${this.$t('title')}`,
      meta: [
        { hid: 'twittercard', name: 'twitter:card', content: 'summary' },
        { hid: 'twittersite', name: 'twitter:site', content: '@caresteouvert' },
        { hid: 'ogtype', property: 'og:type',  content: 'website' },
        { hid: 'ogurl', property: 'og:url',  content: `${this.url}${this.$route.fullPath.substring(1)}` },
        { hid: 'ogtitle', property: 'og:title', content: this.title },
        { hid: 'ogimage', property: 'og:image', content: `${this.url}${this.logo}` },
      ]
    };
  },

  data() {
    return { title: '', component: null };
  },

  async created() {
    const lang = this.$route.params.lang;
    const slug = this.$route.params.slug;
    const res = await import(`~/articles/${lang}/${slug}.md`);

    this.title = res.attributes.title;
    this.component = res.vue.component;
  }
}
</script>

<style scoped>
.logo {
  max-width: 200px;
}
</style>
