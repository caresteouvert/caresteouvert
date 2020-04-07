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
