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

export default {
  mixins: [i18nMixin],

  head () {
    return {
      title: `${this.title} - ${this.$t('title')}`,
      meta: [
        { hid: 'twittercard', name: 'twitter:card', content: 'summary_large_image' },
        { hid: 'twittersite', name: 'twitter:site', content: '@caresteouvert' },
        { hid: 'ogtype', property: 'og:type',  content: 'website' },
        { hid: 'ogurl', property: 'og:url',  content: `${this.$rootUrl}${this.$route.fullPath.substring(1)}` },
        { hid: 'ogtitle', property: 'og:title', content: this.title },
        { hid: 'ogimage', property: 'og:image', content: `${this.$rootUrl}${this.logoOg.substring(1)}` },
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

<style>
.article {
  max-width: 750px;
}
.article img {
  max-width: 100%;
}
.article .logo {
  max-width: 200px;
}
</style>
