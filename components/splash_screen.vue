<template>
  <div class="d-flex align-center justify-center root blue accent-3">
    <div>
      <span
        v-text="$t('loading')"
        class="white--text title"
      ></span>
    </div>
  </div>
</template>

<style scoped>
.root {
  position: fixed;
  top: 0;
  left: 0;
  height: 100vh;
  width: 100vw;
  z-index: 30;
}
</style>
