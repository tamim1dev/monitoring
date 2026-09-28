const test = require("node:test");
const assert = require("node:assert");
const app = require("../src/app");

test("GET / returns hello world", async () => {
  const server = app.listen(0);
  const { port } = server.address();
  try {
    const res = await fetch(`http://127.0.0.1:${port}/`);
    assert.strictEqual(res.status, 200);
    assert.strictEqual(await res.text(), "Hello, World!");
  } finally {
    server.close();
  }
});

test("GET /health returns ok", async () => {
  const server = app.listen(0);
  const { port } = server.address();
  try {
    const res = await fetch(`http://127.0.0.1:${port}/health`);
    assert.deepStrictEqual(await res.json(), { status: "ok" });
  } finally {
    server.close();
  }
});
