import isHttps from 'is-https';
import Vue from 'vue'

function getUrlFromReq(req) {
  if (process.server) {
   const protocol = isHttps(req) ? 'https' : 'http';
   return `${protocol}://${req.headers.host}/`;
  } else {
    return `${window.location.origin}/`;
  }
}

export default ({ app, req }) => {
  Vue.prototype.$rootUrl = getUrlFromReq(req);
};
