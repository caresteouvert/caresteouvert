<template>
  <v-container class="article">
    <header>
      <nuxt-link to="/">
        <img
          :src="logo"
          :alt="brand"
          class="logo"
        />
      </nuxt-link>
      <h1>Blog</h1>
    </header>
    <article
      v-for="post in posts"
      class="mb-4"
    >
      <h2><a :href="`/${lang}/${post.slug}`">{{ post.title }}</a></h2>
    </article>
  </v-container>
</template>

<script>
import i18nMixin from '../../../components/mixins/i18n';
const context = require.context('../../../articles/', true, /\.md$/);
const blogs = {};
context.keys().forEach((file) => {
  const [_, locale, slug ] = file.match('./(.+)/(.+)\.md$');
  if (!blogs[locale]) {
    blogs[locale] = [];
  }
  blogs[locale].push(slug);
});

export default {
  mixins: [i18nMixin],

  head() {
    return {
      title: `Blog - ${this.$t('title')}`
    };
  },

  data() {
    return { lang: this.$route.params.lang, posts: [] };
  },

  async fetch() {
    blogs[this.lang].forEach(async (slug) => {
      const res = await import(`~/articles/${this.lang}/${slug}.md`);
      this.posts.push({
        slug,
        title: res.attributes.title
      });
    });
  }
}
</script>

<style scoped>
.article {
  max-width: 750px;
}
.logo {
  max-width: 200px;
}
</style>
