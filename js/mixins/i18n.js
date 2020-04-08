import config from '../../config.json';
import caresteouvert from '../../images/caresteouvert.svg';

export default {
  computed: {
    links() {
      return config[this.$i18n.locale] || config.en;
    },

    logo() {
      return { caresteouvert: caresteouvert }[this.links.brand];
    },

    brand() {
      return this.links.brand_text;
    }
  }
}
