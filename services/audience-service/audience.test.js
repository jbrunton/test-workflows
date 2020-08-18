const audience = require('./audience')

test('audience', () => {
  expect(audience).toEqual({ audience: 'World' });
});
