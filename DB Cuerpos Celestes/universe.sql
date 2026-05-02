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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    speed_kms integer NOT NULL,
    tail_length_km integer NOT NULL,
    mass_index numeric(12,2) NOT NULL,
    description text,
    is_periodic boolean NOT NULL,
    is_visible boolean NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_million_years integer NOT NULL,
    discovered_year integer NOT NULL,
    mass_index numeric(12,2) NOT NULL,
    description text,
    has_black_hole boolean NOT NULL,
    is_spiral boolean NOT NULL
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
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    diameter_km integer NOT NULL,
    orbital_days integer NOT NULL,
    mass_index numeric(12,2) NOT NULL,
    description text,
    has_atmosphere boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    diameter_km integer NOT NULL,
    orbital_order integer NOT NULL,
    mass_index numeric(12,2) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    temperature_kelvin integer NOT NULL,
    age_million_years integer NOT NULL,
    mass_index numeric(12,2) NOT NULL,
    description text,
    is_visible boolean NOT NULL,
    has_planets boolean NOT NULL
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 1, 70, 24000, 15.50, 'Famous periodic comet', true, true);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', 1, 44, 30000, 22.80, 'Very bright comet observed in the 1990s', true, true);
INSERT INTO public.comet VALUES (3, 'Andromeda Flash', 2, 120, 50000, 35.10, 'Fictional comet recorded in Andromeda data', false, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 1610, 1500.50, 'Our home galaxy', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 964, 2000.75, 'Nearest major galaxy to the Milky Way', true, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12000, 1764, 950.40, 'A spiral galaxy in the Local Group', false, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 8000, 1773, 1100.30, 'A well known interacting grand-design spiral galaxy', true, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 9000, 1781, 1300.20, 'Galaxy with a bright nucleus and large central bulge', true, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 13000, 1781, 2500.90, 'A supergiant elliptical galaxy', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 3474, 27, 0.07, 'Earth natural satellite', false, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 22, 0, 0.00, 'Largest moon of Mars', false, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 12, 1, 0.00, 'Smaller moon of Mars', false, false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 3643, 2, 0.09, 'Volcanically active moon of Jupiter', false, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3122, 4, 0.05, 'Icy moon of Jupiter', true, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5268, 7, 0.15, 'Largest moon in the solar system', true, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 4821, 17, 0.11, 'Heavily cratered moon of Jupiter', false, true);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 5150, 16, 0.13, 'Largest moon of Saturn', true, true);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 1528, 5, 0.02, 'Moon of Saturn', false, true);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 1469, 79, 0.02, 'Two-toned moon of Saturn', false, true);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 1123, 3, 0.01, 'Icy moon of Saturn', false, true);
INSERT INTO public.moon VALUES (12, 'Tethys', 6, 1062, 2, 0.01, 'Mid-sized moon of Saturn', false, true);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, 504, 1, 0.00, 'Moon with water ice geysers', true, true);
INSERT INTO public.moon VALUES (14, 'Mimas', 6, 396, 1, 0.00, 'Small moon of Saturn', false, true);
INSERT INTO public.moon VALUES (15, 'Centauri b I', 7, 2100, 8, 0.03, 'Fictional moon of Centauri b', false, true);
INSERT INTO public.moon VALUES (16, 'Centauri b II', 7, 1700, 14, 0.02, 'Second fictional moon of Centauri b', true, true);
INSERT INTO public.moon VALUES (17, 'Centauri c I', 8, 2400, 11, 0.04, 'Fictional moon of Centauri c', false, true);
INSERT INTO public.moon VALUES (18, 'Sirius One Alpha', 9, 3000, 20, 0.05, 'Fictional moon orbiting Sirius One', true, true);
INSERT INTO public.moon VALUES (19, 'Andromeda Terra Luna', 10, 3500, 29, 0.06, 'Fictional moon orbiting Andromeda Terra', true, true);
INSERT INTO public.moon VALUES (20, 'Triangulum X Core', 11, 4100, 33, 0.07, 'Fictional moon orbiting Triangulum X', false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4879, 1, 0.33, 'Smallest planet in the solar system', false, true);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 12104, 2, 4.87, 'Second planet from the Sun', false, true);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 12742, 3, 5.97, 'Our home planet', true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 6779, 4, 0.64, 'Known as the red planet', false, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 139820, 5, 1898.00, 'Largest planet in the solar system', false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 116460, 6, 568.00, 'Known for its ring system', false, true);
INSERT INTO public.planet VALUES (7, 'Centauri b', 2, 14300, 1, 1.27, 'Exoplanet orbiting Proxima Centauri', false, true);
INSERT INTO public.planet VALUES (8, 'Centauri c', 2, 17000, 2, 2.10, 'Candidate exoplanet orbiting Proxima Centauri', false, true);
INSERT INTO public.planet VALUES (9, 'Sirius One', 3, 9000, 1, 3.45, 'Fictional planet around Sirius', false, true);
INSERT INTO public.planet VALUES (10, 'Andromeda Terra', 4, 15000, 1, 6.70, 'Fictional habitable style planet', false, true);
INSERT INTO public.planet VALUES (11, 'Triangulum X', 5, 22000, 1, 9.40, 'Large fictional gas world', false, true);
INSERT INTO public.planet VALUES (12, 'Whirlpool Minor', 6, 7600, 1, 0.88, 'Rocky fictional planet', false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 5778, 4600, 1.00, 'The star at the center of our solar system', true, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 3042, 4500, 0.12, 'Closest known star to the Sun', true, true);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 9940, 242, 2.02, 'Brightest star in Earth night sky', true, true);
INSERT INTO public.star VALUES (4, 'Alpha Andromedae', 2, 13800, 60, 3.80, 'A bright star in Andromeda galaxy records', true, false);
INSERT INTO public.star VALUES (5, 'Triangulum Prime', 3, 6200, 5100, 1.40, 'Fictional star for project data', false, true);
INSERT INTO public.star VALUES (6, 'Whirlpool Beacon', 4, 7100, 3200, 1.90, 'Fictional star associated with Whirlpool galaxy', false, true);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


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
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

