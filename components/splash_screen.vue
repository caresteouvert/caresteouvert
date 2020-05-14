<template>
  <div class="d-flex align-center justify-center root accent-3">
    <div>
      <span class="white--text title">
        <img src="../assets/logo_splash.gif" :alt="$t('loading')">
      </span>
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
  background-color: #0060B1;
}
.title img {
  max-width: 100%;
}
</style>
