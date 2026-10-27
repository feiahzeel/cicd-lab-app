const app = require('./app');

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`cicd-lab escuchando en el puerto ${PORT}`);
});
