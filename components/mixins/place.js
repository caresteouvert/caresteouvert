export default {
  computed: {
    title() {
      return this.place.properties.name;
    },

    category() {
      return this.place.properties.cat === 'unknown' ? 'other' : this.place.properties.cat;
    },

    type() {
      const key = `categories.${this.place.properties.cat}`;
      return this.$te(key) ? this.$t(key) : this.$t('categories.other');
    },

    contact() {
      const transform = {
        facebook(url) {
          if (!url) return url;
          return url.startsWith('http') ? url : `https://facebook.com/${url}`;
        }
      };
      const tags = this.place.properties.tags;
      return (name) => {
        const value = tags[name] || tags[`contact:${name}`];
        const transformFunc = transform[name] || (v => v);
        return transformFunc(value);
      };
    },

    status() {
      return this.place.properties.status;
    }
  }
}
