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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    sr_no integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: black_hole_sr_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_sr_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_sr_no_seq OWNER TO freecodecamp;

--
-- Name: black_hole_sr_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_sr_no_seq OWNED BY public.black_hole.sr_no;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    constellation character varying(255),
    discription text,
    age_in_billion_year numeric(10,2),
    distance_in_light_years integer,
    sr_no integer NOT NULL
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
-- Name: galaxy_sr_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_sr_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_sr_no_seq OWNER TO freecodecamp;

--
-- Name: galaxy_sr_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_sr_no_seq OWNED BY public.galaxy.sr_no;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    age_in_year numeric(10,0),
    has_life boolean NOT NULL,
    sr_no integer NOT NULL
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
-- Name: moon_sr_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_sr_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_sr_no_seq OWNER TO freecodecamp;

--
-- Name: moon_sr_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_sr_no_seq OWNED BY public.moon.sr_no;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_type character varying(255),
    description character varying(255),
    age_in_years numeric(10,2),
    has_life boolean NOT NULL,
    sr_no integer NOT NULL
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
-- Name: planet_sr_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_sr_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_sr_no_seq OWNER TO freecodecamp;

--
-- Name: planet_sr_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_sr_no_seq OWNED BY public.planet.sr_no;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_type character varying(255),
    description character varying(255),
    age_in_billion_year numeric(10,2),
    distance_in_ligth_years integer,
    sr_no integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_sr_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_sr_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_sr_no_seq OWNER TO freecodecamp;

