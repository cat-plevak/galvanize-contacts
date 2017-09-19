createdb galvanize_contacts;
CREATE ROLE galvanize_admin WITH LOGIN PASSWORD 'galvanize_P@$$w0rd';
ALTER ROLE galvanize_admin WITH LOGIN;
REVOKE ALL PRIVILEGES ON DATABASE galvanize_contacts FROM public;
GRANT ALL PRIVILEGES ON DATABASE galvanize_contacts TO public;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL tables IN SCHEMA public TO galvanize_admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO galvanize_admin;



--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE catherineplevak;
ALTER ROLE catherineplevak WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;
CREATE ROLE galvanize_admin;
ALTER ROLE galvanize_admin WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'galvanize_P@$$w0rd';




--
-- PostgreSQL database cluster dump complete
--
