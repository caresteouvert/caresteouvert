<script>
import {
  VNavigationDrawer
} from 'vuetify/lib';

export default {
  extends: VNavigationDrawer,

  methods: {
    closeConditional(e) {
      return this.isActive && !this._isDestroyed && this.reactsToClick && e && !this.$el.contains(e.target);
    }
  }
};
</script>
