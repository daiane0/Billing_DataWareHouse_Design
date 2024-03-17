--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: DimCustomer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DimCustomer" (
    customer_id integer NOT NULL,
    category "char" NOT NULL,
    country "char" NOT NULL,
    industry "char" NOT NULL
);


ALTER TABLE public."DimCustomer" OWNER TO postgres;

--
-- Name: DimMonth; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DimMonth" (
    month_id integer NOT NULL,
    year integer NOT NULL,
    month integer NOT NULL,
    monthname "char" NOT NULL,
    quarter integer NOT NULL,
    quartername "char" NOT NULL
);


ALTER TABLE public."DimMonth" OWNER TO postgres;

--
-- Name: FactBilling; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FactBilling" (
    row_id integer NOT NULL,
    customer_id integer NOT NULL,
    month_id integer NOT NULL,
    billedamount integer NOT NULL
);


ALTER TABLE public."FactBilling" OWNER TO postgres;

--
-- Data for Name: DimCustomer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DimCustomer" (customer_id, category, country, industry) FROM stdin;
\.


--
-- Data for Name: DimMonth; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DimMonth" (month_id, year, month, monthname, quarter, quartername) FROM stdin;
\.


--
-- Data for Name: FactBilling; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."FactBilling" (row_id, customer_id, month_id, billedamount) FROM stdin;
\.


--
-- Name: DimCustomer DimCustomer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DimCustomer"
    ADD CONSTRAINT "DimCustomer_pkey" PRIMARY KEY (customer_id);


--
-- Name: DimMonth DimMonth_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DimMonth"
    ADD CONSTRAINT "DimMonth_pkey" PRIMARY KEY (month_id);


--
-- Name: FactBilling FactBilling_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FactBilling"
    ADD CONSTRAINT "FactBilling_pkey" PRIMARY KEY (row_id);


--
-- Name: FactBilling FactBilling_month_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FactBilling"
    ADD CONSTRAINT "FactBilling_month_id_fkey" FOREIGN KEY (month_id) REFERENCES public."DimMonth"(month_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

