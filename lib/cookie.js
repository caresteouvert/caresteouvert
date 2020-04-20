import JSCookie from 'js-cookie';
import Cookie from 'cookie'

export function setCookie(name, value) {
  const date = new Date();
  const cookieOptions = {
    expires: new Date(date.setDate(date.getDate() + 365)),
    path: '/',
    sameSite: 'lax'
  };
  JSCookie.set(name, value, cookieOptions);
};

export function getCookie(name, req) {
  if (process.client) {
    return JSCookie.get(name);
  } else if (req && typeof req.headers.cookie !== 'undefined') {
    const cookies = req.headers && req.headers.cookie ? Cookie.parse(req.headers.cookie) : {}
    return cookies[name];
  }
}
