import { mapState } from 'vuex';
import config from '../../config.json';
import caresteouvert from '../../assets/caresteouvert.svg';
import bleibtoffen from '../../assets/bleibtoffen.svg';
import sigueabierto from '../../assets/sigueabierto.png';
import segueaberto from '../../assets/segueaberto.png';
import esobert from '../../assets/esobert.png';
import ollaanauki from '../../assets/ollaanauki.svg';
import ezosala from '../../assets/ezosala.svg';
import caresteouvertMobile from '../../assets/logo_header.png';
import bleibtoffenMobile from '../../assets/bleibtoffen-mobile.svg';
import sigueabiertoMobile from '../../assets/sigueabierto-mobile.png';
import esobertMobile from '../../assets/esobert-mobile.png';
import segueabertoMobile from '../../assets/segueaberto-mobile.png';
import ollaanaukiMobile from '../../assets/ollaanauki-mobile.svg';
import caresteouvertOg from '../../assets/caresteouvert-og.jpg';
import bleibtoffenOg from '../../assets/bleibtoffen-og.jpg';
import ezosalaMobile from '../../assets/ezosala-mobile.svg';

export default {
  computed: {
    ...mapState(['country']),

    bestLocaleCountryConfig() {
      if(config[this.$i18n.locale] && config[this.$i18n.locale][this.country]) {
        return config[this.$i18n.locale][this.country];
      }
      else if(config[this.$i18n.locale] && config[this.$i18n.locale].DEFAULT) {
        return typeof config[this.$i18n.locale].DEFAULT === "string" ? config[this.$i18n.locale][config[this.$i18n.locale].DEFAULT] : config[this.$i18n.locale].DEFAULT;
      }
      else {
        // Check if country exist in another locale
        const countries = Object.values(config).filter(c => typeof c === "object" && c[this.country]);
        return countries.length > 0 ? countries[0] : config.en.DEFAULT;
      }
    },

    links() {
      return {
        ...config.defaults,
        ...this.bestLocaleCountryConfig
      };
    },

    countryConfig() {
      return this.bestLocaleCountryConfig;
    },

    logo() {
      return {
        caresteouvert,
        bleibtoffen,
        sigueabierto,
        segueaberto,
        esobert,
        ollaanauki,
        ezosala
      }[this.links.brand];
    },

    logoMobile() {
      return {
        caresteouvert: caresteouvertMobile,
        bleibtoffen: bleibtoffenMobile,
        sigueabierto: sigueabiertoMobile,
        segueaberto: segueabertoMobile,
        esobert: esobertMobile,
        ollaanauki: ollaanaukiMobile,
        ezosala: ezosalaMobile
      }[this.links.brand];
    },

    logoOg() {
      return {
        caresteouvert: caresteouvertOg,
        bleibtoffen: bleibtoffenOg,
        sigueabierto,
        segueaberto,
        esobert,
        ollaanauki,
        ezosala
      }[this.links.brand];
    },

    brand() {
      return this.links.brand_text;
    }
  }
}
