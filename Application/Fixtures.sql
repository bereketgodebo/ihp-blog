

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('62680e65-010d-4ab8-b601-6eb885d89f07', 'First Post', 'Hello world from Haskell', '2021-12-07 17:02:31.293248+03');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('18ef935d-9671-4bc0-a1b8-e56889cc745a', 'Second Post', 'Hello world from Haskell web development', '2021-12-07 17:03:21.568621+03');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('a5aea3fa-e9d3-41e2-830e-a3b674dd0dfb', 'Third Post', 'Haskell Web development is Awesom', '2021-12-07 17:18:46.855356+03');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('288f9823-386b-4a43-bc75-a0720cbad616', 'Fourth Post', '4th post', '2021-12-07 18:46:23.877886+03');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('88a00823-59ab-4889-8976-39b851e3fd23', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2021-12-07 19:34:21.176975+03');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('2666211c-d7ae-464a-9364-28d125cfd98e', 'Markdown', '### Hello from markdown', '2021-12-07 21:56:06.84728+03');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, author, body, post_id) VALUES ('b485dc5c-7dcb-4384-a86c-3bcb23b32481', 'bh', 'the body type should change', '62680e65-010d-4ab8-b601-6eb885d89f07');
INSERT INTO public.comments (id, author, body, post_id) VALUES ('00800e76-d9c4-4138-8747-3723ab57fa3f', 'bk', 'comment1', '62680e65-010d-4ab8-b601-6eb885d89f07');
INSERT INTO public.comments (id, author, body, post_id) VALUES ('b4143d2a-e012-4d27-948d-da510e30e442', 'bersu', 'change body type', '18ef935d-9671-4bc0-a1b8-e56889cc745a');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


