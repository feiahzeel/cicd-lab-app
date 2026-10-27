const request = require('supertest');
const app = require('../src/app');

describe('cicd-lab app', () => {
  test('GET /health devuelve 200', async () => {
    const res = await request(app).get('/health');
    expect(res.statusCode).toBe(200);
    expect(res.body.status).toBe('ok');
  });

  test('GET / devuelve la versión', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.text).toContain('cicd-lab v');
  });
});
