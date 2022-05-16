const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

app.get("/", async (req, res) => {
  // Lengthy (probably async??) process.
  await setTimeout(() => {}, 1000);
  res.status(200).json({
    signature: "<dummy-signature>",
  });
});

app.listen(port, () => {
  console.log(`I love you ${port}.`);
});
