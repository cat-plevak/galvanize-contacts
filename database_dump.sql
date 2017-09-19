--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: User; Type: TABLE; Schema: public; Owner: catherineplevak
--

CREATE TABLE "User" (
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    date_of_birth date,
    biography character varying
);


ALTER TABLE "User" OWNER TO catherineplevak;

--
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: catherineplevak
--

CREATE SEQUENCE "User_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "User_id_seq" OWNER TO catherineplevak;

--
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: catherineplevak
--

ALTER SEQUENCE "User_id_seq" OWNED BY "User".id;


--
-- Name: contact; Type: TABLE; Schema: public; Owner: catherineplevak
--

CREATE TABLE contact (
    id integer NOT NULL,
    type character varying,
    value character varying,
    user_id integer
);


ALTER TABLE contact OWNER TO catherineplevak;

--
-- Name: contact_id_seq; Type: SEQUENCE; Schema: public; Owner: catherineplevak
--

CREATE SEQUENCE contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE contact_id_seq OWNER TO catherineplevak;

--
-- Name: contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: catherineplevak
--

ALTER SEQUENCE contact_id_seq OWNED BY contact.id;


--
-- Name: User id; Type: DEFAULT; Schema: public; Owner: catherineplevak
--

ALTER TABLE ONLY "User" ALTER COLUMN id SET DEFAULT nextval('"User_id_seq"'::regclass);


--
-- Name: contact id; Type: DEFAULT; Schema: public; Owner: catherineplevak
--

ALTER TABLE ONLY contact ALTER COLUMN id SET DEFAULT nextval('contact_id_seq'::regclass);


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: catherineplevak
--

COPY "User" (id, first_name, last_name, date_of_birth, biography) FROM stdin;
1	Kyle	Coberly	1961-02-18	Web app developer, business dork, amateur economist.
2	CJ	Reynolds	2031-04-18	Does the man have the moustache, or does the moustache have the man?
3	Danny	Fritz	1805-09-15	Definitely a human instructor, not a robot.
4	Roberto	Ortega	2015-10-07	Llamas age faster than people.
\.


--
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: catherineplevak
--

SELECT pg_catalog.setval('"User_id_seq"', 4, true);


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: catherineplevak
--

COPY contact (id, type, value, user_id) FROM stdin;
1	email	kyle.coberly@urmom.com	1
2	email	cj.reynolds@gambleize.com	2
3	email	danny.fritz@galvanize.com	3
4	email	roberto.ortega@galvanize.com	4
5	mobile phone	911	4
6	home phone	0	3
\.


--
-- Name: contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: catherineplevak
--

SELECT pg_catalog.setval('contact_id_seq', 6, true);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: catherineplevak
--

ALTER TABLE ONLY "User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: catherineplevak
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- Name: contact contact_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: catherineplevak
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT contact_user_id_fkey FOREIGN KEY (user_id) REFERENCES "User"(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
