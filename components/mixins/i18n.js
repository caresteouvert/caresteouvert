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

export default {
  computed: {
    links() {
      return config[this.$i18n.locale] || config.en;
    },

    logo() {
      return {
        caresteouvert,
        bleibtoffen,
        sigueabierto,
        segueaberto,
        esobert
      }[this.links.brand];
    },

    logoMobile() {
      return {
        caresteouvert: caresteouvertMobile,
        bleibtoffen: bleibtoffenMobile,
        sigueabierto: sigueabiertoMobile,
        segueaberto: segueabertoMobile,
        esobert: esobertMobile
      }[this.links.brand];
    },

    logoOg() {
      return {
        caresteouvert: caresteouvertOg,
        bleibtoffen,
        sigueabierto,
        segueaberto,
        esobert
      }[this.links.brand];
    },

    brand() {
      return this.links.brand_text;
    }
  }
}
