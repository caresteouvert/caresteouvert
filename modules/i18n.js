import { resolve, join } from 'path';
import config from '../config.json';

const domains = Object.entries(config.brands).map(e => ({ brand: e[0], ...e[1] }));

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
    src: resolve('lib', 'cookie.js'),
    fileName: join('plugins', 'cookie.js')
  });
}
