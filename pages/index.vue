<template>
  <osm-main :features-and-location="this.$route.params.featuresAndLocation" />
</template>

<script>
import isHttps from 'is-https';
import OsmMain from '../components/main';
import i18nMixin from '../components/mixins/i18n';

export default {
  mixins: [i18nMixin],

  components: { OsmMain },

  asyncData({ req }) {
    if (process.server) {
      const protocol = isHttps(req) ? 'https' : 'http';

      return { url: `${protocol}://${req.headers.host}` };
    } else {
      function createWebUrl(url) {
        const a = document.createElement("a")
        a.href = url
        // Fix populating Location properties in IE. Otherwise, protocol will be blank.
        a.href = a.href
        return a.href
      }
      return { url: createWebUrl('/') };
    }
  },

  head () {
    const description = this.$t('learnmore.description', { brand: this.brand });
    return {
      title: this.$t('title'),
      meta: [
        { hid: 'description', name: 'description', content: description },
        { hid: 'twittercard', name: 'twitter:card', content: 'summary' },
        { hid: 'ogtype', property: 'og:type',  content: 'website' },
        { hid: 'ogurl', property: 'og:url',  content: this.url },
        { hid: 'ogtitle', property: 'og:title', content: this.$t('title') },
        { hid: 'ogdescription', property: 'og:description', content: description },
        { hid: 'ogimage', property: 'og:image', content: `${this.url}${this.logo}` },
      ]
    }
  },
};
</script>
