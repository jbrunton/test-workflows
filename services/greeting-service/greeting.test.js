const greeting = require('./greeting')

test('greeting', () => {
  expect(greeting).toEqual({ greeting: 'Hello, %s!' });
});
