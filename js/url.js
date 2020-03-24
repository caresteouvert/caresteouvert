export function decode(url) {
  const locationPart = url.indexOf('@');
  return {
    features: url.substring(0, locationPart === -1 ? undefined : locationPart),
    location: locationPart === -1 ? '' : url.substring(locationPart)
  };
}

export function encode(features, position) {
  return `${features}${position}`;
}

export function decodePosition(position, config) {
  let lng = config.mapCenter[0];
  let lat = config.mapCenter[1];
  let zoom = config.mapZoom;
  const result = position.match(/@([.0-9]+),([.0-9]+),([.0-9]+)/);
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

export function encodeFeatures(filters) {
  const params = new URLSearchParams();
  Object.keys(filters).forEach((filter) => {
    if (!filters[filter].selected) {
      params.append(filter, false);
    }
  });
  return params.toString();
}

export function decodeFeatures(url, filters) {
  const params = new URLSearchParams(url);
  Object.keys(filters).forEach((filter) => {
    const selected = params.get(filter);
    if (selected) {
      filters[filter].selected = false;
    }
  });
}
