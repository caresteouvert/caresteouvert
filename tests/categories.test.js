import categoriesForCountry from '../components/categories';

describe('categoriesForCountry', () => {
  it('returns all categories for the given country', () => {
    const result = categoriesForCountry({
      categories: {
        police: {
          subcategories: {
            police: { areas: 'all' },
          }
        }
      }
    }, 'FR');
    expect(Object.keys(result)).toEqual(['police']);
    expect(Object.keys(result.police.subcategories)).toEqual(['police']);
  });

  it('filter categories available only to others countries', () => {
    const result = categoriesForCountry({
      categories: {
        police: {
          subcategories: {
            police: { areas: 'all' }
          }
        },
        police2: {
          subcategories: {
            police: { areas: ['DE'] }
          }
        }
      }
    }, 'FR');
    expect(Object.keys(result)).toEqual(['police']);
    expect(Object.keys(result.police.subcategories)).toEqual(['police']);
  });

  it('include only subcategories available to the current country', () => {
    const result = categoriesForCountry({
      categories: {
        police: {
          subcategories: {
            police: { areas: 'all' },
            police2: { areas: ['DE', 'FR'] }
          }
        },
        police3: {
          subcategories: {
            police: { areas: ['DE'] }
          }
        }
      }
    }, 'FR');
    expect(Object.keys(result)).toEqual(['police']);
    expect(Object.keys(result.police.subcategories)).toEqual(['police', 'police2']);
  });
});
