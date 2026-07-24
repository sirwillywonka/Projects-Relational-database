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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    galaxy_type character varying(30) NOT NULL,
    distance_from_earth numeric(10,2),
    constellator text
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
    name character varying(30) NOT NULL,
    moon_group character varying(30),
    radius integer,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_type character varying(30),
    orbital_period_days numeric(10,2),
    star_id integer,
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
    name character varying(30) NOT NULL,
    velocity_km_s integer,
    color character varying(30),
    galaxy_id integer,
    is_binary boolean
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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'Galaxy', 'massive');
INSERT INTO public.description VALUES (2, 'Star', 'luminous');
INSERT INTO public.description VALUES (3, 'Planet', 'sperical');
INSERT INTO public.description VALUES (4, 'Moon', 'astronomical');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral (SB)', 0.00, 'Sagittarius');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral (SA)', 2.50, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral (SA)', 2.70, 'Triangulum');
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'Spiral (SA)', 28.00, 'Virgo');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic', 'Irregular (Irr)', 0.16, 'Dorado');
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic', 'Irregular (Irr)', 0.20, 'Tucana');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymade', 'Major', 2634, 6);
INSERT INTO public.moon VALUES (2, 'Titan', 'Major', 2575, 5);
INSERT INTO public.moon VALUES (3, 'Callisto', 'Major', 2410, 6);
INSERT INTO public.moon VALUES (4, 'Io', 'Major', 1821, 6);
INSERT INTO public.moon VALUES (5, 'The Moon', 'Major', 1737, 1);
INSERT INTO public.moon VALUES (6, 'Europa', 'Major', 1561, 6);
INSERT INTO public.moon VALUES (7, 'Triton', 'Major', 1353, 8);
INSERT INTO public.moon VALUES (8, 'Phobos', 'Asteroid', 41, 2);
INSERT INTO public.moon VALUES (9, 'Deimos', 'Asteroid', 6, 2);
INSERT INTO public.moon VALUES (10, 'Phoebe', 'Asteroid', 107, 5);
INSERT INTO public.moon VALUES (11, 'Himalia', 'Asteroid', 70, 6);
INSERT INTO public.moon VALUES (12, 'Nereid', 'Asteroid', 170, 8);
INSERT INTO public.moon VALUES (13, 'Dactyl', 'Asteroid', 1, 10);
INSERT INTO public.moon VALUES (14, 'Charon', 'Major', 606, 9);
INSERT INTO public.moon VALUES (15, 'Nix', 'Major', 25, 9);
INSERT INTO public.moon VALUES (16, 'Rhea', 'Major', 764, 5);
INSERT INTO public.moon VALUES (17, 'Titania', 'Major', 788, 7);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Major', 579, 7);
INSERT INTO public.moon VALUES (19, 'Larrisa', 'Major', 97, 8);
INSERT INTO public.moon VALUES (20, 'Proteus', 'Major', 210, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestial', 365.25, 1, true);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestial', 686.98, 1, false);
INSERT INTO public.planet VALUES (3, 'Mercury', 'Terrestial', 87.97, 1, false);
INSERT INTO public.planet VALUES (4, 'Venus', 'Terrestial', 224.70, 1, false);
INSERT INTO public.planet VALUES (5, 'Saturn', 'Gas Giant', 10759.22, 1, false);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'Gas Giant', 4332.59, 1, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 30688.50, 1, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 60182.00, 1, false);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf planet', 90560.00, 1, false);
INSERT INTO public.planet VALUES (10, 'Haumea', 'Dwarf planet', 103468.00, 1, false);
INSERT INTO public.planet VALUES (11, 'Eris', 'Dwarf planet', 203600.00, 1, false);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Dwarf planet', 112022.00, 1, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 220, 'Yellow', 1, false);
INSERT INTO public.star VALUES (2, 'Sirius', 10, 'White', 1, true);
INSERT INTO public.star VALUES (3, 'S Andromedae', 200, 'Orange-red', 2, true);
INSERT INTO public.star VALUES (4, 'The Bulge', 240, 'Yellowish-orange', 4, false);
INSERT INTO public.star VALUES (5, 'Melnick 34', 135, 'Blue', 5, true);
INSERT INTO public.star VALUES (6, 'Vega', 17, 'Light Blue', 1, false);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


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

