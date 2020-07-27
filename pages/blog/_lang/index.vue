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
      <h2><a :href="post.path">{{ post.title }}</a></h2>
    </article>
  </v-container>
</template>

<script>
import i18nMixin from '../../../components/mixins/i18n';

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
    this.posts = await this.$content(this.lang).fetch();
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
