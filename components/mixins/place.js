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
      const phone = (p) => { return { text: p, href: `tel:${p}` }; };
      const transform = {
        phone,
        mobile: phone,
        "phone:covid19": phone,
        email(email) {
          return { text: email, href: `mailto:${email}` };
        },
        facebook(url) {
          const href = url.startsWith('http') ? url : `https://facebook.com/${url}`;
          return { text: href, href };
        },
        website(url) {
          const href = url.startsWith('http') ? url : `http://${url}`;
          return { text: href, href };
        },
        fax(f) {
          return { text: f, href: `fax:${f}` };
        }
      };
      const tags = this.place.properties.tags;
      return (name) => {
        const value = tags[name] || tags[`contact:${name}`];
        if (!value) return;
        return value.split(';').map(transform[name] || (v => { return { text: v, href: v }; }));
      };
    },

    status() {
      return this.place.properties.status;
    }
  }
}
