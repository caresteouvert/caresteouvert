export default ({ app }) => {
  let firstLoad = true;
  app.router.afterEach((to, from) => {
    if (to.name === 'index' && !firstLoad) {
      return;
    }
    if (to.name === 'place' && to.name === from.name && to.params.id === from.params.id) {
      return;
    }
    firstLoad = false;
    const _paq = window._paq || [];
    window._paq = _paq;
    window._paq.push(['trackPageView']);
  });
};
