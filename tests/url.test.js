import { encode, decode, encodePosition, decodePosition, encodeFilter, decodeFilter } from '../lib/url';

describe('URL Params', () => {
  describe('encode', () => {
    it('the features and the position from an empty screen', () => {
      const url = encode('', '');
      expect(url).toEqual('');
    });

    it('the features and the position', () => {
      const url = encode('test=test1', '@1');
      expect(url).toEqual('test=test1@1');
    });
  });

  describe('decode', () => {
    it('an empty an empty string', () => {
      const { filter, location } = decode('');
      expect(filter).toEqual('');
      expect(location).toEqual('');
    });

    it('only the position', () => {
      const { filter, location } = decode('@1.23,4.32,6');
      expect(filter).toEqual('');
      expect(location).toEqual('@1.23,4.32,6');
    });

    it('only the features', () => {
      const { filter, location } = decode('test=A');
      expect(filter).toEqual('test=A');
      expect(location).toEqual('');
    });

    it('the features and the location', () => {
      const { filter, location } = decode('test=A@1.23');
      expect(filter).toEqual('test=A');
      expect(location).toEqual('@1.23');
    });
  });

  describe('decodePosition', () => {
    it('with the default values', () => {
      const { lat, lng, zoom } = decodePosition('', {
        mapCenter: [1, 2],
        mapZoom: 4
      });
      expect(lat).toEqual(2);
      expect(lng).toEqual(1);
      expect(zoom).toEqual(4);
    });

    it('with a correct url', () => {
      const { lat, lng, zoom } = decodePosition('@1.23,4.32,6', {
        mapCenter: [1, 2],
        mapZoom: 4
      });
      expect(lat).toEqual(1.23);
      expect(lng).toEqual(4.32);
      expect(zoom).toEqual(6);
    });
  });

  describe('encodePosition', () => {
    it('encode the position', () => {
      const position = encodePosition(1.12345678, 3.67891234, 4.321);
      expect(position).toEqual('@1.123457,3.678912,4.32');
    });
  });

  describe('encodeFilter', () => {
    it('encode the filter', () => {
      const filter = encodeFilter('test', []);
      expect(filter).toEqual('test');
    });

    it('encode the filter and the service', () => {
      const filter = encodeFilter('food', ['takeaway']);
      expect(filter).toEqual('food,takeaway');
    });

    it('encode the filter and the services', () => {
      const filter = encodeFilter('food', ['takeaway', 'delivery']);
      expect(filter).toEqual('food,takeaway,delivery');
    });
  });

  describe('decodeFilter', () => {
    it('returns the filter', () => {
      const { filter, services } = decodeFilter('test');
      expect(filter).toEqual('test');
      expect(services).toEqual([]);
    });

    it('returns the filter and the service', () => {
      const { filter, services } = decodeFilter('test,takeaway');
      expect(filter).toEqual('test');
      expect(services).toEqual(['takeaway']);
    });

    it('returns the filter and the services', () => {
      const { filter, services } = decodeFilter('test,takeaway,delivery');
      expect(filter).toEqual('test');
      expect(services).toEqual(['takeaway', 'delivery']);
    });
  });
});
