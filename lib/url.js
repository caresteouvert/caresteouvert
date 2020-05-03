import config from '../config.json';

export function decode(url) {
  const locationPart = url.indexOf('@');
  return {
    filter: url.substring(0, locationPart === -1 ? undefined : locationPart),
    location: locationPart === -1 ? '' : url.substring(locationPart)
  };
}

export function encode(filter, position) {
  return `${filter}${position}`;
}

export function decodePosition(position, config) {
  let lng = config.mapCenter[0];
  let lat = config.mapCenter[1];
  let zoom = config.mapZoom;
  const result = position.match(/@(-?\d+(?:\.\d+)?),(-?\d+(?:\.\d+)?),(\d+(?:\.\d+)?)/);
  if (result) {
    lat = parseFloat(result[1]);
    lng = parseFloat(result[2]);
    zoom = parseFloat(result[3]);
  }
  return { lat, lng, zoom };
}

export function encodePosition(lat, lng, zoom) {
  const position = [lat.toFixed(6), lng.toFixed(6), zoom.toFixed(2)];
  return `@${position.join(',')}`;
}

export function encodeFilter(filter, services) {
  const separator = services.length > 0 ? ',' : '';
  return `${filter}${separator}${services}`;
}

export function decodeFilter(filter) {
  const parts = filter.split(',');
  return { filter: parts[0], services: parts.slice(1) };
}

export function findBrand(hostname) {
  hostname = hostname.replace(/^www\./, "");
  const b = Object.entries(config.brands).find(e => e[1].domain === hostname || (e[1].domains && e[1].domains.includes(hostname)));
  return b ? { brand: b[0], ...b[1] } : { brand: 'DEFAULT', ...config.brands.DEFAULT };
}
