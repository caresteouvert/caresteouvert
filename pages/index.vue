<template>
  <osm-main :features-and-location="this.$route.params.featuresAndLocation" />
</template>

<script>
import OsmMain from '../components/main';
import i18nMixin from '../components/mixins/i18n';
import { getUrlFromReq } from '../components/url';

export default {
  mixins: [i18nMixin],

  components: { OsmMain },

  asyncData({ req }) {
    return getUrlFromReq(req);
  },

  head () {
    const description = this.$t('learnmore.description', { brand: this.brand });
    return {
      title: this.$t('title'),
      meta: [
        { hid: 'description', name: 'description', content: description },
        { hid: 'twittercard', name: 'twitter:card', content: 'summary' },
        { hid: 'twittersite', name: 'twitter:site', content: '@caresteouvert' },
        { hid: 'twittertitle', name: 'twitter:title', content: this.$t('title') },
        { hid: 'twitterdescription', name: 'twitter:description', content: description },
        { hid: 'twitterimage', name: 'twitter:image', content: `${this.url}${this.logo}` },
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
