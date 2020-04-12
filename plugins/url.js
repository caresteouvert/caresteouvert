import isHttps from 'is-https';
import Vue from 'vue'

function getUrlFromReq(req) {
  if (process.server) {
   const protocol = isHttps(req) ? 'https' : 'http';
   return `${protocol}://${req.headers.host}/`;
  } else {
    function createWebUrl(url) {
      const a = document.createElement("a")
      a.href = url
      // Fix populating Location properties in IE. Otherwise, protocol will be blank.
      a.href = a.href
      return a.href
    }
    return createWebUrl('/');
  }
}

export default ({ app, req }) => {
  Vue.prototype.$rootUrl = getUrlFromReq(req);
};
