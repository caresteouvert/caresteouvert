import { mapState } from 'vuex';
import config from '../../config.json';
import caresteouvert from '../../assets/caresteouvert.svg';
import bleibtoffen from '../../assets/bleibtoffen.svg';
import sigueabierto from '../../assets/sigueabierto.png';
import segueaberto from '../../assets/segueaberto.png';
import esobert from '../../assets/esobert.png';
import caresteouvertMobile from '../../assets/logo_header.png';
import bleibtoffenMobile from '../../assets/bleibtoffen-mobile.svg';
import sigueabiertoMobile from '../../assets/sigueabierto-mobile.png';
import esobertMobile from '../../assets/esobert-mobile.png';
import segueabertoMobile from '../../assets/segueaberto-mobile.png';
import caresteouvertOg from '../../assets/caresteouvert-og.jpg';
import bleibtoffenOg from '../../assets/bleibtoffen-og.jpg';

export default {
  computed: {
    ...mapState(['country']),

    links() {
      const links = config[this.$i18n.locale] || config.en;
      return {
        ...config.defaults,
        ...links
      };
    },

    countryConfig() {
      return config[this.country.toLowerCase()] || this.links;
    },

    logo() {
      return {
        caresteouvert,
        bleibtoffen,
        sigueabierto,
        segueaberto,
        esobert
      }[this.countryConfig.brand];
    },

    logoMobile() {
      return {
        caresteouvert: caresteouvertMobile,
        bleibtoffen: bleibtoffenMobile,
        sigueabierto: sigueabiertoMobile,
        segueaberto: segueabertoMobile,
        esobert: esobertMobile
      }[this.countryConfig.brand];
    },

    logoOg() {
      return {
        caresteouvert: caresteouvertOg,
        bleibtoffen: bleibtoffenOg,
        sigueabierto,
        segueaberto,
        esobert
      }[this.countryConfig.brand];
    },

    brand() {
      return this.countryConfig.brand_text;
    }
  }
}
