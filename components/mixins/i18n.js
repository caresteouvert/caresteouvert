import config from '../../config.json';
import caresteouvert from '../../images/caresteouvert.svg';
import bleibtoffen from '../../images/bleibtoffen.svg';
import sigueabierto from '../../images/sigueabierto.png';
import segueaberto from '../../images/segueaberto.png';
import esobert from '../../images/esobert.png';
import caresteouvertMobile from '../../images/logo_header.png';
import bleibtoffenMobile from '../../images/bleibtoffen-mobile.svg';
import sigueabiertoMobile from '../../images/sigueabierto-mobile.png';
import esobertMobile from '../../images/esobert-mobile.png';
import segueabertoMobile from '../../images/segueaberto-mobile.png';

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

    brand() {
      return this.links.brand_text;
    }
  }
}
