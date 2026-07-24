--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(40) NOT NULL,
    galaxy_types character varying(40),
    distance_from_earth numeric(10,2),
    diameter numeric(10,2)
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
    name character varying(40) NOT NULL,
    moon_group text,
    planet_id integer,
    radius integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_info (
    moon_info_id integer NOT NULL,
    moon_type text NOT NULL,
    color character varying(20),
    moon_id integer,
    name character varying(30)
);


ALTER TABLE public.moon_info OWNER TO freecodecamp;

--
-- Name: moon_info_moon_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_info_moon_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_info_moon_info_id_seq OWNER TO freecodecamp;

--
-- Name: moon_info_moon_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_info_moon_info_id_seq OWNED BY public.moon_info.moon_info_id;


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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    planet_types text NOT NULL,
    star_id integer
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
    is_binary boolean,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    orbital_speed integer
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
-- Name: moon_info moon_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_info ALTER COLUMN moon_info_id SET DEFAULT nextval('public.moon_info_moon_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral (SBbc)', 0.00, 105.70);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral (SA)', 2.54, 220.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral (SA)', 2.73, 60.00);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic', 'Irregular (Irr)', 0.16, 14.00);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic', 'Irregular (Irr)', 0.19, 7.00);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Spiral (SA)', 29.00, 50.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 'Major', 6, 2634);
INSERT INTO public.moon VALUES (2, 'Titan', 'Major', 7, 2575);
INSERT INTO public.moon VALUES (3, 'Callisto', 'Major', 6, 2410);
INSERT INTO public.moon VALUES (4, 'Io', 'Major', 6, 1821);
INSERT INTO public.moon VALUES (5, 'The Moon', 'Major', 1, 1737);
INSERT INTO public.moon VALUES (6, 'Europa', 'Major', 6, 1561);
INSERT INTO public.moon VALUES (7, 'Triton', 'Major', 9, 1353);
INSERT INTO public.moon VALUES (8, 'Phobos', 'Asteroid', 2, 11);
INSERT INTO public.moon VALUES (9, 'Deimos', 'Asteroid', 2, 6);
INSERT INTO public.moon VALUES (10, 'Phoebe', 'Asteroid', 7, 107);
INSERT INTO public.moon VALUES (11, 'Himalia', 'Asteroid', 6, 70);
INSERT INTO public.moon VALUES (12, 'Nereid', 'Asteroid', 9, 170);
INSERT INTO public.moon VALUES (13, 'Dactyl', 'Asteroid', 10, 1);
INSERT INTO public.moon VALUES (14, 'Ariel', 'Major', 8, 579);
INSERT INTO public.moon VALUES (15, 'Titania', 'Major', 8, 788);
INSERT INTO public.moon VALUES (16, 'Charon', 'Major', 5, 606);
INSERT INTO public.moon VALUES (17, 'Nix', 'Major', 5, 25);
INSERT INTO public.moon VALUES (18, 'Larrisa', 'Major', 9, 97);
INSERT INTO public.moon VALUES (19, 'Proteus', 'Major', 9, 210);
INSERT INTO public.moon VALUES (20, 'Rhea', 'Major', 7, 764);


--
-- Data for Name: moon_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_info VALUES (1, 'Regular', 'Light Grey', 5, NULL);
INSERT INTO public.moon_info VALUES (2, 'Regular', 'Yellow', 4, NULL);
INSERT INTO public.moon_info VALUES (3, 'Regular', 'Ice White', 6, NULL);
INSERT INTO public.moon_info VALUES (4, 'Regular', 'Orange', 2, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'Terrestial', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 'Terrestial', 1);
INSERT INTO public.planet VALUES (3, 'Mercury', false, 'Terrestial', 1);
INSERT INTO public.planet VALUES (4, 'Venus', false, 'Terrestial', 1);
INSERT INTO public.planet VALUES (5, 'Pluto', false, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (7, 'Saturn', false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (8, 'Uranus', false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (9, 'Neptune', false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (10, '55 Cancri', false, 'Lava World', 4);
INSERT INTO public.planet VALUES (11, 'K2_18b', false, 'Hycean World', 6);
INSERT INTO public.planet VALUES (12, 'Kepler_22b', false, 'Ocean World', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, false, 1, 'Sun', 220);
INSERT INTO public.star VALUES (2, true, 4, 'Melnick 34', 135);
INSERT INTO public.star VALUES (3, true, 2, 'S Andromrdae', 200);
INSERT INTO public.star VALUES (4, false, 6, 'The Bulge', 240);
INSERT INTO public.star VALUES (5, false, 3, 'Romanos Star', 120);
INSERT INTO public.star VALUES (6, true, 1, 'Sirius', 10);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_info_moon_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_info_moon_info_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon_info moon_info_moon_info_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_info
    ADD CONSTRAINT moon_info_moon_info_id_key UNIQUE (moon_info_id);


--
-- Name: moon_info moon_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_info
    ADD CONSTRAINT moon_info_pkey PRIMARY KEY (moon_info_id);


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
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon_info moon_info_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_info
    ADD CONSTRAINT moon_info_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

