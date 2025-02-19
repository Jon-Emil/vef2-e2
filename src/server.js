import express from 'express';
import { router } from './routes.js';

const app = express();

app.use(express.urlencoded({ extended: true }));
const publicPath = new URL('../public', import.meta.url).pathname;
app.use(express.static(publicPath.slice(1)));

const viewsPath = new URL('./views', import.meta.url).pathname;
app.set('views', viewsPath.slice(1));
app.set('view engine', 'ejs');

app.use('/', router);

const hostname = 'dpg-cur26gd2ng1s73cl1vm0-a.oregon-postgres.render.com';
const port = 5432;

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
