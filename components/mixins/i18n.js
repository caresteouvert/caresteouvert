import { mapState } from 'vuex';
import config from '../../config.json';
import caresteouvert from '../../assets/logo-FR-laptop.svg';
import bleibtoffen from '../../assets/logo-DE-laptop.svg';
import sigueabierto from '../../assets/logo-ES-laptop.svg';
import segueaberto from '../../assets/logo-GL-laptop.svg';
import esobert from '../../assets/logo-CA-laptop.svg';
import ollaanauki from '../../assets/logo-FI-laptop.svg';
import ezosala from '../../assets/logo-CD-laptop.svg';
import restiamoaperti from '../../assets/logo-IT-laptop.svg';
import stayingopen from '../../assets/logo-IE-laptop.svg';
import taimidoscailte from '../../assets/logo-GA-laptop.svg';
import caresteouvertMobile from '../../assets/logo-FR-mobile.svg';
import bleibtoffenMobile from '../../assets/logo-DE-mobile.svg';
import sigueabiertoMobile from '../../assets/logo-ES-mobile.svg';
import esobertMobile from '../../assets/logo-CA-mobile.svg';
import segueabertoMobile from '../../assets/logo-GL-mobile.svg';
import ollaanaukiMobile from '../../assets/logo-FI-mobile.svg';
import ezosalaMobile from '../../assets/logo-CD-mobile.svg';
import restiamoapertiMobile from '../../assets/logo-IT-mobile.svg';
import stayingopenMobile from '../../assets/logo-IE-mobile.svg';
import taimidoscailteMobile from '../../assets/logo-GA-mobile.svg';
import caresteouvertOg from '../../assets/caresteouvert-og.jpg';
import bleibtoffenOg from '../../assets/bleibtoffen-og.jpg';
import restiamoapertiOg from '../../assets/restiamoaperti-og.jpg';
import lyon from '../../assets/logo-FR-lyon.svg';

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
        ezosala,
        restiamoaperti,
        stayingopen,
        taimidoscailte
      }[this.brandId] || caresteouvert;
    },

    logoMobile() {
      return {
        bleibtoffen: bleibtoffenMobile,
        sigueabierto: sigueabiertoMobile,
        segueaberto: segueabertoMobile,
        esobert: esobertMobile,
        ollaanauki: ollaanaukiMobile,
        ezosala: ezosalaMobile,
        restiamoaperti: restiamoapertiMobile,
        stayingopen: stayingopenMobile,
        taimidoscailte: taimidoscailteMobile
      }[this.brandId] || caresteouvertMobile;
    },

    logoOg() {
      return {
        bleibtoffen: bleibtoffenOg,
        sigueabierto,
        segueaberto,
        esobert,
        ollaanauki,
        ezosala,
        restiamoaperti: restiamoapertiOg,
        stayingopen,
        taimidoscailte
      }[this.brandId] || caresteouvertOg;
    },

    logoLocal() {
      return {
        lyon
      }[this.brandId];
    },

    brand() {
      return this.brandId ? config.brands[this.brandId].brand_text : config.brands.DEFAULT.brand_text;
    },

    appsInfo() {
      return config.brands[this.brandId].appsInfo || false;
    }
  }
}
