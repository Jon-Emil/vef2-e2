import express from 'express';
import { router } from './routes.js';

const app = express();

app.use(express.urlencoded({ extended: true }));
const publicPath = new URL('../public', import.meta.url).pathname;
app.use(express.static(publicPath));

const viewsPath = new URL('./views', import.meta.url).pathname;
app.set('views', viewsPath);
app.set('view engine', 'ejs');

app.use('/', router);

const hostname = '0.0.0.0';
const port = Number(process.env.PORT) || 3000;

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
