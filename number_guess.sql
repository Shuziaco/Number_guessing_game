--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: userinfo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.userinfo (
    id integer NOT NULL,
    username character varying(22),
    game_played integer,
    best_game integer
);


ALTER TABLE public.userinfo OWNER TO freecodecamp;

--
-- Name: userinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.userinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userinfo_id_seq OWNER TO freecodecamp;

--
-- Name: userinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.userinfo_id_seq OWNED BY public.userinfo.id;


--
-- Name: userinfo id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.userinfo ALTER COLUMN id SET DEFAULT nextval('public.userinfo_id_seq'::regclass);


--
-- Data for Name: userinfo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.userinfo VALUES (2, 'user_1741364702859', 2, 140);
INSERT INTO public.userinfo VALUES (1, 'user_1741364702860', 5, 117);
INSERT INTO public.userinfo VALUES (19, 'user_1741366055901', 1, 185);
INSERT INTO public.userinfo VALUES (4, 'user_1741364829096', 2, 151);
INSERT INTO public.userinfo VALUES (3, 'user_1741364829097', 5, 342);
INSERT INTO public.userinfo VALUES (18, 'user_1741366055902', 1, 294);
INSERT INTO public.userinfo VALUES (6, 'user_1741364927383', 2, 475);
INSERT INTO public.userinfo VALUES (11, 'Shivam', 1, 6);
INSERT INTO public.userinfo VALUES (5, 'user_1741364927384', 5, 173);
INSERT INTO public.userinfo VALUES (8, 'user_1741365086788', 2, 68);
INSERT INTO public.userinfo VALUES (21, 'user_1741366367354', 1, 139);
INSERT INTO public.userinfo VALUES (7, 'user_1741365086789', 5, 227);
INSERT INTO public.userinfo VALUES (10, 'user_1741365154743', 2, 429);
INSERT INTO public.userinfo VALUES (20, 'user_1741366367355', 1, 80);
INSERT INTO public.userinfo VALUES (22, 'user_1741366961855', 2, 385);
INSERT INTO public.userinfo VALUES (9, 'user_1741365154744', 5, 32);
INSERT INTO public.userinfo VALUES (24, 'user_1741366961854', 2, 612);
INSERT INTO public.userinfo VALUES (13, 'user_1741365692771', 2, 445);
INSERT INTO public.userinfo VALUES (29, 'user_1741367117703', 1, 209);
INSERT INTO public.userinfo VALUES (12, 'user_1741365692772', 5, 158);
INSERT INTO public.userinfo VALUES (31, 'user_1741367117702', 1, 527);
INSERT INTO public.userinfo VALUES (15, 'user_1741365921232', 2, 154);
INSERT INTO public.userinfo VALUES (14, 'user_1741365921233', 5, 210);
INSERT INTO public.userinfo VALUES (17, 'user_1741365981780', 2, 144);
INSERT INTO public.userinfo VALUES (16, 'user_1741365981781', 5, 9);


--
-- Name: userinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.userinfo_id_seq', 37, true);


--
-- Name: userinfo userinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.userinfo
    ADD CONSTRAINT userinfo_pkey PRIMARY KEY (id);


--
-- Name: userinfo userinfo_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.userinfo
    ADD CONSTRAINT userinfo_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

