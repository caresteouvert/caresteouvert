import parseId from '../js/parse_id';

describe('ParseId', () => {
  it('parse a node', () => {
    expect(parseId('n12345')).toEqual({ type: 'node', id: '12345' });
  });

  it('parse a way', () => {
    expect(parseId('w12345')).toEqual({ type: 'way', id: '12345' });
  });

  it('parse a relation', () => {
    expect(parseId('r12345')).toEqual({ type: 'relation', id: '12345' });
  });
});
