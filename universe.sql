--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_ref text NOT NULL,
    sun_count numeric,
    human boolean,
    water boolean,
    age integer,
    name character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: human; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.human (
    human_id integer NOT NULL,
    name character varying NOT NULL,
    age integer,
    planet_ref character varying,
    country text
);


ALTER TABLE public.human OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_ref text,
    color text,
    age integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_ref text NOT NULL,
    distance_sun numeric,
    in_ss boolean,
    color text,
    age integer,
    star_ref text,
    name character varying
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_ref text NOT NULL,
    galaxy_ref text,
    color text,
    age integer,
    name character varying
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via lactea', NULL, true, true, 1000000000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 4, false, true, 2000000000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Kripton', 2, false, true, 2000000000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Arcane', 17, false, false, 700000000, NULL);
INSERT INTO public.galaxy VALUES (5, 'Vazio', 0, false, false, 999999999, NULL);
INSERT INTO public.galaxy VALUES (6, 'Homeless', 8, true, true, 350000000, NULL);


--
-- Data for Name: human; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.human VALUES (1, 'Rian', NULL, NULL, NULL);
INSERT INTO public.human VALUES (2, 'Kaio', NULL, NULL, NULL);
INSERT INTO public.human VALUES (3, 'Riaspi', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 'Earth', NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Marroco', 'Mart', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Slaa', 'Maverick', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Rotan', 'Mascote', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Sat', 'Saturno', NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Hakmito', 'Hakmito', NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Laravel', 'Earth', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Venus', 'Earth', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Kakashi', 'Ymir', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Marquesa', 'Mart', NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Molu', 'Mart', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Indico', 'Histhas', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Polimorfisticaris', 'Arcadian', NULL, NULL);
INSERT INTO public.moon VALUES (14, 'XX432', 'Arcadian', NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Gigori', 'Arcadian', NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Boru', 'Arcadian', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Trestous', 'Polimester', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Sabua', 'Sovic', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Sovif', 'Sovic', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Ymir', 'Ymir', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 3, true, NULL, NULL, 'Sun', NULL);
INSERT INTO public.planet VALUES (2, 'Mart', 4, true, NULL, NULL, 'Sun', NULL);
INSERT INTO public.planet VALUES (3, 'Histhas', 78, false, NULL, NULL, 'Black sun', NULL);
INSERT INTO public.planet VALUES (4, 'Mascote', 0, false, NULL, NULL, 'Amaterasu', NULL);
INSERT INTO public.planet VALUES (5, 'Saturno', 0, true, NULL, NULL, 'Sun', NULL);
INSERT INTO public.planet VALUES (6, 'Maverick', 0, false, NULL, NULL, 'Amaterasu', NULL);
INSERT INTO public.planet VALUES (7, 'Rasbro', 0, false, NULL, NULL, 'Black sun', NULL);
INSERT INTO public.planet VALUES (8, 'Ymir', 0, false, NULL, NULL, 'The oasis', NULL);
INSERT INTO public.planet VALUES (9, 'Arcadian', 0, false, NULL, NULL, 'The oasis', NULL);
INSERT INTO public.planet VALUES (10, 'Sovic', 0, false, NULL, NULL, 'Seminova', NULL);
INSERT INTO public.planet VALUES (11, 'Hakmito', 0, false, NULL, NULL, 'Cammandial', NULL);
INSERT INTO public.planet VALUES (12, 'Polimester', 0, false, NULL, NULL, 'Amaterasu', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'Sun', 'via lactea', 'Orange', 1000000000, NULL);
INSERT INTO public.star VALUES (1, 'Amaterasu', 'Arcane', 'Red', 2000000000, NULL);
INSERT INTO public.star VALUES (2, 'Black sun', 'Vazio', 'None', 0, NULL);
INSERT INTO public.star VALUES (3, 'The oasis', 'Kripton', 'Yellow', 0, NULL);
INSERT INTO public.star VALUES (4, 'Cammandial', 'Arcane', 'Yellow', 0, NULL);
INSERT INTO public.star VALUES (5, 'Seminova', 'Andromeda', 'Blue', 0, NULL);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_ref);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: human human_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_name_key UNIQUE (name);


--
-- Name: human human_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_pkey PRIMARY KEY (human_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (planet_ref);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (planet_ref);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (star_ref);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_ref_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_ref_fkey FOREIGN KEY (planet_ref) REFERENCES public.planet(planet_ref);


--
-- Name: star star_galaxy_ref_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_ref_fkey FOREIGN KEY (galaxy_ref) REFERENCES public.galaxy(galaxy_ref);


--
-- Name: planet star_ref; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_ref FOREIGN KEY (star_ref) REFERENCES public.star(star_ref);


--
-- PostgreSQL database dump complete
--

