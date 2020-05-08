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

function bestLocale(obj, locale) {
  Object.entries(obj).forEach(e => {
    if(typeof e[1] === "object") {
      obj[e[0]] = e[1][locale] || e[1].DEFAULT;
    }
  });

  return obj;
}

export default {
  computed: {
    ...mapState(['country', 'brandId']),

    links() {
      // Priority to domain, then locales
      return bestLocale(Object.assign(
        {},
        config.locales.DEFAULT,
        config.locales[this.$i18n.locale],
        this.brandId && config.brands[this.brandId] ? config.brands[this.brandId] : {}
      ), this.$i18n.locale);
    },

    countryConfig() {
      return bestLocale(Object.assign({}, config.countries.DEFAULT, config.countries[this.country]), this.$i18n.locale);
    },

    logo() {
      return {
        bleibtoffen,
        sigueabierto,
        segueaberto,
        esobert,
        ollaanauki,
        ezosala
      }[this.brandId] || caresteouvert;
    },

    logoMobile() {
      return {
        bleibtoffen: bleibtoffenMobile,
        sigueabierto: sigueabiertoMobile,
        segueaberto: segueabertoMobile,
        esobert: esobertMobile,
        ollaanauki: ollaanaukiMobile,
        ezosala: ezosalaMobile
      }[this.brandId] || caresteouvertMobile;
    },

    logoOg() {
      return {
        bleibtoffen: bleibtoffenOg,
        sigueabierto,
        segueaberto,
        esobert,
        ollaanauki,
        ezosala
      }[this.brandId] || caresteouvertOg;
    },

    brand() {
      return this.brandId ? config.brands[this.brandId].brand_text : config.brands.DEFAULT.brand_text;
    },

    appsInfo() {
      return config.brands[this.brandId].appsInfo || false;
    }
  }
}
