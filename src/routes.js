import express from 'express';
import { getDatabase } from './lib/db.client.js';
import { environment } from './lib/environment.js';
import { logger } from './lib/logger.js';
import xss from 'xss';
import process from 'node:process';

export const router = express.Router();

router.get('/', async (req, res) => {
  const result = await getDatabase()?.query('SELECT * FROM categories');

  const categories = result?.rows ?? [];

  console.log(categories);
  res.render('index', { title: 'Forsíða', categories });
});

router.get('/spurningar/:category', async (req, res) => {
  const title = req.params.category;
  let result = await getDatabase()?.query(
    'SELECT * FROM questions WHERE categoryName = $1',
    [title],
  );
  const questions = result?.rows ?? [];

  result = await getDatabase()?.query('SELECT * FROM answers');
  const answers = result?.rows ?? [];

  console.log(questions);
  console.log(answers);

  res.render('category', { title, questions, answers });
});

router.get('/form', (req, res) => {
  res.render('form', { title: 'Búa til flokk' });
});

router.post('/form', async (req, res) => {
  const { category, question, answer1, answer2, answer3, answer4, rett_svar } =
    req.body;

  console.log(req.body);

  if (question.length > 512) {
    res.render('form-created', {
      title: 'Spurning ekki búinn til',
      info: 'Spurning of löng.',
    });
    return;
  }
  if (question != xss(question)) {
    res.render('form-created', {
      title: 'Spurning ekki búinn til',
      info: 'Spurning stóðst ekki öryggisprófun.',
    });
    return;
  }

  const env = environment(process.env, logger);
  if (!env) {
    process.exit(1);
  }
  const db = getDatabase();

  let result = await db?.query('SELECT * FROM questions WHERE content = $1', [
    question,
  ]);

  const questions = result?.rows ?? [];
  if (questions.length !== 0) {
    res.render('form-created', {
      title: 'Spurning ekki búinn til',
      info: 'Spurning nú þegar til.',
    });
    return;
  }

  const allAnswers = [answer1, answer2, answer3, answer4];
  for (let i = 0; i < 4; i++) {
    const answer = allAnswers[i];
    if (answer.length > 256) {
      res.render('form-created', {
        title: 'Spurning ekki búinn til',
        info: `Svar nr. ${i + 1} er of langt.`,
      });
      return;
    }
    if (answer != xss(answer)) {
      res.render('form-created', {
        title: 'Spurning ekki búinn til',
        info: `Svar nr. ${i + 1} stóðst ekki öryggisprófun`,
      });
      return;
    }
  }

  const questionResult = await db?.query(
    `INSERT INTO questions (categoryName, content) 
     VALUES ($1, $2)
     RETURNING id`,
    [category, question],
  );
  console.log(questionResult);
  const questionID = questionResult?.rows[0].id ?? 0;
  let correct;

  correct = 1 == rett_svar;
  const answer1Result = await db?.query(
    `INSERT INTO answers (questionID, content, correct) 
     VALUES ($1, $2, $3)`,
    [questionID, answer1, correct],
  );
  console.log(answer1Result);

  correct = 2 == rett_svar;
  const answer2Result = await db?.query(
    `INSERT INTO answers (questionID, content, correct) 
     VALUES ($1, $2, $3)`,
    [questionID, answer2, correct],
  );
  console.log(answer2Result);

  correct = 3 == rett_svar;
  const answer3Result = await db?.query(
    `INSERT INTO answers (questionID, content, correct) 
     VALUES ($1, $2, $3)`,
    [questionID, answer3, correct],
  );
  console.log(answer3Result);

  correct = 4 == rett_svar;
  const answer4Result = await db?.query(
    `INSERT INTO answers (questionID, content, correct) 
     VALUES ($1, $2, $3)`,
    [questionID, answer4, correct],
  );
  console.log(answer4Result);

  res.render('form-created', {
    title: 'Spurning búinn til',
    info: 'Allt gekk upp!',
  });

});

router.use((req, res) => {
  res.status(404).render('404', { title: 'Síða fannst ekki' });
});

router.use((err, req, res, next) => {
  console.error(err.stack); 

  const statusCode = err.status || 500;
  res.status(statusCode); 

  res.render('error', {
    title: 'Villa á vefþjóninum',
    message: err.message || 'Eitthvað fór úrskeiðis!',
    status: statusCode, 
  });
});

