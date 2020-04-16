import { resolve, join } from 'path';
import config from '../config.json';
import { countries } from '../categories';

const domains = countries.map(c => c.toLowerCase()).map((country) => {
  return {
    domain: config[country] && config[country].domain,
    locale: (config[country] && config[country].locale) || country
  };
}).filter(v => v.domain);

export default function({ messages }) {
  this.addPlugin({
    src: resolve('modules', 'plugin.i18n.js'),
    fileName: join('plugins', 'plugin.i18n.js')
  });

  // Templates
  this.addTemplate({
    src: resolve('modules', 'templates', 'options.js'),
    fileName: join('plugins', 'options.js'),
    options: { messages, domains }
  });
  this.addTemplate({
    src: resolve('components', 'cookie.js'),
    fileName: join('plugins', 'cookie.js')
  });
}
