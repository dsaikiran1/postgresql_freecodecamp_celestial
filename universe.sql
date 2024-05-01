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
    name character varying(30),
    description text,
    galaxy_types integer,
    size integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_years numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    is_spherical boolean NOT NULL,
    size integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: ocean; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ocean (
    ocean_id integer NOT NULL,
    type integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL
);


ALTER TABLE public.ocean OWNER TO freecodecamp;

--
-- Name: ocean_ocean_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ocean_ocean_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ocean_ocean_id_seq OWNER TO freecodecamp;

--
-- Name: ocean_ocean_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ocean_ocean_id_seq OWNED BY public.ocean.ocean_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer,
    size integer NOT NULL,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer,
    is_spherical boolean NOT NULL,
    size integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: ocean ocean_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ocean ALTER COLUMN ocean_id SET DEFAULT nextval('public.ocean_ocean_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'Its all white', 1, 1000, true, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'milky way', 'Its all white', 2, 1300, false, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'milky way', 'Its all white', 3, 1300, false, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'milky way', 'Its all white', 2, 1300, false, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'milky way', 'Its all white', 3, 1300, false, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'milky way', 'Its all white', 2, 1300, false, true, NULL);
INSERT INTO public.galaxy VALUES (7, 'milky way', 'Its all white', 3, 1300, false, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 1, true, 1000);
INSERT INTO public.moon VALUES (2, 'B', 1, true, 1566);
INSERT INTO public.moon VALUES (3, 'B', 1, true, 1678);
INSERT INTO public.moon VALUES (4, 'B', 1, true, 1456);
INSERT INTO public.moon VALUES (5, 'B', 1, true, 7830);
INSERT INTO public.moon VALUES (6, 'B', 1, true, 7800);
INSERT INTO public.moon VALUES (7, 'B', 1, true, 1560);
INSERT INTO public.moon VALUES (8, 'B', 1, true, 1670);
INSERT INTO public.moon VALUES (9, 'B', 1, true, 1700);
INSERT INTO public.moon VALUES (10, 'B', 1, true, 1206);
INSERT INTO public.moon VALUES (11, 'B', 1, true, 1450);
INSERT INTO public.moon VALUES (12, 'B', 1, true, 1400);
INSERT INTO public.moon VALUES (13, 'B', 1, true, 1220);
INSERT INTO public.moon VALUES (14, 'B', 1, true, 6566);
INSERT INTO public.moon VALUES (15, 'B', 1, true, 4678);
INSERT INTO public.moon VALUES (16, 'B', 1, true, 1434);
INSERT INTO public.moon VALUES (17, 'B', 1, true, 7930);
INSERT INTO public.moon VALUES (18, 'B', 1, true, 7807);
INSERT INTO public.moon VALUES (19, 'B', 1, true, 5560);
INSERT INTO public.moon VALUES (20, 'B', 1, true, 1234);
INSERT INTO public.moon VALUES (21, 'B', 1, true, 3456);
INSERT INTO public.moon VALUES (22, 'B', 1, true, 1245);
INSERT INTO public.moon VALUES (23, 'B', 1, false, 1350);
INSERT INTO public.moon VALUES (24, 'B', 1, true, 6740);
INSERT INTO public.moon VALUES (25, 'B', 1, false, 4220);


--
-- Data for Name: ocean; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ocean VALUES (1, 1, 'pacific', 'Its blue', true);
INSERT INTO public.ocean VALUES (2, 1, 'atlantic', 'Its blue', true);
INSERT INTO public.ocean VALUES (3, 2, 'arctic', 'Its blue', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A', 1, 1000, false);
INSERT INTO public.planet VALUES (2, 'B', 1, 1200, false);
INSERT INTO public.planet VALUES (4, 'D', 1, 1400, false);
INSERT INTO public.planet VALUES (6, 'F', 2, 1202, false);
INSERT INTO public.planet VALUES (7, 'I', 1, 2000, false);
INSERT INTO public.planet VALUES (8, 'J', 1, 1300, false);
INSERT INTO public.planet VALUES (9, 'K', 1, 1600, false);
INSERT INTO public.planet VALUES (10, 'L', 1, 3400, false);
INSERT INTO public.planet VALUES (11, 'M', 2, 2600, false);
INSERT INTO public.planet VALUES (3, 'C', 1, 1300, false);
INSERT INTO public.planet VALUES (5, 'E', 2, 1600, false);
INSERT INTO public.planet VALUES (12, 'N', 2, 5202, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A', 1, true, 1000);
INSERT INTO public.star VALUES (2, 'B', 1, false, 1200);
INSERT INTO public.star VALUES (3, 'C', 1, true, 1500);
INSERT INTO public.star VALUES (4, 'D', 1, true, 1500);
INSERT INTO public.star VALUES (5, 'E', 1, false, 1700);
INSERT INTO public.star VALUES (6, 'F', 1, true, 4000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: ocean_ocean_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ocean_ocean_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: ocean name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ocean
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: ocean ocean_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ocean
    ADD CONSTRAINT ocean_pkey PRIMARY KEY (ocean_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: moon size; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT size UNIQUE (size);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

