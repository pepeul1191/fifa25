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
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

-- *not* creating schema, since initdb creates it


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dim_foots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_foots (
    id integer NOT NULL,
    name character varying(8)
);


--
-- Name: dim_foots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_foots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dim_foots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_foots_id_seq OWNED BY public.dim_foots.id;


--
-- Name: dim_goalkeeper_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_goalkeeper_details (
    id integer NOT NULL,
    diving integer,
    handling integer,
    kicking integer,
    positioning integer,
    reflexes integer
);


--
-- Name: dim_goalkeeper_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_goalkeeper_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dim_goalkeeper_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_goalkeeper_details_id_seq OWNED BY public.dim_goalkeeper_details.id;


--
-- Name: dim_leagues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_leagues (
    id integer NOT NULL,
    name character varying(40)
);


--
-- Name: dim_leagues_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_leagues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dim_leagues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_leagues_id_seq OWNED BY public.dim_leagues.id;


--
-- Name: dim_nations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_nations (
    id integer NOT NULL,
    name character varying(40)
);


--
-- Name: dim_nations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_nations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dim_nations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_nations_id_seq OWNED BY public.dim_nations.id;


--
-- Name: dim_players; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_players (
    id integer NOT NULL,
    name character varying(60),
    weak_foot integer,
    skill_moves integer,
    height integer,
    weight integer,
    age integer,
    url character varying(120)
);


--
-- Name: dim_players_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_players_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dim_players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_players_id_seq OWNED BY public.dim_players.id;


--
-- Name: dim_positions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_positions (
    id integer NOT NULL,
    name character varying(4)
);


--
-- Name: dim_positions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_positions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dim_positions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_positions_id_seq OWNED BY public.dim_positions.id;


--
-- Name: dim_sexs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_sexs (
    id integer NOT NULL,
    name character varying(7)
);


--
-- Name: dim_sexs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_sexs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dim_sexs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_sexs_id_seq OWNED BY public.dim_sexs.id;


--
-- Name: dim_teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dim_teams (
    id integer NOT NULL,
    name character varying(40)
);


--
-- Name: dim_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dim_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dim_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dim_teams_id_seq OWNED BY public.dim_teams.id;


--
-- Name: fact_players; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fact_players (
    player_id integer,
    team_id integer,
    position_id integer,
    nation_id integer,
    foot_id integer,
    sex_id integer,
    goalkeeper_detail_id integer,
    league_id integer,
    nation_league_id integer,
    ranking integer,
    overall integer,
    velocity integer,
    shooting integer,
    passing integer,
    dribbling integer,
    defending integer,
    physicality integer
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying(128) NOT NULL
);


--
-- Name: dim_foots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_foots ALTER COLUMN id SET DEFAULT nextval('public.dim_foots_id_seq'::regclass);


--
-- Name: dim_goalkeeper_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_goalkeeper_details ALTER COLUMN id SET DEFAULT nextval('public.dim_goalkeeper_details_id_seq'::regclass);


--
-- Name: dim_leagues id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_leagues ALTER COLUMN id SET DEFAULT nextval('public.dim_leagues_id_seq'::regclass);


--
-- Name: dim_nations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_nations ALTER COLUMN id SET DEFAULT nextval('public.dim_nations_id_seq'::regclass);


--
-- Name: dim_players id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_players ALTER COLUMN id SET DEFAULT nextval('public.dim_players_id_seq'::regclass);


--
-- Name: dim_positions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_positions ALTER COLUMN id SET DEFAULT nextval('public.dim_positions_id_seq'::regclass);


--
-- Name: dim_sexs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_sexs ALTER COLUMN id SET DEFAULT nextval('public.dim_sexs_id_seq'::regclass);


--
-- Name: dim_teams id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_teams ALTER COLUMN id SET DEFAULT nextval('public.dim_teams_id_seq'::regclass);


--
-- Name: dim_foots dim_foots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_foots
    ADD CONSTRAINT dim_foots_pkey PRIMARY KEY (id);


--
-- Name: dim_goalkeeper_details dim_goalkeeper_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_goalkeeper_details
    ADD CONSTRAINT dim_goalkeeper_details_pkey PRIMARY KEY (id);


--
-- Name: dim_leagues dim_leagues_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_leagues
    ADD CONSTRAINT dim_leagues_pkey PRIMARY KEY (id);


--
-- Name: dim_nations dim_nations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_nations
    ADD CONSTRAINT dim_nations_pkey PRIMARY KEY (id);


--
-- Name: dim_players dim_players_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_players
    ADD CONSTRAINT dim_players_pkey PRIMARY KEY (id);


--
-- Name: dim_positions dim_positions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_positions
    ADD CONSTRAINT dim_positions_pkey PRIMARY KEY (id);


--
-- Name: dim_sexs dim_sexs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_sexs
    ADD CONSTRAINT dim_sexs_pkey PRIMARY KEY (id);


--
-- Name: dim_teams dim_teams_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dim_teams
    ADD CONSTRAINT dim_teams_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: fact_players fact_players_foot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_players
    ADD CONSTRAINT fact_players_foot_id_fkey FOREIGN KEY (foot_id) REFERENCES public.dim_foots(id);


--
-- Name: fact_players fact_players_goalkeeper_detail_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_players
    ADD CONSTRAINT fact_players_goalkeeper_detail_id_fkey FOREIGN KEY (goalkeeper_detail_id) REFERENCES public.dim_goalkeeper_details(id);


--
-- Name: fact_players fact_players_league_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_players
    ADD CONSTRAINT fact_players_league_id_fkey FOREIGN KEY (league_id) REFERENCES public.dim_leagues(id);


--
-- Name: fact_players fact_players_nation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_players
    ADD CONSTRAINT fact_players_nation_id_fkey FOREIGN KEY (nation_id) REFERENCES public.dim_nations(id);


--
-- Name: fact_players fact_players_nation_league_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_players
    ADD CONSTRAINT fact_players_nation_league_id_fkey FOREIGN KEY (nation_league_id) REFERENCES public.dim_nations(id);


--
-- Name: fact_players fact_players_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_players
    ADD CONSTRAINT fact_players_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.dim_players(id);


--
-- Name: fact_players fact_players_position_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_players
    ADD CONSTRAINT fact_players_position_id_fkey FOREIGN KEY (position_id) REFERENCES public.dim_positions(id);


--
-- Name: fact_players fact_players_sex_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_players
    ADD CONSTRAINT fact_players_sex_id_fkey FOREIGN KEY (sex_id) REFERENCES public.dim_sexs(id);


--
-- Name: fact_players fact_players_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fact_players
    ADD CONSTRAINT fact_players_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.dim_teams(id);


--
-- PostgreSQL database dump complete
--


--
-- Dbmate schema migrations
--

INSERT INTO public.schema_migrations (version) VALUES
    ('20241219184041'),
    ('20241219184345'),
    ('20241219184425'),
    ('20241219184442'),
    ('20241219184514'),
    ('20241219184540'),
    ('20241219184614'),
    ('20241219185039'),
    ('20241219185040');
