--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 14.17 (Ubuntu 14.17-0ubuntu0.22.04.1)

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

--
-- Name: staging; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA staging;


ALTER SCHEMA staging OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: softcartDimCategory; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging."softcartDimCategory" (
    category_id integer NOT NULL,
    category_name character varying
);


ALTER TABLE staging."softcartDimCategory" OWNER TO postgres;

--
-- Name: softcartDimCountry; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging."softcartDimCountry" (
    country_id integer NOT NULL,
    country_name character varying
);


ALTER TABLE staging."softcartDimCountry" OWNER TO postgres;

--
-- Name: softcartDimDate; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging."softcartDimDate" (
    date_id integer NOT NULL,
    date date,
    day integer,
    day_name character varying(15),
    weekday integer,
    weekofyaer integer,
    month integer,
    month_name character varying(15),
    quarter integer,
    year integer
);


ALTER TABLE staging."softcartDimDate" OWNER TO postgres;

--
-- Name: softcartDimItem; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging."softcartDimItem" (
    item_id integer NOT NULL,
    item_name character varying(250),
    category_id integer,
    price numeric(9,2)
);


ALTER TABLE staging."softcartDimItem" OWNER TO postgres;

--
-- Name: softcartFactSales; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging."softcartFactSales" (
    order_id integer NOT NULL,
    item_id integer,
    country_id integer,
    date_id integer
);


ALTER TABLE staging."softcartFactSales" OWNER TO postgres;

--
-- Data for Name: softcartDimCategory; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging."softcartDimCategory" (category_id, category_name) FROM stdin;
\.


--
-- Data for Name: softcartDimCountry; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging."softcartDimCountry" (country_id, country_name) FROM stdin;
\.


--
-- Data for Name: softcartDimDate; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging."softcartDimDate" (date_id, date, day, day_name, weekday, weekofyaer, month, month_name, quarter, year) FROM stdin;
\.


--
-- Data for Name: softcartDimItem; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging."softcartDimItem" (item_id, item_name, category_id, price) FROM stdin;
\.


--
-- Data for Name: softcartFactSales; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging."softcartFactSales" (order_id, item_id, country_id, date_id) FROM stdin;
\.


--
-- Name: softcartDimCategory softcartDimCategory_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging."softcartDimCategory"
    ADD CONSTRAINT "softcartDimCategory_pkey" PRIMARY KEY (category_id);


--
-- Name: softcartDimCountry softcartDimCountry_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging."softcartDimCountry"
    ADD CONSTRAINT "softcartDimCountry_pkey" PRIMARY KEY (country_id);


--
-- Name: softcartDimDate softcartDimDate_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging."softcartDimDate"
    ADD CONSTRAINT "softcartDimDate_pkey" PRIMARY KEY (date_id);


--
-- Name: softcartDimItem softcartDimItem_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging."softcartDimItem"
    ADD CONSTRAINT "softcartDimItem_pkey" PRIMARY KEY (item_id);


--
-- Name: softcartFactSales softcartFactSales_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging."softcartFactSales"
    ADD CONSTRAINT "softcartFactSales_pkey" PRIMARY KEY (order_id);


--
-- Name: softcartDimItem softcartDimItem_category_id_fkey; Type: FK CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging."softcartDimItem"
    ADD CONSTRAINT "softcartDimItem_category_id_fkey" FOREIGN KEY (category_id) REFERENCES staging."softcartDimCategory"(category_id) NOT VALID;


--
-- Name: softcartFactSales softcartFactSales_country_id_fkey; Type: FK CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging."softcartFactSales"
    ADD CONSTRAINT "softcartFactSales_country_id_fkey" FOREIGN KEY (country_id) REFERENCES staging."softcartDimCountry"(country_id) NOT VALID;


--
-- Name: softcartFactSales softcartFactSales_date_id_fkey; Type: FK CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging."softcartFactSales"
    ADD CONSTRAINT "softcartFactSales_date_id_fkey" FOREIGN KEY (date_id) REFERENCES staging."softcartDimDate"(date_id) NOT VALID;


--
-- Name: softcartFactSales softcartFactSales_item_id_fkey; Type: FK CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging."softcartFactSales"
    ADD CONSTRAINT "softcartFactSales_item_id_fkey" FOREIGN KEY (item_id) REFERENCES staging."softcartDimItem"(item_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

