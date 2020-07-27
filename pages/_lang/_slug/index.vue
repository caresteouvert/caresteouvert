<template>
  <v-container
    tag="article"
    class="article"
  >
    <header>
      <nuxt-link to="/">
        <img
          :src="logo"
          :alt="brand"
          class="logo"
        />
      </nuxt-link>
      <h1>{{ page.title }}</h1>
    </header>
    <nuxt-content
      :document="page"
      class="mt-5"
    />
  </v-container>
</template>

<script>
import i18nMixin from '../../../components/mixins/i18n';

export default {
  mixins: [i18nMixin],

  head () {
    return {
      title: `${this.page.title} - ${this.$t('title')}`,
      meta: [
        { hid: 'twittercard', name: 'twitter:card', content: 'summary_large_image' },
        { hid: 'twittersite', name: 'twitter:site', content: '@caresteouvert' },
        { hid: 'ogtype', property: 'og:type',  content: 'website' },
        { hid: 'ogurl', property: 'og:url',  content: `${this.$rootUrl}${this.$route.fullPath.substring(1)}` },
        { hid: 'ogtitle', property: 'og:title', content: this.page.title },
        { hid: 'ogimage', property: 'og:image', content: `${this.$rootUrl}${this.logoOg.substring(1)}` },
      ]
    };
  },

  data() {
    return { page: null };
  },

  async fetch() {
    const lang = this.$route.params.lang;
    const slug = this.$route.params.slug;
    const content = await this.$content(lang, slug).fetch();
    this.page = content;
  }
}
</script>

<style>
.article {
  max-width: 750px !important;
}
.article img {
  max-width: 100%;
}
.article .logo {
  max-width: 200px;
}
</style>
