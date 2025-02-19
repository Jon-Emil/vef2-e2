CREATE TABLE public.categories (
    id serial primary key,
    name character varying(64) NOT NULL UNIQUE
);

CREATE TABLE public.questions (
    id serial primary key,
    categoryName character varying(64) NOT NULL REFERENCES categories(name),
    content character varying(512) NOT NULL UNIQUE
);

CREATE TABLE public.answers (
    id serial primary key,
    questionID int NOT NULL REFERENCES questions(id),
    content character varying(256) NOT NULL,
    correct boolean DEFAULT false
);