--
-- Name: star_sr_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_sr_no_seq OWNED BY public.star.sr_no;


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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: black_hole sr_no; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN sr_no SET DEFAULT nextval('public.black_hole_sr_no_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy sr_no; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN sr_no SET DEFAULT nextval('public.galaxy_sr_no_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon sr_no; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN sr_no SET DEFAULT nextval('public.moon_sr_no_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet sr_no; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN sr_no SET DEFAULT nextval('public.planet_sr_no_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star sr_no; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN sr_no SET DEFAULT nextval('public.star_sr_no_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', ' its is an super masive black hole located in center of milky way galaxy', 1);
INSERT INTO public.black_hole VALUES (2, 'Messier 31', ' its is an super masive black hole located in center of Andromeda galaxy', 2);
INSERT INTO public.black_hole VALUES (3, 'Messier 87', ' its is an super masive black hole  located in near center of  Milky way galaxy', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda galaxy', 'Andromeda', 'Andromeda is the closest big galaxy to Milky way and expected to collide with the Milky way', 11.00, 3, 1);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 'Corvus', 'appers is simmilar to an insects antennae', 45.00, 12, 2);
INSERT INTO public.galaxy VALUES (3, 'Backward galaxy', 'Centaures', 'it appears to rotate backwards as the tipps of the spiral', 1.00, 111, 3);
INSERT INTO public.galaxy VALUES (4, 'Black eye galaxy', 'Coma Berencies', 'It has a spectacular dark band of absorbing dust in front of galaxy', 0.00, 17, 4);
INSERT INTO public.galaxy VALUES (5, 'Butterfly Galaxies', 'Virgo', 'Looks like butterfly ', 60.00, 60, 5);
INSERT INTO public.galaxy VALUES (6, 'Milky way', 'Sagittrius', 'Te appearance from earth of the galaxy-a band of light', 13.61, 27, 6);
INSERT INTO public.galaxy VALUES (7, 'alpaha', 'JIRA', 'AAAAA', 5363.00, 37373, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', ' earth natural satellite and 4th largest moon in solar system', 5, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'small moons of mars its an astroid', 3, false, 2);
INSERT INTO public.moon VALUES (4, 'Deimos', 'small 2nd  moon of mars its an astroid', 3, false, 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', '  moon of jupiter its largest moon  larger than mercury and pluto it has magnetic feild', 4, false, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', '  moon of jupiter one of four galilean moon it comprised of equal parts rock and ice and geologicaly dead', 4, false, 6);
INSERT INTO public.moon VALUES (7, 'IO', '  moon of jupiter also one four galilean moon it is hottest moon in solar system ', 4, false, 7);
INSERT INTO public.moon VALUES (8, 'Europa', '  moon of jupiter is the samllest of the 4 large galiliean moon it is ice moon  ', 5, false, 8);
INSERT INTO public.moon VALUES (9, 'Amalthea', '  is small moon of jupiter  vary red , irregular-shaped moon', 0, false, 9);
INSERT INTO public.moon VALUES (10, 'Himalia', 'Himalia is the 6th largest moon of jupiter ', 0, false, 10);
INSERT INTO public.moon VALUES (12, 'Titan', 'it is an largest moon of planet saturn it is only moon in solar system to known as atossphere and bodies of liquid on its surface', 4, false, 12);
INSERT INTO public.moon VALUES (13, 'Rhea', 'Rhea is 2nd largest moon of planet saturn', 4, false, 13);
INSERT INTO public.moon VALUES (14, 'Lapetus', 'lapetus is the 3rd largest moon of planet saturn', 4, false, 14);
INSERT INTO public.moon VALUES (15, 'Dione', 'Dione is one of the moons of the planet saturn', 4, false, 15);
INSERT INTO public.moon VALUES (16, 'Tethys', 'Tethys is one of the moons of the planet saturn', 4, false, 16);
INSERT INTO public.moon VALUES (17, 'Titania', ' Titania is largest moons of the planet Uranus', 3, false, 17);
INSERT INTO public.moon VALUES (18, 'Oberon', ' Oberon is 2nd largest moons of the planet Uranus', 4, false, 18);
INSERT INTO public.moon VALUES (19, 'Umbriel', ' Umbriel is 3nd largest moons of the planet Uranus', 4, false, 19);
INSERT INTO public.moon VALUES (20, 'Ariel', '  Ariel is 4th largest moons of the planet Uranus', 4, false, 20);
INSERT INTO public.moon VALUES (21, 'Miranda', 'Miranda is 5th largest moons of the planet Uranus', 4, false, 21);
INSERT INTO public.moon VALUES (22, 'Triton', 'Triton is  largest moons of the planet Neptune', 4, false, 22);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', ' terrestial planet (rocky)', ' smallest planet in solar system and closest to  THE SUN ', 4.50, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', ' terrestial (rocky) planet', ' Second closest to THE SUN and The hottest planet of our solar system', 4.50, false, 2);
INSERT INTO public.planet VALUES (3, 'Earth', ' terrestial (rocky) planet', ' third planet from SUN and only planet which has life in solar system', 4.54, true, 3);
INSERT INTO public.planet VALUES (4, 'Mars', ' terrestial (rocky) planet', ' Fourth planet from SUN and seconf smallest planet after mercury  also called as RED PLANET', 4.60, false, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', ' Gas giant planet', ' Fifth planet from SUN and largest  planet in our solar system', 4.60, false, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', ' Gas giant planet', ' Sixth  planet from SUN and  second largest  planet in our solar system', 4.60, false, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', ' ICE  giant planet', ' Seventh  planet from SUN and  third largest  planet radius in our solar systemafter satrun', 4.50, false, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', ' ICE  giant planet', ' Eighth  planet from SUN and farthest known  our solar planetn', 4.50, false, 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 'drwaf planet', 'pluto is drawf planet in kepler belt', 4.50, false, 9);
INSERT INTO public.planet VALUES (10, 'Proxima b', 'Super-earth', 'it orbit habitable zone of star Red drawf star proxima centauri', 4.90, true, 10);
INSERT INTO public.planet VALUES (11, 'Gliese 667CC', 'Super-earth', 'it is 4.5 times massive than earth orbit around host star REd dwarf cooler than SUN', 4.90, true, 11);
INSERT INTO public.planet VALUES (12, 'Kepler-22B', 'Super-earth', 'it was 1st keplar planet found in the habitable zone of its parent star', 5.90, true, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 'hot blue star', 'The brigthest star in Andromedam galaxy', 0.60, 97, 1);
INSERT INTO public.star VALUES (2, 'NGC 4038', 'RED STAR', ' GOING THROUGH STAR BUST', 0.23, 100, 2);
INSERT INTO public.star VALUES (3, 'NGC 4622', 'ROUND', 'NEWLY FORMING GALAXY STARS', 0.56, 104, 3);
INSERT INTO public.star VALUES (4, 'Arcturus', 'gas giant', '4t brigthest star in night sky', 7.11, 37, 4);
INSERT INTO public.star VALUES (5, 'Centarl star', ' Hottest star', ' the star is  set to becoming white draf by 1% year rate', 6.00, 555, 5);
INSERT INTO public.star VALUES (6, 'Sun', 'gas giant', 'closest star from earth ', 4.64, 0, 6);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', ' red dwarf', ' closest star outside our solar system', 4.83, 4, 7);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 35, true);


--
-- Name: black_hole_sr_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_sr_no_seq', 35, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: galaxy_sr_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_sr_no_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: moon_sr_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_sr_no_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_sr_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_sr_no_seq', 12, true);


--
-- Name: star_sr_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_sr_no_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: black_hole black_hole_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_description_key UNIQUE (description);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: black_hole black_hole_sr_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_sr_no_key UNIQUE (sr_no);


--
-- Name: galaxy galaxy_discription_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_discription_key UNIQUE (discription);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_sr_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_sr_no_key UNIQUE (sr_no);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_sr_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_sr_no_key UNIQUE (sr_no);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_sr_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_sr_no_key UNIQUE (sr_no);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_sr_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sr_no_key UNIQUE (sr_no);


--
-- Name: star star_sr_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sr_no_fkey FOREIGN KEY (sr_no) REFERENCES public.galaxy(sr_no);


--
-- PostgreSQL database dump complete
--

