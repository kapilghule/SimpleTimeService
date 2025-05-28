const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.json({
    timestamp: new Date().toISOString(),
    ip: req.headers['x-forwarded-for'] || req.socket.remoteAddress
  });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`SimpleTimeService running on port ${PORT}`);
});
