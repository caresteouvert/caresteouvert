import config from '../../config.json';
import caresteouvert from '../../images/caresteouvert.svg';
import bleibtoffen from '../../images/bleibtoffen.svg';
import caresteouvertMobile from '../../images/logo_header.png';
import bleibtoffenMobile from '../../images/bleibtoffen-mobile.svg';

export default {
  computed: {
    links() {
      return config[this.$i18n.locale] || config.en;
    },

    logo() {
      return { caresteouvert, bleibtoffen }[this.links.brand];
    },

    logoMobile() {
      return { caresteouvert: caresteouvertMobile, bleibtoffen: bleibtoffenMobile }[this.links.brand];
    },

    brand() {
      return this.links.brand_text;
    }
  }
}
