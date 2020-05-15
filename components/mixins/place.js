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
      const phoneText = (p) => {
        if(p.startsWith("+33")) {
          p = p.replace("+33", "0").replace(/ /g, "").split("").reduce((acc, cur, i) => (i % 2 === 0 & i > 0 ? acc + " " + cur : acc + cur));
        }
        return p;
      };
      const phone = (p) => { return { text: phoneText(p), href: `tel:${p}` }; };
      const urlText = (u) => {
        return u.replace(/^https?\:\/\//, "").replace(/\/$/, "");
      };
      const fbText = (u) => {
        if(!u.startsWith("http")) { return u; }
        return u.replace(/^^https?\:\/\/.*facebook\.com\//, "")
          .replace(/\/$/, "")
          .replace(/-\d+$/, "")
          .replace(/-/g, " ");
      };
      const transform = {
        phone,
        mobile: phone,
        "phone:covid19": phone,
        email(email) {
          return { text: email, href: `mailto:${email}` };
        },
        facebook(url) {
          const href = url.startsWith('http') ? url : `https://facebook.com/${url}`;
          return { text: fbText(href), href };
        },
        website(url) {
          const href = url.startsWith('http') ? url : `http://${url}`;
          return { text: urlText(href), href };
        },
        fax(f) {
          return { text: phoneText(f), href: `fax:${f}` };
        }
      };
      const tags = Object.assign({ website: this.place.properties.brand_hours || undefined }, this.place.properties.tags);
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
