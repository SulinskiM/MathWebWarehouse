--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
-- Dumped by pg_dump version 16.4 (Homebrew)

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
-- Name: arkusze_edycjaegzaminu; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.arkusze_edycjaegzaminu (
    id integer NOT NULL,
    data date,
    dotyczy_id integer,
    nazwa character varying(500),
    poziom character varying(2),
    etap character varying(50)
);


ALTER TABLE public.arkusze_edycjaegzaminu OWNER TO admin;

--
-- Name: arkusze_edycjaegzaminu_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.arkusze_edycjaegzaminu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.arkusze_edycjaegzaminu_id_seq OWNER TO admin;

--
-- Name: arkusze_edycjaegzaminu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.arkusze_edycjaegzaminu_id_seq OWNED BY public.arkusze_edycjaegzaminu.id;


--
-- Name: arkusze_egzamin; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.arkusze_egzamin (
    id integer NOT NULL,
    nazwa character varying(100) NOT NULL,
    strona character varying(200),
    przedmiot character varying(50),
    poziom character varying(50),
    rodzic_id integer,
    organizacja_id integer,
    "ocenaUzytkownikow" double precision,
    "poziomTrudnosci" double precision,
    "wyswietlanaNazwa" character varying(500)
);


ALTER TABLE public.arkusze_egzamin OWNER TO admin;

--
-- Name: arkusze_egzamin_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.arkusze_egzamin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.arkusze_egzamin_id_seq OWNER TO admin;

--
-- Name: arkusze_egzamin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.arkusze_egzamin_id_seq OWNED BY public.arkusze_egzamin.id;


--
-- Name: arkusze_organizacja; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.arkusze_organizacja (
    id integer NOT NULL,
    nazwa character varying(100) NOT NULL,
    strona character varying(200),
    typ character varying(50),
    symbol character varying(10)
);


ALTER TABLE public.arkusze_organizacja OWNER TO admin;

--
-- Name: arkusze_organizacja_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.arkusze_organizacja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.arkusze_organizacja_id_seq OWNER TO admin;

--
-- Name: arkusze_organizacja_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.arkusze_organizacja_id_seq OWNED BY public.arkusze_organizacja.id;


--
-- Name: arkusze_plik; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.arkusze_plik (
    id integer NOT NULL,
    opis character varying(100),
    filename character varying(100),
    rodzaj character varying(50),
    zrodlo character varying(200),
    dotyczy_id integer,
    "ocenaUzytkownikow" double precision,
    "poziomTrudnosci" double precision
);


ALTER TABLE public.arkusze_plik OWNER TO admin;

--
-- Name: arkusze_plik_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.arkusze_plik_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.arkusze_plik_id_seq OWNER TO admin;

--
-- Name: arkusze_plik_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.arkusze_plik_id_seq OWNED BY public.arkusze_plik.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO admin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO admin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- Name: glowna_post; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.glowna_post (
    id integer NOT NULL,
    tytul character varying(100),
    tresc text,
    skrot text,
    "dataPublikacji" date,
    miniatura character varying(1000)
);


ALTER TABLE public.glowna_post OWNER TO admin;

--
-- Name: glowna_post_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.glowna_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.glowna_post_id_seq OWNER TO admin;

--
-- Name: glowna_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.glowna_post_id_seq OWNED BY public.glowna_post.id;


--
-- Name: model_elementtablic; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.model_elementtablic (
    id integer NOT NULL,
    tresc character varying(200) NOT NULL
);


ALTER TABLE public.model_elementtablic OWNER TO admin;

--
-- Name: model_elementtablic_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.model_elementtablic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.model_elementtablic_id_seq OWNER TO admin;

--
-- Name: model_elementtablic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.model_elementtablic_id_seq OWNED BY public.model_elementtablic.id;


--
-- Name: model_przedmiot; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.model_przedmiot (
    id integer NOT NULL,
    nazwa integer NOT NULL
);


ALTER TABLE public.model_przedmiot OWNER TO admin;

--
-- Name: model_przedmiot_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.model_przedmiot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.model_przedmiot_id_seq OWNER TO admin;

--
-- Name: model_przedmiot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.model_przedmiot_id_seq OWNED BY public.model_przedmiot.id;


--
-- Name: model_przedmiot_podstawa_programowa; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.model_przedmiot_podstawa_programowa (
    id integer NOT NULL,
    przedmiot_id integer NOT NULL,
    zagadnienie_id integer NOT NULL
);


ALTER TABLE public.model_przedmiot_podstawa_programowa OWNER TO admin;

--
-- Name: model_przedmiot_podstawa_programowa_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.model_przedmiot_podstawa_programowa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.model_przedmiot_podstawa_programowa_id_seq OWNER TO admin;

--
-- Name: model_przedmiot_podstawa_programowa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.model_przedmiot_podstawa_programowa_id_seq OWNED BY public.model_przedmiot_podstawa_programowa.id;


--
-- Name: model_zagadnienie; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.model_zagadnienie (
    id integer NOT NULL,
    nazwa character varying(200) NOT NULL,
    opis character varying(200),
    wiedza_id integer,
    rodzic_id integer
);


ALTER TABLE public.model_zagadnienie OWNER TO admin;

--
-- Name: model_zagadnienie_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.model_zagadnienie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.model_zagadnienie_id_seq OWNER TO admin;

--
-- Name: model_zagadnienie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.model_zagadnienie_id_seq OWNED BY public.model_zagadnienie.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO admin;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.taggit_tag_id_seq OWNER TO admin;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO admin;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNER TO admin;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: webscraping_odwiedzonewitryny; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.webscraping_odwiedzonewitryny (
    id integer NOT NULL,
    uwagi character varying(1000) NOT NULL,
    link character varying(1000),
    zrodlo_id integer,
    pochodzenie character varying(1000) NOT NULL,
    fraza character varying(1000) NOT NULL
);


ALTER TABLE public.webscraping_odwiedzonewitryny OWNER TO admin;

--
-- Name: webscraping_odwiedzonewitryny_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.webscraping_odwiedzonewitryny_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.webscraping_odwiedzonewitryny_id_seq OWNER TO admin;

--
-- Name: webscraping_odwiedzonewitryny_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.webscraping_odwiedzonewitryny_id_seq OWNED BY public.webscraping_odwiedzonewitryny.id;


--
-- Name: webscraping_zebranezasoby; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.webscraping_zebranezasoby (
    id integer NOT NULL,
    filename character varying(200) NOT NULL,
    directory character varying(200) NOT NULL,
    pochodzenie_id integer
);


ALTER TABLE public.webscraping_zebranezasoby OWNER TO admin;

--
-- Name: webscraping_zebranezasoby_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.webscraping_zebranezasoby_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.webscraping_zebranezasoby_id_seq OWNER TO admin;

--
-- Name: webscraping_zebranezasoby_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.webscraping_zebranezasoby_id_seq OWNED BY public.webscraping_zebranezasoby.id;


--
-- Name: zasoby_autor; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.zasoby_autor (
    id integer NOT NULL,
    imie character varying(200) NOT NULL,
    nazwisko character varying(200) NOT NULL
);


ALTER TABLE public.zasoby_autor OWNER TO admin;

--
-- Name: zasoby_autor_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.zasoby_autor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zasoby_autor_id_seq OWNER TO admin;

--
-- Name: zasoby_autor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.zasoby_autor_id_seq OWNED BY public.zasoby_autor.id;


--
-- Name: zasoby_organizacja; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.zasoby_organizacja (
    id integer NOT NULL,
    symbol character varying(10),
    nazwa character varying(100) NOT NULL,
    strona character varying(200),
    typ character varying(50)
);


ALTER TABLE public.zasoby_organizacja OWNER TO admin;

--
-- Name: zasoby_organizacja_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.zasoby_organizacja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zasoby_organizacja_id_seq OWNER TO admin;

--
-- Name: zasoby_organizacja_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.zasoby_organizacja_id_seq OWNED BY public.zasoby_organizacja.id;


--
-- Name: zasoby_zasob; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.zasoby_zasob (
    id integer NOT NULL,
    rodzaj character varying(50),
    nazwa character varying(200),
    opis character varying(200),
    pochodzenie_id integer,
    autor_id integer,
    do_dzien integer,
    do_miesiac integer,
    do_rok integer,
    od_dzien integer,
    od_miesiac integer,
    od_rok integer,
    plik character varying(200),
    filename character varying(200),
    zrodlo character varying(200)
);


ALTER TABLE public.zasoby_zasob OWNER TO admin;

--
-- Name: zasoby_zasob_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.zasoby_zasob_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zasoby_zasob_id_seq OWNER TO admin;

--
-- Name: zasoby_zasob_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.zasoby_zasob_id_seq OWNED BY public.zasoby_zasob.id;


--
-- Name: zasoby_zrodlozadan; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.zasoby_zrodlozadan (
    id integer NOT NULL,
    symbol character varying(10) NOT NULL,
    rodzic character varying(10),
    nazwa character varying(100) NOT NULL,
    opis character varying(500),
    poziom integer NOT NULL,
    link character varying(200),
    organizator_id integer
);


ALTER TABLE public.zasoby_zrodlozadan OWNER TO admin;

--
-- Name: zasoby_zrodlozadan_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.zasoby_zrodlozadan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zasoby_zrodlozadan_id_seq OWNER TO admin;

--
-- Name: zasoby_zrodlozadan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.zasoby_zrodlozadan_id_seq OWNED BY public.zasoby_zrodlozadan.id;


--
-- Name: zbior_mathtag; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.zbior_mathtag (
    id integer NOT NULL,
    nazwa text NOT NULL,
    typ_tagu character varying(1) NOT NULL,
    symbol text NOT NULL,
    opis text
);


ALTER TABLE public.zbior_mathtag OWNER TO admin;

--
-- Name: zbior_mathtag_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.zbior_mathtag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zbior_mathtag_id_seq OWNER TO admin;

--
-- Name: zbior_mathtag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.zbior_mathtag_id_seq OWNED BY public.zbior_mathtag.id;


--
-- Name: zbior_rozwiazanie; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.zbior_rozwiazanie (
    id integer NOT NULL,
    tresc text NOT NULL,
    dotyczy_id integer
);


ALTER TABLE public.zbior_rozwiazanie OWNER TO admin;

--
-- Name: zbior_rozwiazanie_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.zbior_rozwiazanie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zbior_rozwiazanie_id_seq OWNER TO admin;

--
-- Name: zbior_rozwiazanie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.zbior_rozwiazanie_id_seq OWNED BY public.zbior_rozwiazanie.id;


--
-- Name: zbior_temat; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.zbior_temat (
    id integer NOT NULL,
    nazwa character varying(100),
    rodzic_id integer
);


ALTER TABLE public.zbior_temat OWNER TO admin;

--
-- Name: zbior_temat_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.zbior_temat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zbior_temat_id_seq OWNER TO admin;

--
-- Name: zbior_temat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.zbior_temat_id_seq OWNED BY public.zbior_temat.id;


--
-- Name: zbior_zadanie; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.zbior_zadanie (
    id integer NOT NULL,
    punkty integer NOT NULL,
    numer_zadania integer NOT NULL,
    tresc text NOT NULL,
    wyswietlaj boolean NOT NULL,
    odpowiedz text,
    pochodzenie integer,
    typ_zadania character varying(2),
    poziom_trudnosci text,
    dzial text
);


ALTER TABLE public.zbior_zadanie OWNER TO admin;

--
-- Name: zbior_zadanie_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.zbior_zadanie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zbior_zadanie_id_seq OWNER TO admin;

--
-- Name: zbior_zadanie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.zbior_zadanie_id_seq OWNED BY public.zbior_zadanie.id;


--
-- Name: arkusze_edycjaegzaminu id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_edycjaegzaminu ALTER COLUMN id SET DEFAULT nextval('public.arkusze_edycjaegzaminu_id_seq'::regclass);


--
-- Name: arkusze_egzamin id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_egzamin ALTER COLUMN id SET DEFAULT nextval('public.arkusze_egzamin_id_seq'::regclass);


--
-- Name: arkusze_organizacja id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_organizacja ALTER COLUMN id SET DEFAULT nextval('public.arkusze_organizacja_id_seq'::regclass);


--
-- Name: arkusze_plik id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_plik ALTER COLUMN id SET DEFAULT nextval('public.arkusze_plik_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: glowna_post id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.glowna_post ALTER COLUMN id SET DEFAULT nextval('public.glowna_post_id_seq'::regclass);


--
-- Name: model_elementtablic id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_elementtablic ALTER COLUMN id SET DEFAULT nextval('public.model_elementtablic_id_seq'::regclass);


--
-- Name: model_przedmiot id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_przedmiot ALTER COLUMN id SET DEFAULT nextval('public.model_przedmiot_id_seq'::regclass);


--
-- Name: model_przedmiot_podstawa_programowa id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_przedmiot_podstawa_programowa ALTER COLUMN id SET DEFAULT nextval('public.model_przedmiot_podstawa_programowa_id_seq'::regclass);


--
-- Name: model_zagadnienie id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_zagadnienie ALTER COLUMN id SET DEFAULT nextval('public.model_zagadnienie_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: webscraping_odwiedzonewitryny id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.webscraping_odwiedzonewitryny ALTER COLUMN id SET DEFAULT nextval('public.webscraping_odwiedzonewitryny_id_seq'::regclass);


--
-- Name: webscraping_zebranezasoby id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.webscraping_zebranezasoby ALTER COLUMN id SET DEFAULT nextval('public.webscraping_zebranezasoby_id_seq'::regclass);


--
-- Name: zasoby_autor id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_autor ALTER COLUMN id SET DEFAULT nextval('public.zasoby_autor_id_seq'::regclass);


--
-- Name: zasoby_organizacja id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_organizacja ALTER COLUMN id SET DEFAULT nextval('public.zasoby_organizacja_id_seq'::regclass);


--
-- Name: zasoby_zasob id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_zasob ALTER COLUMN id SET DEFAULT nextval('public.zasoby_zasob_id_seq'::regclass);


--
-- Name: zasoby_zrodlozadan id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_zrodlozadan ALTER COLUMN id SET DEFAULT nextval('public.zasoby_zrodlozadan_id_seq'::regclass);


--
-- Name: zbior_mathtag id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_mathtag ALTER COLUMN id SET DEFAULT nextval('public.zbior_mathtag_id_seq'::regclass);


--
-- Name: zbior_rozwiazanie id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_rozwiazanie ALTER COLUMN id SET DEFAULT nextval('public.zbior_rozwiazanie_id_seq'::regclass);


--
-- Name: zbior_temat id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_temat ALTER COLUMN id SET DEFAULT nextval('public.zbior_temat_id_seq'::regclass);


--
-- Name: zbior_zadanie id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_zadanie ALTER COLUMN id SET DEFAULT nextval('public.zbior_zadanie_id_seq'::regclass);


--
-- Data for Name: arkusze_edycjaegzaminu; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.arkusze_edycjaegzaminu (id, data, dotyczy_id, nazwa, poziom, etap) FROM stdin;
\.


--
-- Data for Name: arkusze_egzamin; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.arkusze_egzamin (id, nazwa, strona, przedmiot, poziom, rodzic_id, organizacja_id, "ocenaUzytkownikow", "poziomTrudnosci", "wyswietlanaNazwa") FROM stdin;
\.


--
-- Data for Name: arkusze_organizacja; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.arkusze_organizacja (id, nazwa, strona, typ, symbol) FROM stdin;
1	Centralna komisja egzaminacyjna	https://cke.gov.pl/	PKE	CKE
2	Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie	https://www.diament.agh.edu.pl/	UW	AGH
3	Wydział Matematyki Politechniki Wrocławskiej	https://wmat.pwr.edu.pl/	UW	PWR
4	Nowa Era	-	W	NE
5	Operon	-	W	OPERON
6	Politechnika Gdańska	-	UW	PG
7	XIV Liceum Ogólnokształcące im. Stanisława Staszica	https://www.staszic.waw.pl/	S	XIVLO
8	Kujawsko-Pomorskie Centrum Edukacji Nauczycieli w Bydgoszczy	https://cen.bydgoszcz.pl/	PDN	CEN
9	Lubelskie Samorządowe Centrum Doskonalenia Nauczycieli	https://www.lscdn.pl/	PDN	LSCDN
10	Portal edukacyjny w Szczecinie	https://pe.szczecin.pl/	I	PE
11	WSiP	https://wsip.pl/	W	WSiP
12	Instytut Matematyczny Polskiej Akademii Nauk	https://www.impan.pl/	I	IMPAN
13	Akademia Pomorska w Słupsku	-	UW	APS
14	Politechnika Warszawska	-	UW	PW
15	Publiczne Salezjańskie Liceum Ogólnokształcące w Krakowie	https://salezjanie.com/	S	SLOK
16	Wojskowa Akademia Techniczna im. Jarosława Dąbrowskiego	https://www.wojsko-polskie.pl/wat/	UW	WAT
17	Politechnika Śląska	https://www.polsl.pl/	UW	PS
18	Politechnika Krakowska im. Tadeusza Kościuszki	https://www.pk.edu.pl/index.php?lang=pl	UW	PK
19	Uniwersytet Jagiellońskii	https://www.uj.edu.pl/pl	UW	UJ
\.


--
-- Data for Name: arkusze_plik; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.arkusze_plik (id, opis, filename, rodzaj, zrodlo, dotyczy_id, "ocenaUzytkownikow", "poziomTrudnosci") FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add post	1	add_post
2	Can change post	1	change_post
3	Can delete post	1	delete_post
4	Can view post	1	view_post
5	Can add autor	2	add_autor
6	Can change autor	2	change_autor
7	Can delete autor	2	delete_autor
8	Can view autor	2	view_autor
9	Can add lokalizacja zasobu	3	add_lokalizacjazasobu
10	Can change lokalizacja zasobu	3	change_lokalizacjazasobu
11	Can delete lokalizacja zasobu	3	delete_lokalizacjazasobu
12	Can view lokalizacja zasobu	3	view_lokalizacjazasobu
13	Can add wydawca	4	add_wydawca
14	Can change wydawca	4	change_wydawca
15	Can delete wydawca	4	delete_wydawca
16	Can view wydawca	4	view_wydawca
17	Can add zasob	5	add_zasob
18	Can change zasob	5	change_zasob
19	Can delete zasob	5	delete_zasob
20	Can view zasob	5	view_zasob
21	Can add element tablic	6	add_elementtablic
22	Can change element tablic	6	change_elementtablic
23	Can delete element tablic	6	delete_elementtablic
24	Can view element tablic	6	view_elementtablic
25	Can add zagadnienie	7	add_zagadnienie
26	Can change zagadnienie	7	change_zagadnienie
27	Can delete zagadnienie	7	delete_zagadnienie
28	Can view zagadnienie	7	view_zagadnienie
29	Can add przedmiot	8	add_przedmiot
30	Can change przedmiot	8	change_przedmiot
31	Can delete przedmiot	8	delete_przedmiot
32	Can view przedmiot	8	view_przedmiot
33	Can add odpowiedz	9	add_odpowiedz
34	Can change odpowiedz	9	change_odpowiedz
35	Can delete odpowiedz	9	delete_odpowiedz
36	Can view odpowiedz	9	view_odpowiedz
37	Can add rownanie	10	add_rownanie
38	Can change rownanie	10	change_rownanie
39	Can delete rownanie	10	delete_rownanie
40	Can view rownanie	10	view_rownanie
41	Can add rysunek	11	add_rysunek
42	Can change rysunek	11	change_rysunek
43	Can delete rysunek	11	delete_rysunek
44	Can view rysunek	11	view_rysunek
45	Can add zadanie	12	add_zadanie
46	Can change zadanie	12	change_zadanie
47	Can delete zadanie	12	delete_zadanie
48	Can view zadanie	12	view_zadanie
49	Can add wymagana wiedza	13	add_wymaganawiedza
50	Can change wymagana wiedza	13	change_wymaganawiedza
51	Can delete wymagana wiedza	13	delete_wymaganawiedza
52	Can view wymagana wiedza	13	view_wymaganawiedza
53	Can add rozwiazanie	14	add_rozwiazanie
54	Can change rozwiazanie	14	change_rozwiazanie
55	Can delete rozwiazanie	14	delete_rozwiazanie
56	Can view rozwiazanie	14	view_rozwiazanie
57	Can add poprawki zadanie	15	add_poprawkizadanie
58	Can change poprawki zadanie	15	change_poprawkizadanie
59	Can delete poprawki zadanie	15	delete_poprawkizadanie
60	Can view poprawki zadanie	15	view_poprawkizadanie
61	Can add zasob zewnetrzny	16	add_zasobzewnetrzny
62	Can change zasob zewnetrzny	16	change_zasobzewnetrzny
63	Can delete zasob zewnetrzny	16	delete_zasobzewnetrzny
64	Can view zasob zewnetrzny	16	view_zasobzewnetrzny
65	Can add edycja egzaminu	17	add_edycjaegzaminu
66	Can change edycja egzaminu	17	change_edycjaegzaminu
67	Can delete edycja egzaminu	17	delete_edycjaegzaminu
68	Can view edycja egzaminu	17	view_edycjaegzaminu
69	Can add plik	18	add_plik
70	Can change plik	18	change_plik
71	Can delete plik	18	delete_plik
72	Can view plik	18	view_plik
73	Can add organizacja	19	add_organizacja
74	Can change organizacja	19	change_organizacja
75	Can delete organizacja	19	delete_organizacja
76	Can view organizacja	19	view_organizacja
77	Can add egzamin	20	add_egzamin
78	Can change egzamin	20	change_egzamin
79	Can delete egzamin	20	delete_egzamin
80	Can view egzamin	20	view_egzamin
81	Can add odwiedzone witryny	21	add_odwiedzonewitryny
82	Can change odwiedzone witryny	21	change_odwiedzonewitryny
83	Can delete odwiedzone witryny	21	delete_odwiedzonewitryny
84	Can view odwiedzone witryny	21	view_odwiedzonewitryny
85	Can add zebrane zasoby	22	add_zebranezasoby
86	Can change zebrane zasoby	22	change_zebranezasoby
87	Can delete zebrane zasoby	22	delete_zebranezasoby
88	Can view zebrane zasoby	22	view_zebranezasoby
89	Can add log entry	23	add_logentry
90	Can change log entry	23	change_logentry
91	Can delete log entry	23	delete_logentry
92	Can view log entry	23	view_logentry
93	Can add permission	24	add_permission
94	Can change permission	24	change_permission
95	Can delete permission	24	delete_permission
96	Can view permission	24	view_permission
97	Can add group	25	add_group
98	Can change group	25	change_group
99	Can delete group	25	delete_group
100	Can view group	25	view_group
101	Can add user	26	add_user
102	Can change user	26	change_user
103	Can delete user	26	delete_user
104	Can view user	26	view_user
105	Can add content type	27	add_contenttype
106	Can change content type	27	change_contenttype
107	Can delete content type	27	delete_contenttype
108	Can view content type	27	view_contenttype
109	Can add session	28	add_session
110	Can change session	28	change_session
111	Can delete session	28	delete_session
112	Can view session	28	view_session
113	Can add math tag	29	add_mathtag
114	Can change math tag	29	change_mathtag
115	Can delete math tag	29	delete_mathtag
116	Can view math tag	29	view_mathtag
117	Can add zrodlo zadan	30	add_zrodlozadan
118	Can change zrodlo zadan	30	change_zrodlozadan
119	Can delete zrodlo zadan	30	delete_zrodlozadan
120	Can view zrodlo zadan	30	view_zrodlozadan
121	Can add tag	31	add_tag
122	Can change tag	31	change_tag
123	Can delete tag	31	delete_tag
124	Can view tag	31	view_tag
125	Can add tagged item	32	add_taggeditem
126	Can change tagged item	32	change_taggeditem
127	Can delete tagged item	32	delete_taggeditem
128	Can view tagged item	32	view_taggeditem
129	Can add organizacja	33	add_organizacja
130	Can change organizacja	33	change_organizacja
131	Can delete organizacja	33	delete_organizacja
132	Can view organizacja	33	view_organizacja
133	Can add temat	34	add_temat
134	Can change temat	34	change_temat
135	Can delete temat	34	delete_temat
136	Can view temat	34	view_temat
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$a5PZTG3aiE2T$o7Oso5/9k4AHpkCfjL8e6+Xf1U0AKZSptqyq/PzPPKI=	2025-02-04 18:58:41.899732+00	t	admin			sulas899@gmail.com	t	t	2024-10-20 09:55:00.077837+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-10-20 09:55:28.592295+00	1	Centralna komisja egzaminacyjna	1	[{"added": {}}]	19	1
2	2024-10-20 09:57:55.205786+00	2	Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie	1	[{"added": {}}]	19	1
3	2024-10-20 10:00:06.68615+00	3	Wydział Matematyki Politechniki Wrocławskiej	1	[{"added": {}}]	19	1
4	2024-10-20 10:00:37.150051+00	4	Nowa Era	1	[{"added": {}}]	19	1
5	2024-10-20 10:00:42.58076+00	5	Operon	1	[{"added": {}}]	19	1
6	2024-10-20 10:00:52.312644+00	6	Politechnika Gdańska	1	[{"added": {}}]	19	1
7	2024-10-20 10:02:26.155264+00	7	XIV Liceum Ogólnokształcące im. Stanisława Staszica	1	[{"added": {}}]	19	1
8	2024-10-20 10:03:13.181156+00	8	Kujawsko-Pomorskie Centrum Edukacji Nauczycieli w Bydgoszczy	1	[{"added": {}}]	19	1
9	2024-10-20 10:03:56.886525+00	9	Lubelskie Samorządowe Centrum Doskonalenia Nauczycieli	1	[{"added": {}}]	19	1
10	2024-10-20 10:08:52.634232+00	10	Portal edukacyjny w Szczecinie	1	[{"added": {}}]	19	1
11	2024-10-20 11:07:59.02928+00	11	WSiP	1	[{"added": {}}]	19	1
12	2024-10-20 11:10:13.84926+00	1	Egzamin maturalny	1	[{"added": {}}]	20	1
13	2024-10-20 11:10:33.719924+00	2	Egzamin maturalny z matematyki PR	1	[{"added": {}}]	20	1
14	2024-10-20 11:10:40.291599+00	2	Egzamin maturalny -> Egzamin maturalny z matematyki PR	2	[{"changed": {"fields": ["Rodzic"]}}]	20	1
15	2024-10-20 11:10:54.058481+00	3	Egzamin maturalny -> Egzamin maturalny z matematyki PP	1	[{"added": {}}]	20	1
16	2024-10-20 11:11:40.17638+00	4	Korespondencyjny Kurs z Matematyki	1	[{"added": {}}]	20	1
17	2024-10-20 11:11:57.329579+00	5	Konkursy matematyczne	1	[{"added": {}}]	20	1
18	2024-10-20 11:13:37.170099+00	6	Konkursy matematyczne -> Ogólnopolska Olimpiada O Diamentowy Indeks AGH	1	[{"added": {}}]	20	1
19	2024-10-20 11:14:01.138483+00	6	Konkursy matematyczne -> Ogólnopolska Olimpiada O Diamentowy Indeks AGH	2	[{"changed": {"fields": ["Organizacja"]}}]	20	1
20	2024-10-20 11:14:35.377346+00	1	Egzamin maturalny	2	[{"changed": {"fields": ["Organizacja"]}}]	20	1
21	2024-10-20 11:14:42.280548+00	2	Egzamin maturalny -> Egzamin maturalny z matematyki PR	2	[{"changed": {"fields": ["Organizacja"]}}]	20	1
22	2024-10-20 11:14:53.391943+00	3	Egzamin maturalny -> Egzamin maturalny z matematyki PP	2	[{"changed": {"fields": ["Organizacja"]}}]	20	1
23	2024-10-20 11:17:56.221852+00	7	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki	1	[{"added": {}}]	20	1
24	2024-10-20 11:18:44.036083+00	8	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Pomorskie	1	[{"added": {}}]	20	1
25	2024-10-20 11:19:13.065242+00	9	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Zachodnio-pomorskie	1	[{"added": {}}]	20	1
26	2024-10-20 11:19:25.461186+00	10	Konkurs kuratoryjny z matematyki - Wielkopolskie	1	[{"added": {}}]	20	1
27	2024-10-20 11:19:31.428626+00	10	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Wielkopolskie	2	[{"changed": {"fields": ["Rodzic"]}}]	20	1
28	2024-10-20 11:19:44.567435+00	11	Konkurs kuratoryjny z matematyki - Małopolskie	1	[{"added": {}}]	20	1
29	2024-10-20 11:19:50.641891+00	11	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Małopolskie	2	[{"changed": {"fields": ["Rodzic"]}}]	20	1
30	2024-10-20 11:20:15.009909+00	12	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Opolskie	1	[{"added": {}}]	20	1
31	2024-10-20 11:20:41.627279+00	13	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Podkarpackie	1	[{"added": {}}]	20	1
32	2024-10-20 11:21:12.443148+00	14	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Łódzkie	1	[{"added": {}}]	20	1
33	2024-10-20 11:21:30.362061+00	15	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Świętokrzyskie	1	[{"added": {}}]	20	1
34	2024-10-20 11:21:47.838518+00	16	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Śląskie	1	[{"added": {}}]	20	1
35	2024-10-20 11:22:03.660356+00	17	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki -  Lubuskie	1	[{"added": {}}]	20	1
36	2024-10-20 11:22:32.90281+00	18	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Lubelskie	1	[{"added": {}}]	20	1
37	2024-10-20 11:22:47.644382+00	19	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Podlaskie	1	[{"added": {}}]	20	1
38	2024-10-20 11:23:05.648226+00	20	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Warmińsko-mazurskie	1	[{"added": {}}]	20	1
39	2024-10-20 11:23:16.193166+00	9	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Zachodniopomorskie	2	[{"changed": {"fields": ["Nazwa"]}}]	20	1
40	2024-10-20 11:23:40.804936+00	21	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Kujawsko-pomorskie	1	[{"added": {}}]	20	1
41	2024-10-20 11:24:15.646948+00	22	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Dolnośląskie	1	[{"added": {}}]	20	1
42	2024-10-20 11:25:28.872535+00	23	Konkursy matematyczne -> Konkurs kuratoryjny z matematyki -> Konkurs kuratoryjny z matematyki - Mazowieckie	1	[{"added": {}}]	20	1
43	2024-10-20 11:27:08.883471+00	12	Instytut Matematyczny Polskiej Akademii Nauk	1	[{"added": {}}]	19	1
44	2024-10-20 11:27:38.062712+00	12	Instytut Matematyczny Polskiej Akademii Nauk	2	[{"changed": {"fields": ["Strona"]}}]	19	1
45	2024-10-20 11:27:41.493181+00	24	Konkursy matematyczne -> Olimpiada matematyczna	1	[{"added": {}}]	20	1
46	2024-10-20 11:28:32.864857+00	25	Konkursy matematyczne -> Olimpiada matematyczna juniorów	1	[{"added": {}}]	20	1
47	2024-10-20 11:31:33.360356+00	13	Akademia Pomorska w Słupsku	1	[{"added": {}}]	19	1
48	2024-10-20 11:31:35.218675+00	26	Konkursy matematyczne -> Liga matematyczna im. Zdzisława Matuskiego	1	[{"added": {}}]	20	1
49	2024-10-20 11:33:30.213988+00	27	Konkursy matematyczne -> Konkurs St@ś	1	[{"added": {}}]	20	1
50	2024-10-20 11:34:05.064678+00	28	Egzaminy wstępne na uczelnie wyższe z matematyki	1	[{"added": {}}]	20	1
51	2024-10-20 11:34:54.494624+00	29	Egzaminy wstępne na uczelnie wyższe z matematyki -> Egzamin wstępny na Politechnikę Gdańską z matematyki	1	[{"added": {}}]	20	1
52	2024-10-20 11:35:43.705988+00	14	Politechnika Warszawska	1	[{"added": {}}]	19	1
53	2024-10-20 11:35:48.927037+00	30	Egzaminy wstępne na uczelnie wyższe z matematyki -> Egzamin wstępny na Politechnikę Warszawską z matematyki	1	[{"added": {}}]	20	1
54	2024-10-20 11:37:18.850749+00	31	Konkursy matematyczne -> Od szkolniaka do żaka	1	[{"added": {}}]	20	1
55	2024-10-20 11:39:08.580536+00	15	Publiczne Salezjańskie Liceum Ogólnokształcące w Krakowie	1	[{"added": {}}]	19	1
239	2024-10-26 21:06:38.447056+00	2	2 -> Zadanie 82. (06) Wyznacz wszys	3		12	1
56	2024-10-20 11:39:28.393171+00	15	Publiczne Salezjańskie Liceum Ogólnokształcące w Krakowie	2	[{"changed": {"fields": ["Strona"]}}]	19	1
57	2024-10-20 11:39:33.878426+00	32	Konkursy matematyczne -> Mistrzowie Matematyki	1	[{"added": {}}]	20	1
58	2024-10-20 14:32:56.676753+00	704	704 -> ZADANIE 7.Czworokąt ABCD jest 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
59	2024-10-20 14:34:45.91485+00	704	704 -> ZADANIE 7.Czworokąt ABCD jest 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
60	2024-10-20 14:37:03.701976+00	704	704 -> ZADANIE 7.Czworokąt ABCD jest 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
61	2024-10-20 17:18:05.813637+00	706	706 -> ZADANIE 3.Rozwiąz uklad równań	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
62	2024-10-20 17:18:59.204176+00	706	706 -> ZADANIE 3.Rozwiąz uklad równań	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
63	2024-10-20 17:56:46.023765+00	764	764 -> Wykaz \\(\\dot{\\mathrm{z}}\\mathr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
64	2024-10-26 09:21:18.785399+00	1126	1126 -> Trójkąt  \\(ABC\\)  jest wpisany	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
65	2024-10-26 09:24:56.991703+00	1125	1125 -> Dane są trzy okręgi o środkach	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
66	2024-10-26 09:28:29.869233+00	1124	1124 -> Udowodnij, że dla  każdych dwó	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
67	2024-10-26 09:29:12.539771+00	1123	1123 -> Rozwiąż równanie \\(\\sqrt{3}\\cd	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
68	2024-10-26 09:30:22.102197+00	1122	1122 -> Wyznacz wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
69	2024-10-26 09:31:42.39111+00	1122	1122 -> Wyznacz wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
70	2024-10-26 09:34:01.600978+00	1121	1121 -> Z urny zawierającej 10 kul pon	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
71	2024-10-26 09:35:01.249813+00	1120	1120 -> Wyznacz wszystkie całkowite wa	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
72	2024-10-26 09:36:20.138437+00	1119	1119 -> Oblicz objętość ostrosłupa tró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
73	2024-10-26 09:36:53.582854+00	1119	1119 -> Oblicz objętość ostrosłupa tró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
74	2024-10-26 09:37:11.789703+00	1119	1119 -> Oblicz objętość ostrosłupa tró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
75	2024-10-26 09:39:02.867619+00	1118	1118 -> Punkty  \\(A\\), \\(B\\), \\(C\\), \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
76	2024-10-26 09:39:24.46965+00	1118	1118 -> Punkty  \\(A\\), \\(B\\), \\(C\\), \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
77	2024-10-26 09:40:10.100956+00	1117	1117 -> Ciąg geometryczny  \\((a_{n})\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
78	2024-10-26 09:41:17.112124+00	1116	1116 -> Dana jest funkcja \\(f\\)  okreś	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
79	2024-10-26 09:41:34.254815+00	1116	1116 -> Dana jest funkcja \\(f\\)  okreś	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
80	2024-10-26 09:58:42.833271+00	1104	1104 -> Rozwiąż nierówność  \\(|2x5|-|x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
81	2024-10-26 09:59:06.936291+00	1104	1104 -> Rozwiąż nierówność  \\(|2x5|-|x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
82	2024-10-26 09:59:46.981745+00	1115	1115 -> Prosta o równaniu  \\(3x-4y-36=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
83	2024-10-26 10:00:24.936889+00	1114	1114 -> Wyznacz wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
84	2024-10-26 10:02:29.215778+00	1113	1113 -> Ciąg liczbowy  \\((a,b,c)\\)  je	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
85	2024-10-26 10:02:52.669163+00	1113	1113 -> Ciąg liczbowy  \\((a,b,c)\\)  je	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
86	2024-10-26 10:03:26.4541+00	1112	1112 -> Rozwiąż równanie  \\(\\cos 2x+\\c	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
87	2024-10-26 10:03:48.047653+00	1111	1111 -> Oblicz, ile jest liczb natural	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
88	2024-10-26 10:04:39.435982+00	1110	1110 -> Trapez równoramienny ABCD o po	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
89	2024-10-26 10:04:56.230017+00	1110	1110 -> Trapez równoramienny ABCD o po	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
90	2024-10-26 10:06:38.199832+00	1109	1109 -> Na rysunku przedstawiony jest 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
91	2024-10-26 10:07:38.075166+00	1108	1108 -> Rzucamy cztery razy symetryczn	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
92	2024-10-26 10:09:04.057859+00	1107	1107 -> W ostrosłupie \\(ABCS\\) podstaw	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
93	2024-10-26 10:10:11.56343+00	1106	1106 -> Dany jest trójkąt  \\(ABC\\), w 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
94	2024-10-26 10:10:57.906732+00	1105	1105 -> Reszta z dzielenia wielomianu 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
95	2024-10-26 10:25:12.925245+00	9	9 -> Długości boków czworokąta \\(AB	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
96	2024-10-26 10:27:04.90449+00	8	8 -> Dwusieczne czworokąta \\(ABCD\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
97	2024-10-26 10:27:36.228201+00	8	8 -> Dwusieczne czworokąta \\(ABCD\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
98	2024-10-26 10:28:26.189571+00	7	7 -> Liczby  (-1) i 3 są miejscami 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
99	2024-10-26 10:29:47.784728+00	1	1 -> Dana jest funkcja  \\(f\\)  okre	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
100	2024-10-26 10:30:58.982375+00	2	2 -> Liczba  \\((32\\sqrt{3})^{3}\\)  	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
101	2024-10-26 10:31:41.226274+00	2	2 -> Liczba  \\((32\\sqrt{3})^{3}\\)  	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
102	2024-10-26 10:32:00.343249+00	2	2 -> Liczba  \\((3-2\\sqrt{3})^{3}\\) 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
103	2024-10-26 10:33:13.725803+00	3	3 -> Równanie \\(2\\sin x+3\\cos x=6\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
104	2024-10-26 10:33:39.505281+00	3	3 -> Równanie \\(2\\sin x+3\\cos x=6\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
105	2024-10-26 10:34:23.334861+00	10	10 -> Odległość początku układu wspó	1	[{"added": {}}]	12	1
106	2024-10-26 10:41:21.567595+00	10	10 -> Odległość początku układu wspó	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
107	2024-10-26 10:42:30.4779+00	1	1 -> Dana jest funkcja  \\(f\\)  okre	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
108	2024-10-26 10:43:21.727432+00	2	2 -> Liczba  \\((3-2\\sqrt{3})^{3}\\) 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
109	2024-10-26 10:44:54.954054+00	3	3 -> Równanie \\(2\\sin x+3\\cos x=6\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
110	2024-10-26 10:47:27.733329+00	4	4 -> W pierwszej utnie umieszczono 	2	[{"changed": {"fields": ["Tresc", "Punkty"]}}]	12	1
111	2024-10-26 10:48:56.246553+00	5	5 -> Dany jest trójmian kwadratowy 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
112	2024-10-26 10:51:14.751342+00	6	6 -> Suma wszystkich czterech współ	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
113	2024-10-26 10:52:45.945146+00	11	11 -> Rozpatrujemy wszystkie stożki,	1	[{"added": {}}]	12	1
114	2024-10-26 10:53:57.231349+00	12	12 -> Oblicz granicę  \\(\\displaystyl	1	[{"added": {}}]	12	1
115	2024-10-26 10:56:37.978367+00	13	13 -> Podstawą ostrosłupa \\(ABCDS\\) 	1	[{"added": {}}]	12	1
116	2024-10-26 10:57:44.842115+00	14	14 -> Funkcja f określona jest wzore	1	[{"added": {}}]	12	1
117	2024-10-26 10:58:07.986213+00	1	1 -> Dana jest funkcja  \\(f\\)  okre	2	[]	12	1
118	2024-10-26 10:58:49.73208+00	15	15 -> Udowodnij, że dla każdej liczb	1	[{"added": {}}]	12	1
119	2024-10-26 11:01:35.455557+00	16	16 -> Na rysunku przedstawiony jest 	1	[{"added": {}}]	12	1
120	2024-10-26 11:02:15.30832+00	16	16 -> Na rysunku przedstawiony jest 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
121	2024-10-26 11:02:58.719907+00	16	16 -> Na rysunku przedstawiony jest 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
122	2024-10-26 11:05:33.583791+00	14	14 -> Funkcja f określona jest wzore	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
123	2024-10-26 11:09:49.93965+00	5	5 -> Rozpatrujemy wszystkie walce o	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
124	2024-10-26 11:11:52.266227+00	4	4 -> Wyznacz równanie okręgu przech	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
125	2024-10-26 11:13:39.958783+00	13	13 -> Liczby  \\(a\\), \\(b\\), \\(c\\)  s	1	[{"added": {}}]	12	1
126	2024-10-26 11:14:14.510815+00	13	13 -> Liczby  \\(a\\), \\(b\\), \\(c\\)  s	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
127	2024-10-26 11:15:13.654719+00	12	12 -> W pudełku znajduje się 8 piłec	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
128	2024-10-26 11:15:43.637722+00	11	11 -> Rozwiąż równanie \\(\\cos 2x+3\\c	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
129	2024-10-26 11:17:37.317509+00	10	10 -> W czworościanie, którego wszys	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
130	2024-10-26 11:19:16.847471+00	9	9 -> W trójkącie ostrokątnym  \\(ABC	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
131	2024-10-26 11:20:53.863423+00	1	1 -> Nieskończony ciąg Wtedy liczbo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
132	2024-10-26 11:21:55.475282+00	1	1 -> Nieskończony ciąg Wtedy liczbo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
133	2024-10-26 11:23:10.064033+00	1	1 -> Nieskończony ciąg Wtedy liczbo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
134	2024-10-26 11:23:57.239298+00	14	14 -> Liczba \\(\\sqrt{3}\\)	1	[{"added": {}}]	12	1
135	2024-10-26 11:25:35.671731+00	14	14 -> Liczba \\(\\(sqrt{2-\\sqrt{3}} - 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
136	2024-10-26 11:25:46.226228+00	14	14 -> Liczba \\(\\sqrt{2-\\sqrt{3}} - \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
137	2024-10-26 11:26:16.608477+00	14	14 -> Liczba \\(\\(\\sqrt{2-\\sqrt{3}} -	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
138	2024-10-26 11:26:38.1105+00	14	14 -> Liczba \\((\\sqrt{2-\\sqrt{3}} - 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
139	2024-10-26 11:28:21.492406+00	2	2 -> Odcinek  \\(CD\\)  jest wysokośc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
140	2024-10-26 11:28:57.935094+00	2	2 -> Odcinek  \\(CD\\)  jest wysokośc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
141	2024-10-26 11:29:21.235024+00	14	14 -> Liczba \\((\\sqrt{2-\\sqrt{3}} - 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
142	2024-10-26 11:29:55.981914+00	2	2 -> Odcinek  \\(CD\\)  jest wysokośc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
143	2024-10-26 11:32:40.343295+00	15	15 -> Wyznacz wszystkie wartości par	1	[{"added": {}}]	12	1
144	2024-10-26 11:34:18.561436+00	3	3 -> Dane są punkt  \\(B=(-4,7)\\)  i	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
145	2024-10-26 11:35:05.211078+00	3	3 -> Dane są punkt  \\(B=(-4,7)\\)  i	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
146	2024-10-26 11:36:27.119128+00	6	6 -> Reszta z dzielenia wielomianu 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
147	2024-10-26 11:37:21.656314+00	7	7 -> Funkcja  \\(f\\)  jest określona	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
148	2024-10-26 11:38:20.116184+00	8	8 -> Udowodnij, że dla dowolnych ró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
149	2024-10-26 11:47:30.550181+00	1	1 -> Wielomian  \\(W\\)  określony wz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
150	2024-10-26 11:49:26.360457+00	2	2 -> Ciąg  \\((a_{n})\\)  jest określ	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
151	2024-10-26 11:50:37.577201+00	2	2 -> Ciąg  \\((a_{n})\\)  jest określ	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
152	2024-10-26 11:52:51.782128+00	3	3 -> Mamy dwie urny. W pierwszej są	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
153	2024-10-26 11:53:17.630182+00	3	3 -> Mamy dwie urny. W pierwszej są	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
154	2024-10-26 11:54:26.924626+00	4	4 -> Po przekształceniu wyrażenia a	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
155	2024-10-26 11:55:17.906975+00	4	4 -> Po przekształceniu wyrażenia a	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
156	2024-10-26 11:56:00.141094+00	4	4 -> Po przekształceniu wyrażenia a	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
157	2024-10-26 11:57:41.728042+00	10	10 -> W trójkącie  \\(ABC\\)  bok  \\(A	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
158	2024-10-26 11:58:13.418286+00	11	11 -> Wyznacz wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
159	2024-10-26 12:00:01.052463+00	12	12 -> Dany jest trójkąt równoramienn	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
160	2024-10-26 12:00:34.436303+00	12	12 -> Dany jest trójkąt równoramienn	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
161	2024-10-26 12:01:54.81821+00	13	13 -> Liczby dodatnie  \\(a\\) i \\(b\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
162	2024-10-26 12:02:44.263637+00	14	14 -> Rozwiąz równanie \\(3\\cos 2x+10	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
163	2024-10-26 12:04:19.1053+00	15	15 -> W trzywyrazowym ciągu geometry	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
164	2024-10-26 12:04:52.623765+00	15	15 -> W trzywyrazowym ciągu geometry	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
165	2024-10-26 12:06:27.1891+00	5	5 -> Dane jest równanie kwadratowe 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
166	2024-10-26 12:07:00.570001+00	5	5 -> Dane jest równanie kwadratowe 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
167	2024-10-26 12:08:02.189433+00	6	6 -> Prosta o równaniu  \\(x+y10=0\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
168	2024-10-26 12:08:19.829189+00	6	6 -> Prosta o równaniu  \\(x+y-10=0\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
169	2024-10-26 12:09:06.756176+00	7	7 -> Oblicz, ile jest wszystkich si	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
170	2024-10-26 12:11:31.35407+00	8	8 -> Podstawą ostrosłupa czworokątn	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
171	2024-10-26 12:11:54.136342+00	8	8 -> Podstawą ostrosłupa czworokątn	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
172	2024-10-26 12:13:33.41769+00	9	9 -> Należ  zaprojektować wymiary p	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
173	2024-10-26 12:13:53.04092+00	9	9 -> Należy zaprojektować wymiary p	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
174	2024-10-26 12:14:28.888729+00	10	10 -> W trójkącie  \\(ABC\\)  bok  \\(A	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
175	2024-10-26 17:26:08.19907+00	1	1 -> Liczba  \\(\\log_{3}\\sqrt{27}-\\l	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
176	2024-10-26 17:28:14.133356+00	2	2 -> Funkcja  \\(f\\)  jest określona	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
177	2024-10-26 17:30:13.153847+00	3	3 -> Jeżeli  \\(\\cos\\beta=-\\frac{1}{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
178	2024-10-26 17:31:01.918738+00	3	3 -> Jeżeli  \\(\\cos\\beta=-\\frac{1}{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
179	2024-10-26 17:34:50.065168+00	4	4 -> Dane są dwie urny z kulami.  W	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
180	2024-10-26 17:37:36.254728+00	7	7 -> Ciąg \\((𝑎_{n})\\) jest określon	1	[{"added": {}}]	12	1
181	2024-10-26 17:38:12.103834+00	7	7 -> Ciąg \\((𝑎_{n})\\) jest określon	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
182	2024-10-26 17:40:39.89439+00	8	8 -> Wykaż, że dla każdej liczby rz	1	[{"added": {}}]	12	1
183	2024-10-26 17:41:50.391353+00	9	9 -> Rozwiąż równanie: \\(|𝑥 − 3| = 	1	[{"added": {}}]	12	1
184	2024-10-26 17:44:13.515923+00	10	10 -> Punkt \\(𝑃\\) jest punktem przec	1	[{"added": {}}]	12	1
185	2024-10-26 17:44:41.739086+00	10	10 -> Punkt \\(𝑃\\) jest punktem przec	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
186	2024-10-26 17:45:53.365804+00	11	11 -> Reszta z dzielenia wielomianu 	1	[{"added": {}}]	12	1
187	2024-10-26 17:49:55.23691+00	12	12 -> Ciąg \\((𝑎_{n})\\), określony dl	1	[{"added": {}}]	12	1
188	2024-10-26 17:50:49.701214+00	5	5 -> Rozwiqż równanie \\(\\sin x+\\sin	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
189	2024-10-26 17:53:59.835447+00	13	13 -> Wyznacz wszystkie wartości par	1	[{"added": {}}]	12	1
190	2024-10-26 17:57:53.072725+00	6	6 -> Dany jest graniastosłup prosty	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
191	2024-10-26 17:59:53.976117+00	14	14 -> Punkt \\(𝐴 = (−3, 2)\\) jest wie	1	[{"added": {}}]	12	1
192	2024-10-26 18:01:54.205855+00	15	15 -> Rozpatrujemy wszystkie trójkąt	1	[{"added": {}}]	12	1
193	2024-10-26 18:09:23.12381+00	11	11 -> W chwili początkowej \\((𝑡 = 0)	1	[{"added": {}}]	12	1
194	2024-10-26 18:10:40.940939+00	6	6 -> Tomek i Romek postanowili roze	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
195	2024-10-26 18:12:23.882255+00	7	7 -> Funkcja  \\(f\\)  jest określona	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
196	2024-10-26 18:12:46.889862+00	7	7 -> Funkcja  \\(f\\)  jest określona	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
197	2024-10-26 18:14:12.767808+00	8	8 -> Liczby rzeczywiste  \\(x\\)  ora	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
198	2024-10-26 18:14:29.871162+00	8	8 -> Liczby rzeczywiste  \\(x\\)  ora	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
199	2024-10-26 18:18:16.96262+00	9	9 -> Dany jest trójkąt prostokątny 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
200	2024-10-26 18:19:25.644006+00	9	9 -> Dany jest trójkąt prostokątny 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
201	2024-10-26 18:19:50.9007+00	9	9 -> Dany jest trójkąt prostokątny 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
202	2024-10-26 18:20:34.747704+00	10	10 -> Rozwiąż równanie \\(4\\sin(4x)\\c	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
203	2024-10-26 18:22:25.802933+00	1	1 -> Dany jest sześcian \\(ABCDEFGH\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
204	2024-10-26 18:26:05.69398+00	5	5 -> Czworokąt \\(𝐴𝐵𝐶𝐷\\), w którym \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
205	2024-10-26 18:26:47.086057+00	5	5 -> Czworokąt \\(𝐴𝐵𝐶𝐷\\), w którym \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
206	2024-10-26 18:27:04.242896+00	5	5 -> Czworokąt \\(𝐴𝐵𝐶𝐷\\), w którym \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
207	2024-10-26 18:29:30.051626+00	12	12 -> Rozwiąż nierówność \\(\\sqrt{x^2	1	[{"added": {}}]	12	1
208	2024-10-26 18:30:00.665337+00	12	12 -> Rozwiąż nierówność \\(\\sqrt{x^2	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
209	2024-10-26 18:34:25.189729+00	2	2 -> Określamy kwadraty \\(𝐾_{1}, 𝐾_	2	[{"changed": {"fields": ["Numer zadania", "Tresc"]}}]	12	1
210	2024-10-26 18:35:24.812485+00	2	2 -> Określamy kwadraty \\(𝐾_{1}, 𝐾_	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
211	2024-10-26 18:39:19.787805+00	4	4 -> W kartezjańskim układzie współ	2	[{"changed": {"fields": ["Numer zadania", "Tresc"]}}]	12	1
212	2024-10-26 18:40:17.174278+00	4	4 -> W kartezjańskim układzie współ	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
213	2024-10-26 18:40:52.383743+00	3	3 -> Zadanie 82. Funkcja  \\(f\\)  je	2	[{"changed": {"fields": ["Numer zadania", "Tresc"]}}]	12	1
214	2024-10-26 18:42:30.160203+00	13	13 -> Wyznacz wszystkie wartości par	1	[{"added": {}}]	12	1
215	2024-10-26 18:43:15.520105+00	13	13 -> Wyznacz wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
216	2024-10-26 18:43:51.647467+00	13	13 -> Wyznacz wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
217	2024-10-26 18:44:03.363599+00	13	13 -> Wyznacz wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
218	2024-10-26 18:44:26.38944+00	13	13 -> Wyznacz wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
219	2024-10-26 20:16:48.021132+00	3	3 -> Funkcja  \\(f\\)  jest określona	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
220	2024-10-26 20:19:44.141644+00	3	3 -> Funkcja  \\(f\\)  jest określona	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
221	2024-10-26 20:20:25.39751+00	3	3 -> Funkcja  \\(f\\)  jest określona	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
222	2024-10-26 20:25:02.124314+00	11	11 -> W chwili początkowej \\((𝑡 = 0)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
223	2024-10-26 20:29:51.687784+00	5	5 -> Czworokąt \\(𝐴𝐵𝐶𝐷\\), w którym \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
224	2024-10-26 20:31:09.129819+00	3	3 -> Funkcja  \\(f\\)  jest określona	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
225	2024-10-26 20:37:15.570345+00	3	3 -> Funkcja  \\(f\\)  jest określona	2	[]	12	1
226	2024-10-26 20:37:40.470399+00	3	3 -> Funkcja  \\(f\\)  jest określona	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
227	2024-10-26 20:47:03.509477+00	10	10 -> W chwili początkowej (𝑡 = 0) f	1	[{"added": {}}]	12	1
228	2024-10-26 20:48:07.854294+00	6	6 -> Oblicz granice \\(\\lim{x}\\frac{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
229	2024-10-26 20:49:39.51498+00	6	6 -> Oblicz granice \\(\\lim_{x \\to 2	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
230	2024-10-26 20:52:56.716739+00	7	7 -> W pewnym zakładzie mleczarskim	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
231	2024-10-26 20:55:37.559596+00	11	11 -> Funkcja 𝑓 jest określona wzore	1	[{"added": {}}]	12	1
232	2024-10-26 20:57:27.953641+00	12	12 -> Wykaż, że jeżeli \\(\\log{5}4 = 	1	[{"added": {}}]	12	1
233	2024-10-26 20:58:19.028086+00	12	12 -> Wykaż, że jeżeli \\(\\log_{5}{4}	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
234	2024-10-26 20:58:44.153439+00	12	12 -> Wykaż, że jeżeli \\(\\log_{5}{4}	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
235	2024-10-26 21:00:13.752098+00	8	8 -> Rozważamy wszystkie liczby nat	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
236	2024-10-26 21:02:12.352493+00	9	9 -> Trzywyrazowy ciąg  \\((x, y, z)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
237	2024-10-26 21:05:17.820975+00	5	5 -> Dany jest trójkąt \\(𝐴𝐵𝐶\\), któ	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
238	2024-10-26 21:06:38.444957+00	1	1 -> Zadanie 8.  \\((04\\) \\} Danyjes	3		12	1
240	2024-10-26 21:06:38.448087+00	4	4 -> Zadanie 83[‡C]2. (04) Pole  \\(	3		12	1
241	2024-10-26 21:06:38.449406+00	3	3 -> Zadanie 83 Rozwazamy wszystkie	3		12	1
242	2024-10-26 21:08:34.236049+00	13	13 -> Dany jest kwadrat \\(𝐴𝐵𝐶𝐷\\) o b	1	[{"added": {}}]	12	1
243	2024-10-26 21:08:50.538538+00	13	13 -> Dany jest kwadrat \\(𝐴𝐵𝐶𝐷\\) o b	2	[{"changed": {"fields": ["Numer zadania"]}}]	12	1
244	2024-10-26 21:13:56.814016+00	14	14 -> Rozwiąż równanie \\(\\sin(4x) - 	1	[{"added": {}}]	12	1
245	2024-10-26 21:16:35.743586+00	15	15 -> W kartezjańskim układzie współ	1	[{"added": {}}]	12	1
246	2024-10-26 21:19:29.215557+00	16	16 -> Wyznacz wszystkie wartości par	1	[{"added": {}}]	12	1
247	2024-10-26 21:20:58.186887+00	16	16 -> Wyznacz wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
248	2024-10-26 21:21:18.20835+00	16	16 -> Wyznacz wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
249	2024-10-26 21:23:15.780993+00	17	17 -> Rozważamy wszystkie graniastos	1	[{"added": {}}]	12	1
250	2024-10-26 21:26:03.026672+00	17	17 -> Rozważamy wszystkie graniastos	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
251	2024-10-26 21:53:08.720898+00	1	1 -> Wykaż, że różnica kwadratów dw	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
252	2024-10-26 21:56:03.771111+00	2	2 -> Wlaściciel hurtowni sprzedał \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
253	2024-10-26 21:58:27.900797+00	3	3 -> Narysuj wykres funkcji \\(f(x)=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
254	2024-10-26 22:00:26.674499+00	4	4 -> Wykresem funkcji  \\(f(x) =x^{2	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
255	2024-10-26 22:01:42.008418+00	5	5 -> Oblicz \\(\\sqrt{2\\sin^{3}\\alpha	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
256	2024-10-26 22:02:21.918466+00	5	5 -> Oblicz \\(\\frac{\\sqrt{2\\sin^{3}	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
257	2024-10-26 22:03:04.92762+00	5	5 -> Oblicz \\(\\frac{\\sqrt{2\\sin^{3}	2	[]	12	1
258	2024-10-26 22:05:43.01382+00	6	6 -> Z miejscowości  \\(A\\) i \\(B\\) 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
259	2024-10-26 22:08:27.195274+00	8	8 -> 31 grudnia Kowalski zaciągnął 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
260	2024-10-26 22:09:21.572286+00	9	9 -> Narysuj wykres funkcji  \\(f(x)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
261	2024-10-26 22:09:44.626777+00	9	9 -> Narysuj wykres funkcji  \\(f(x)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
262	2024-10-26 22:10:52.666295+00	10	10 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
263	2024-10-26 22:12:55.220588+00	11	11 -> Odcinek o końcach  \\(A(\\frac{5	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
264	2024-10-26 22:13:16.663466+00	11	11 -> Odcinek o końcach  \\(A(\\frac{5	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
265	2024-10-26 22:14:48.740753+00	12	12 -> Z wierzchołków podstawy  \\(AB\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
266	2024-10-26 22:28:15.17806+00	12	12 -> Z wierzchołków podstawy  \\(AB\\	2	[{"changed": {"fields": ["Punkty"]}}]	12	1
267	2024-10-26 22:28:58.553789+00	12	12 -> Z wierzchołków podstawy  \\(AB\\	2	[{"changed": {"fields": ["Punkty"]}}]	12	1
268	2024-10-26 22:34:15.867154+00	1	1 -> Dla pewnego kąta ostrego \\(\\al	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
269	2024-10-26 22:35:31.83474+00	2	2 -> Po modernizacji linii kolejowe	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
270	2024-10-26 22:35:59.170902+00	3	3 -> Wyznaczyć dziedzinę oraz najmn	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
271	2024-10-26 22:37:11.040443+00	4	4 -> Wyznaczyć wzory tych funkcji k	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
272	2024-10-26 22:39:07.806381+00	5	5 -> Uprościć wyrażenie (dla tych  	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
273	2024-10-26 22:40:41.758904+00	6	6 -> Dane są zbiory  \\(A=\\{(x,y):4|	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
274	2024-10-26 22:41:49.229856+00	7	7 -> Wiedząc, że dla wypukłego  kąt	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
275	2024-10-26 22:42:20.423755+00	8	8 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
276	2024-10-26 22:47:13.782551+00	9	9 -> Ciężarówka o długości  16m jed	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
277	2024-10-26 22:50:32.639003+00	10	10 -> Narysować wykres funkcji  \\(f(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
278	2024-10-26 22:52:16.667984+00	11	11 -> Uprościć wyrazenie (dla tych  	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
279	2024-10-26 22:52:39.317493+00	11	11 -> Uprościć wyrażenie (dla tych  	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
280	2024-10-26 22:53:22.618199+00	12	12 -> Dane są zbiory  \\(A=\\{(x,y):x^	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
281	2024-10-27 13:27:39.955214+00	1	1 -> Dla pewnego kąta ostrego \\(\\al	3		12	1
282	2024-10-27 13:27:39.95991+00	2	2 -> Po modernizacji linii kolejowe	3		12	1
283	2024-10-27 13:27:39.960914+00	3	3 -> Wyznaczyć dziedzinę oraz najmn	3		12	1
284	2024-10-27 13:27:39.961761+00	4	4 -> Wyznaczyć wzory tych funkcji k	3		12	1
285	2024-10-27 13:27:39.962619+00	5	5 -> Uprościć wyrażenie (dla tych  	3		12	1
286	2024-10-27 13:27:39.96336+00	6	6 -> Dane są zbiory  \\(A=\\{(x,y):4|	3		12	1
287	2024-10-27 13:27:39.96411+00	7	7 -> Wiedząc, że dla wypukłego  kąt	3		12	1
288	2024-10-27 13:27:39.964865+00	8	8 -> Dla jakich wartości parametru 	3		12	1
289	2024-10-27 13:27:39.965523+00	9	9 -> Ciężarówka o długości  16m jed	3		12	1
290	2024-10-27 13:27:39.966097+00	10	10 -> Narysować wykres funkcji  \\(f(	3		12	1
291	2024-10-27 13:27:39.966735+00	11	11 -> Uprościć wyrażenie (dla tych  	3		12	1
292	2024-10-27 13:27:39.967386+00	12	12 -> Dane są zbiory  \\(A=\\{(x,y):x^	3		12	1
293	2024-10-27 23:34:05.941929+00	13	13 -> Narysuj wykres funkcji \\(f(x)=	1	[{"added": {}}]	12	1
294	2024-10-27 23:54:54.699648+00	14	14 -> Oblicz 2\\(\\sin^{3}\\alpha+3\\sin	1	[{"added": {}}]	12	1
295	2024-10-28 01:46:13.381903+00	15	15 -> Dane są zbiory \\(A=\\{(xy):x^{2	1	[{"added": {}}]	12	1
296	2024-10-29 09:49:33.693696+00	1	1 -> Dla pewnego kąta ostrego $\\alp	3		12	1
297	2024-10-29 09:49:33.696992+00	2	2 -> Po modernizacji linii kolejowe	3		12	1
298	2024-10-29 09:49:33.697899+00	3	3 -> Wyznaczyć dziedzinę oraz najmn	3		12	1
299	2024-10-29 09:49:33.698852+00	4	4 -> Wyznaczyć wzory tych funkcji k	3		12	1
300	2024-10-29 09:49:33.70015+00	5	5 -> Uprościć wyrazenie (dla tych $	3		12	1
301	2024-10-29 09:49:33.70095+00	6	6 -> Dane są zbiory $A=\\{(x,y):4|x|	3		12	1
302	2024-10-29 09:49:33.701716+00	7	7 -> $\\mathrm{W}\\mathrm{i}\\mathrm{e	3		12	1
303	2024-10-29 09:49:33.702299+00	8	8 -> Dlajakich wartości parametru $	3		12	1
304	2024-10-29 09:49:33.702882+00	9	9 -> Cięzarówka $0$ długości $16\\ma	3		12	1
305	2024-10-29 09:49:33.703463+00	10	10 -> Narysować wykres funkcji $f(x)	3		12	1
306	2024-10-29 09:49:33.70406+00	11	11 -> Uprościć wyrazenie (dla tych $	3		12	1
307	2024-10-29 09:49:33.704599+00	12	12 -> Dane są zbiory $A=\\{(x,y):x^{2	3		12	1
308	2024-10-29 09:49:33.705238+00	13	13 -> Narysuj wykres funkcji \\(f(x)=	3		12	1
309	2024-10-29 09:49:33.706258+00	14	14 -> Oblicz 2\\(\\sin^{3}\\alpha+3\\sin	3		12	1
310	2024-10-29 09:49:33.706769+00	15	15 -> Dane są zbiory \\(A=\\{(xy):x^{2	3		12	1
311	2024-10-30 10:25:01.610733+00	1	1 -> Z miast \\(A\\) i \\(B\\) odległyc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
312	2024-10-30 10:25:32.660865+00	2	2 -> Wyznaczyć dziedziny funkcji \\(	2	[]	12	1
313	2024-10-30 10:26:24.583723+00	3	3 -> Liczby {\\it p}\\(=\\)--(\\(\\sqrt{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
314	2024-10-30 10:27:12.984399+00	3	3 -> Liczby {\\it p}$=$--($\\sqrt{}$3	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
315	2024-10-30 10:28:12.919324+00	3	3 -> Liczby \\(p=\\frac{1}{1}\\) i \\(q	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
316	2024-10-30 10:28:33.455552+00	3	3 -> Liczby \\(p=\\frac{?}{?}\\) i \\(q	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
317	2024-10-30 10:29:08.866616+00	4	4 -> Niech \\(f(x)=x^{2}\\) Narysować	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
318	2024-10-30 10:30:07.918109+00	5	5 -> Wykresy funkcji \\(f(x)=\\frac{m	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
319	2024-10-30 10:32:33.092761+00	6	6 -> W kwadrat \\(ABCD\\) wpisano kwa	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
320	2024-10-30 10:35:01.701647+00	7	7 -> Statek wyrusza (z biegiem rzek	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
321	2024-10-30 10:36:02.365285+00	8	8 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
322	2024-10-30 10:36:43.461881+00	9	9 -> Dla jakich wartości rzeczywist	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
323	2024-10-30 10:37:28.094099+00	10	10 -> Wykresy funkcji \\(f(x)=(m-1)x+	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
324	2024-10-30 10:38:18.573359+00	12	12 -> Punkt \\(D\\) dzieli bok \\(AB\\) 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
325	2024-10-30 10:39:25.032362+00	11	11 -> Obliczyć wartości \\(p=\\sqrt{19	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
326	2024-10-30 22:34:53.804443+00	13	13 -> \\(Tobiasz <3\\)	3		12	1
327	2024-10-30 22:38:02.391576+00	1	1 -> Uprościć następujące wyrażenie	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
328	2024-10-30 22:39:01.276212+00	2	2 -> Niech \\(B\\) oznacza dziedzinę 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
329	2024-10-30 22:40:20.79768+00	2	2 -> Niech \\(B\\) oznacza dziedzinę 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
330	2024-10-30 22:40:52.915826+00	2	2 -> Niech \\(B\\) oznacza dziedzinę 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
331	2024-10-30 22:42:27.7596+00	3	3 -> Podać wzór funkcji kwadratowej	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
332	2024-10-30 22:43:11.968335+00	4	4 -> W pewnym ciągu arytmetycznym r	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
333	2024-10-30 22:43:18.250632+00	5	5 -> Przekątne trapezu prostokątneg	2	[]	12	1
334	2024-10-30 22:43:55.750301+00	6	6 -> Ostrosłup prawidłowy, którego 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
335	2024-10-30 22:45:30.985492+00	7	7 -> Uprościć następujące wyrażenie	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
336	2024-10-30 22:46:57.445506+00	8	8 -> Dla jakiego rzeczywistego para	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
337	2024-10-30 22:48:24.020481+00	9	9 -> Dane są liczby: \\(m= \\frac{\\le	2	[]	12	1
338	2024-10-30 22:49:25.421873+00	10	10 -> Podać wzór funkcji homograficz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
339	2024-10-30 22:51:17.234573+00	11	11 -> W czworokącie wypukłym \\(ABCD\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
340	2024-10-30 22:52:40.391604+00	12	12 -> W ostrosłupie prawidłowym czwo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
341	2024-10-30 22:55:18.653077+00	1	1 -> Promień podstawy stożka obroto	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
342	2024-10-30 22:55:52.129149+00	2	2 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
343	2024-10-30 22:56:35.738601+00	3	3 -> Określić dziedzinę i uprościć 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
344	2024-10-30 22:57:33.190517+00	4	4 -> Niech \\(f(x)=x^{2}\\). Narysowa	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
345	2024-10-30 22:57:55.538912+00	5	5 -> Obliczyć pole koła wpisanego w	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
346	2024-10-30 22:58:39.156782+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[]	12	1
347	2024-10-30 22:59:59.914096+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[]	12	1
348	2024-10-30 23:00:25.493964+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
349	2024-10-30 23:00:52.987643+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
350	2024-10-30 23:02:04.025274+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
351	2024-10-30 23:02:32.387989+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
352	2024-10-30 23:02:51.513681+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
353	2024-10-30 23:03:02.930815+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
354	2024-10-30 23:03:17.921112+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
355	2024-10-30 23:03:37.585321+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
356	2024-10-30 23:03:59.65023+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
357	2024-10-30 23:04:19.461737+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[]	12	1
358	2024-10-30 23:04:30.560469+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
359	2024-10-30 23:04:42.300049+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
360	2024-10-30 23:05:56.060175+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
361	2024-10-30 23:06:49.973763+00	6	6 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
362	2024-10-30 23:07:46.171922+00	7	7 -> Pewna liczba pięciocyfrowa zac	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
363	2024-10-30 23:09:31.498373+00	8	8 -> Określić dziedzinę i uprościć 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
364	2024-10-30 23:10:54.903163+00	9	9 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
365	2024-10-30 23:11:33.507246+00	10	10 -> Długości boków trójkąta prosto	2	[]	12	1
366	2024-10-30 23:12:14.712317+00	11	11 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
367	2024-10-30 23:13:13.243043+00	12	12 -> Dane są zbiory \\(A=\\{(x,y)\\in 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
368	2024-10-30 23:16:10.962722+00	1	1 -> Pan Kowalski założył dwie loka	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
369	2024-10-30 23:16:51.336735+00	2	2 -> Niech \\(A=\\{x\\in 1\\mathrm{R}:\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
370	2024-10-30 23:17:36.752159+00	2	2 -> Niech \\(A=\\{x\\in 1\\mathbb{R}:\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
623	2024-11-03 20:14:32.171353+00	6	6 -> Na szczycie góry, na którą wch	2	[]	12	1
371	2024-10-30 23:17:46.500668+00	2	2 -> Niech \\(A=\\{x\\in \\mathbb{R}:\\f	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
372	2024-10-30 23:19:03.390011+00	3	3 -> Uprościć wyrażenie (dla tych \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
373	2024-10-30 23:20:25.404844+00	4	4 -> Odcinek \\(AB\\) jest średnicą o	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
374	2024-10-30 23:21:21.098828+00	5	5 -> Pole trójkąta równobocznego \\(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
375	2024-10-30 23:21:39.776924+00	6	6 -> Pole powierzchni bocznej stożk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
376	2024-10-30 23:22:46.927819+00	7	7 -> Określić dziedzinę i uprościć 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
377	2024-10-30 23:23:29.537762+00	8	8 -> Wyznaczyć sinus kąta przy wier	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
378	2024-10-30 23:24:33.564676+00	9	9 -> Narysować obszar \\(D=\\{(x,y):|	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
379	2024-10-30 23:27:44.852089+00	10	10 -> W trójkącie \\(ABC\\) dane są: \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
380	2024-10-30 23:29:38.17454+00	11	11 -> Basen można na napełnić, otwie	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
381	2024-10-30 23:30:03.436772+00	12	12 -> W ostrosłupie prawidłowym czwo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
382	2024-10-30 23:33:56.792319+00	1	1 -> W pierwszym naczyniu było \\(a\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
383	2024-10-30 23:34:17.624138+00	2	2 -> Uprość następujące wyrażenie, 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
384	2024-10-30 23:34:48.393587+00	2	2 -> Uprość następujące wyrażenie, 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
385	2024-10-30 23:35:35.461521+00	3	3 -> Narysuj wykres funkcji \\(f(x)=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
386	2024-10-30 23:36:54.866956+00	4	4 -> Niech \\(A=\\{(x,y)\\in \\mathbb{R	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
387	2024-10-30 23:37:38.949237+00	4	4 -> Niech \\(A=\\{(x,y)\\in \\mathbb{R	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
388	2024-10-30 23:38:40.877974+00	5	5 -> W kwadrat wpisano trójkąt równ	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
389	2024-10-30 23:38:56.115315+00	6	6 -> W ostrosłupie prawidlowym trój	2	[]	12	1
390	2024-10-30 23:39:34.229604+00	7	7 -> W pierwszym naczyniu było \\(a\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
391	2024-10-30 23:41:38.363306+00	8	8 -> Uprość wyrażenie (dla tych x, 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
392	2024-10-30 23:42:58.05901+00	9	9 -> Narysuj wykres funkcji \\(f(x)=	2	[]	12	1
393	2024-10-30 23:44:01.332569+00	10	10 -> Niech \\(A=\\{(x,y)\\in \\mathbb{R	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
394	2024-10-30 23:44:21.688168+00	10	10 -> Niech \\(A=\\{(x,y)\\in \\mathbb{R	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
395	2024-10-30 23:46:04.751014+00	11	11 -> W romb \\(ABCD\\) o boku \\(a\\) i	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
396	2024-10-30 23:46:29.433157+00	12	12 -> W ostrosłupie prawidłowym trój	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
397	2024-10-30 23:48:49.105612+00	7	7 -> W pierwszym naczyniu było \\(a\\	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
398	2024-10-30 23:48:57.388796+00	8	8 -> Uprość wyrażenie (dla tych x, 	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
399	2024-10-30 23:49:02.531135+00	9	9 -> Narysuj wykres funkcji \\(f(x)=	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
400	2024-10-30 23:49:07.710838+00	9	9 -> Narysuj wykres funkcji \\(f(x)=	2	[]	12	1
401	2024-10-30 23:49:12.678099+00	10	10 -> Niech \\(A=\\{(x,y)\\in \\mathbb{R	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
402	2024-10-30 23:49:18.008013+00	11	11 -> W romb \\(ABCD\\) o boku \\(a\\) i	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
403	2024-10-30 23:49:22.745944+00	12	12 -> W ostrosłupie prawidłowym trój	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
404	2024-10-30 23:52:21.202041+00	1	1 -> Wykaż, że różnica kwadratów dw	2	[]	12	1
405	2024-10-30 23:53:14.402445+00	2	2 -> Określ dziedzinę wyrażenia \\(w	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
406	2024-10-30 23:53:29.558334+00	2	2 -> Określ dziedzinę wyrażenia \\(w	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
407	2024-10-30 23:55:01.886996+00	3	3 -> Dwie drużyny harcerskie postan	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
408	2024-10-30 23:55:45.305434+00	4	4 -> Wyznacz wartości wszystkich fu	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
409	2024-10-30 23:56:02.402458+00	4	4 -> Wyznacz wartości wszystkich fu	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
410	2024-10-30 23:57:17.444688+00	5	5 -> Funkcja liniowa \\(f(x)=ax+b\\) 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
411	2024-10-30 23:58:32.462613+00	6	6 -> Niech \\(A= \\{(x,y):|x|\\leq 2,|	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
412	2024-10-30 23:58:44.827298+00	6	6 -> Niech \\(A= \\{(x,y):|x|\\leq 2,|	2	[]	12	1
413	2024-10-30 23:59:19.167313+00	7	7 -> Wykaż, że jeżeli \\(p\\) jest li	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
414	2024-10-31 00:00:21.951121+00	8	8 -> Określ dziedzinę wyrażenia: \\(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
415	2024-10-31 00:01:20.525959+00	9	9 -> Trzech informatyków podjęło si	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
416	2024-10-31 00:02:12.216118+00	10	10 -> Wyznacz wartości wszystkich fu	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
417	2024-10-31 00:02:28.189703+00	10	10 -> Wyznacz wartości wszystkich fu	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
418	2024-10-31 00:04:07.148252+00	11	11 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
419	2024-10-31 00:04:53.910998+00	12	12 -> Niech \\(A=\\{(x,y):\\sqrt{3}|x|+	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
420	2024-10-31 00:07:38.438807+00	1	1 -> Uprość wyrażenie \\(\\frac{x^{-1	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
421	2024-10-31 00:08:10.355789+00	2	2 -> W jakim stosunku należy zmiesz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
422	2024-10-31 00:08:17.407848+00	3	3 -> Rozwiąż nierówność \\(x-|5x-2|<	2	[]	12	1
423	2024-10-31 00:08:47.708384+00	4	4 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
424	2024-10-31 00:09:45.342931+00	5	5 -> Wiedząc, że 1 i 3 są pierwiast	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
425	2024-10-31 00:11:00.106775+00	6	6 -> Narysuj wykres funkcji \\(f(x)=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
426	2024-10-31 00:11:28.90494+00	7	7 -> Dla jakich wartości parametru 	2	[]	12	1
427	2024-10-31 00:12:36.197242+00	8	8 -> W sali ustawiono krzesła i trz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
428	2024-10-31 00:14:02.185897+00	11	11 -> Rozwiąż układ równań \\begin{ar	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
429	2024-10-31 00:14:22.043831+00	12	12 -> Wyznacz wartości parametru \\(p	2	[]	12	1
430	2024-10-31 00:22:06.7679+00	1	1 -> Grupa przyjaciół postanowiła k	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
431	2024-10-31 00:22:42.469593+00	2	2 -> Liczby a, b, c dają przy dziel	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
432	2024-10-31 00:23:13.326836+00	3	3 -> Dla jakiego parametru \\(m\\) pi	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
433	2024-10-31 00:23:44.139742+00	3	3 -> Dla jakiego parametru \\(m\\) pi	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
434	2024-10-31 00:24:53.418141+00	4	4 -> Oblicz wartość wyrazeń \\(\\alph	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
435	2024-10-31 00:26:28.251619+00	4	4 -> Oblicz wartość wyrazeń \\(\\alph	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
436	2024-10-31 00:26:46.932115+00	4	4 -> Oblicz wartość wyrazeń \\(\\alph	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
437	2024-10-31 00:27:26.374772+00	4	4 -> Oblicz wartość wyrazeń \\(\\alph	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
438	2024-10-31 00:30:34.40838+00	5	5 -> Punkty \\(A(1,0)\\), \\(B(5,2)\\),	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
439	2024-10-31 00:31:30.368765+00	6	6 -> Krawędź boczna ostrosłupa praw	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
440	2024-10-31 00:31:50.399212+00	7	7 -> Dla jakich wartości parametru 	2	[]	12	1
441	2024-10-31 00:32:19.254117+00	8	8 -> Wykorzystując dwumian Newtona,	2	[]	12	1
442	2024-10-31 00:32:39.70367+00	9	9 -> Wykaż, że w dowolnym trójkącie	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
443	2024-10-31 00:33:50.754269+00	10	10 -> Dany jest trapez prostokątny o	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
444	2024-10-31 00:34:50.33363+00	11	11 -> Narysuj wykres funkcji \\( f(x)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
445	2024-10-31 00:35:38.781347+00	12	12 -> Podstawą ostrosłupa jest trape	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
446	2024-10-31 00:39:24.948772+00	1	1 -> Prawdopodobieństwo, że w dowol	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
447	2024-10-31 00:39:51.299135+00	2	2 -> Rozwiąż nierówność wykładniczą	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
448	2024-10-31 00:41:05.160767+00	3	3 -> W trójkącie równoramiennym \\(\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
449	2024-10-31 00:42:14.841789+00	4	4 -> Wyznacz wszystkie możliwe wart	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
450	2024-10-31 00:42:36.334349+00	4	4 -> Wyznacz wszystkie możliwe wart	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
451	2024-10-31 00:43:01.745033+00	5	5 -> Niech \\(x\\in[0,2\\pi]\\). Rozwią	2	[]	12	1
452	2024-10-31 00:43:22.316383+00	6	6 -> Wyznacz wszystkie argumenty x,	2	[]	12	1
453	2024-10-31 00:43:49.58319+00	7	7 -> Rzucamy cztery razy jednorodną	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
454	2024-10-31 00:44:54.223612+00	8	8 -> Rozwiąż równanie trygonometryc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
455	2024-10-31 00:45:15.78909+00	8	8 -> Rozwiąż równanie trygonometryc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
456	2024-10-31 00:45:35.502141+00	8	8 -> Rozwiąż równanie trygonometryc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
457	2024-10-31 00:46:48.846662+00	8	8 -> Rozwiąż równanie trygonometryc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
458	2024-10-31 00:47:26.60291+00	8	8 -> Rozwiąż równanie trygonometryc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
459	2024-10-31 00:48:19.429692+00	9	9 -> Rozwiąż równanie \\(5^{tg^{2}x-	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
460	2024-10-31 00:48:42.505546+00	10	10 -> Rozwiąż nierówność logarytmicz	2	[]	12	1
461	2024-10-31 00:49:04.329404+00	11	11 -> Wyznacz dziedzinę i miejsca ze	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
462	2024-10-31 00:49:23.528362+00	11	11 -> Wyznacz dziedzinę i miejsca ze	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
463	2024-10-31 00:50:13.733064+00	12	12 -> W trójkącie równoramiennym \\(\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
464	2024-10-31 00:55:59.184542+00	1	1 -> Do sklepu dostarczono ziemniak	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
465	2024-10-31 00:56:24.47835+00	2	2 -> Na loterii jest 100 losów, z k	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
466	2024-10-31 00:57:20.865651+00	3	3 -> Dany jest kwadrat o boku \\(a\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
467	2024-10-31 00:57:47.295042+00	4	4 -> Wysokość rombu o boku \\(a\\) dz	2	[]	12	1
468	2024-10-31 00:58:23.496472+00	5	5 -> Znajdź współrzędne wierzchołka	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
469	2024-10-31 00:59:36.097575+00	6	6 -> Prosta o równaniu \\(x-2y+10=0\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
470	2024-10-31 01:00:32.193833+00	7	7 -> Kat ostry równoległoboku ma mi	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
471	2024-10-31 01:01:12.582932+00	8	8 -> Spośród 20 pytań egzaminacyjny	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
472	2024-10-31 01:02:06.643036+00	9	9 -> Czworościan rozcięto wzdłuż tr	2	[]	12	1
473	2024-10-31 01:02:55.687225+00	10	10 -> Przez punkt \\((-1,2)\\) przepro	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
474	2024-10-31 01:03:34.682083+00	11	11 -> Rozwiąż algebraicznie następuj	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
475	2024-10-31 01:05:08.964269+00	12	12 -> Funkcja \\(f(x)=\\frac{x^{2}-4x+	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
476	2024-10-31 01:05:40.127038+00	12	12 -> Funkcja \\(f(x)=\\frac{x^{2}-4x+	2	[]	12	1
477	2024-10-31 01:12:29.824944+00	1	1 -> Wyznacz miarę kąta ostrego \\(\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
478	2024-10-31 01:13:14.873625+00	2	2 -> Dane są wierzchołki \\(A(-1,-2)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
479	2024-10-31 01:13:25.588851+00	3	3 -> Trójkąt prostokątny o polu 30 	2	[]	12	1
480	2024-10-31 01:14:46.269424+00	4	4 -> Cięciwy AB i CD (punkt \\(C\\) l	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
481	2024-10-31 01:15:36.820885+00	5	5 -> Dane są punkty \\(A(8,2)\\) i \\(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
482	2024-10-31 01:16:21.752186+00	6	6 -> W ostrosłupie prawidłowym trój	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
483	2024-10-31 01:16:49.390081+00	6	6 -> W ostrosłupie prawidłowym trój	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
484	2024-10-31 01:17:52.810873+00	7	7 -> Wiedząc, że \\(\\sin 2x=-\\frac{3	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
485	2024-10-31 01:19:10.280373+00	8	8 -> Wektory \\(\\vec{u}\\), \\(\\vec{v}	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
486	2024-10-31 01:20:21.531251+00	9	9 -> Przekątne trapezu \\(ABCD\\) prz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
487	2024-10-31 01:21:21.942223+00	10	10 -> Na okręgu \\(x^{2}+y^{2}-2x-2y=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
488	2024-10-31 01:24:39.055498+00	11	11 -> W trójkącie równoramiennym \\(A	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
489	2024-10-31 01:25:33.922714+00	12	12 -> W ostrosłupie prawidłowym trój	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
490	2024-10-31 01:30:42.541415+00	1	1 -> W trójkącie \\(ABC\\) wpisanym w	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
491	2024-10-31 01:31:09.650087+00	2	2 -> Rozwiąż równanie \\(|\\sin{x}|+|	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
492	2024-10-31 01:31:38.542878+00	3	3 -> Dana jest funkcja \\(f(x)=\\cos(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
493	2024-10-31 01:33:20.901663+00	4	4 -> Niech \\(\\alpha\\), \\(\\beta\\) i 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
494	2024-10-31 01:33:48.90406+00	5	5 -> Na okręgu o promieniu \\(r\\) op	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
495	2024-10-31 01:35:13.760235+00	6	6 -> Pewną górę widać najpierw pod 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
496	2024-10-31 01:36:10.712917+00	7	7 -> Udowodnij, że \\(\\cos{4x}=1-8\\c	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
497	2024-10-31 01:37:52.522667+00	8	8 -> Wykaż, że dla każdego trójkąta	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
498	2024-10-31 01:39:08.385259+00	9	9 -> Dana jest funkcja \\(f(x)=\\sin{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
499	2024-10-31 01:39:51.178856+00	10	10 -> Przekątne trapezu dzielą ten t	2	[]	12	1
500	2024-10-31 01:46:17.625517+00	11	11 -> Manipulator robota składa się 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
501	2024-10-31 01:47:07.900888+00	12	12 -> Okrąg o promieniu \\(r\\) toczy 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
502	2024-10-31 01:48:52.363537+00	1	1 -> Rozwiąż nierówność \\(1\\leq\\log	2	[]	12	1
503	2024-10-31 01:49:57.144687+00	2	2 -> Średnia arytmetyczna czwartego	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
504	2024-10-31 01:51:11.947185+00	3	3 -> W ciągu arytmetycznym \\((a_{n}	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
505	2024-10-31 01:51:41.753918+00	4	4 -> Bank oferuje kredyt, który nal	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
506	2024-10-31 01:52:53.610257+00	5	5 -> Zaznacz na osi liczbowej zbiór	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
507	2024-10-31 01:53:47.066044+00	6	6 -> Niech \\(c>0\\) i \\(c\\neq 1\\). W	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
508	2024-10-31 01:54:44.430074+00	6	6 -> Niech \\(c>0\\) i \\(c\\neq 1\\). W	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
509	2024-10-31 01:55:52.952205+00	7	7 -> Uzasadnij, że ciąg \\((a_{n})\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
510	2024-10-31 01:56:26.251885+00	8	8 -> Wyznacz dziedzinę \\(D_{f}\\) fu	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
511	2024-10-31 01:56:46.732134+00	8	8 -> Wyznacz dziedzinę \\(D_{f}\\) fu	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
512	2024-10-31 01:57:53.103444+00	9	9 -> Niech \\(c>0\\). Zbadaj monotoni	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
513	2024-10-31 01:59:00.384698+00	10	10 -> Rozwiąż nierówność \\(\\sqrt{\\lo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
514	2024-10-31 01:59:41.455956+00	11	11 -> Określ ilość rozwiązań równani	2	[]	12	1
515	2024-10-31 02:00:27.797895+00	12	12 -> Opisz metodę konstrukcji i sta	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
516	2024-11-01 18:50:17.977157+00	13	13 -> Dane są zbiory \\(A=\\{(x,y):4|x	1	[{"added": {}}]	12	1
517	2024-11-01 18:52:44.979874+00	13	13 -> Dane są zbiory \\(A=\\{(x,y):4|x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
518	2024-11-01 20:10:15.987428+00	14	14 -> Dana jest funkcja \\(f(x)=\\cos(	1	[{"added": {}}]	12	1
519	2024-11-01 20:11:28.67734+00	15	15 -> P:  Narysuj wykres funkcji \\(f	1	[{"added": {}}]	12	1
520	2024-11-01 20:13:28.919406+00	1	1 -> Rozwiąż nierówność \\(1\\leq\\log	3		12	1
521	2024-11-01 20:13:28.921804+00	2	2 -> Średnia arytmetyczna czwartego	3		12	1
522	2024-11-01 20:13:28.922757+00	3	3 -> W ciągu arytmetycznym \\((a_{n}	3		12	1
523	2024-11-01 20:13:28.92374+00	4	4 -> Bank oferuje kredyt, który nal	3		12	1
524	2024-11-01 20:13:28.924594+00	5	5 -> Zaznacz na osi liczbowej zbiór	3		12	1
525	2024-11-01 20:13:28.925251+00	6	6 -> Niech \\(c>0\\) i \\(c\\neq 1\\). W	3		12	1
526	2024-11-01 20:13:28.92597+00	7	7 -> Uzasadnij, że ciąg \\((a_{n})\\)	3		12	1
527	2024-11-01 20:13:28.926629+00	8	8 -> Wyznacz dziedzinę \\(D_{f}\\) fu	3		12	1
528	2024-11-01 20:13:28.927178+00	9	9 -> Niech \\(c>0\\). Zbadaj monotoni	3		12	1
529	2024-11-01 20:13:28.927809+00	10	10 -> Rozwiąż nierówność \\(\\sqrt{\\lo	3		12	1
530	2024-11-01 20:13:28.928337+00	11	11 -> Określ ilość rozwiązań równani	3		12	1
531	2024-11-01 20:13:28.928958+00	12	12 -> Opisz metodę konstrukcji i sta	3		12	1
532	2024-11-01 20:13:28.929698+00	13	13 -> Dane są zbiory \\(A=\\{(x,y):4|x	3		12	1
533	2024-11-01 20:13:28.93036+00	14	14 -> Dana jest funkcja \\(f(x)=\\cos(	3		12	1
534	2024-11-01 20:13:28.931046+00	15	15 -> P:  Narysuj wykres funkcji \\(f	3		12	1
535	2024-11-01 20:13:32.580119+00	16	16 -> P:  Dane sa zbiory \\(A=\\{(x,y)	1	[{"added": {}}]	12	1
536	2024-11-01 20:13:41.4378+00	16	16 -> P:  Dane sa zbiory \\(A=\\{(x,y)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
537	2024-11-01 20:13:50.505924+00	16	16 -> P:  Dane sa zbiory \\(A=\\{(x,y)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
538	2024-11-01 20:14:01.063942+00	16	16 -> P:  Dane sa zbiory \\(A=\\{(x,y)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
539	2024-11-01 20:27:48.461398+00	17	17 -> W:  Uprość następujące wyrażen	1	[{"added": {}}]	12	1
540	2024-11-01 20:28:04.074332+00	17	17 -> W:  Uprość następujące wyrażen	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
541	2024-11-01 20:34:04.874304+00	18	18 -> PP;6;-1;Niech \\(A=\\{x\\in \\math	1	[{"added": {}}]	12	1
542	2024-11-01 20:35:01.490057+00	18	18 -> PP;6;-1;Niech \\(A=\\{x\\in \\math	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
543	2024-11-01 20:36:46.980919+00	18	18 -> PP;6;-1;Niech \\(A=\\{x\\in \\math	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
544	2024-11-02 00:56:48.01883+00	19	19 -> PP;6;-1;W kwadrat \\(ABCD\\) wpi	1	[{"added": {}}]	12	1
545	2024-11-02 15:05:55.081857+00	20	20 -> Dane są liczby: \\(m= \\frac{\\le	1	[{"added": {}}]	12	1
546	2024-11-02 15:35:41.153339+00	21	21 -> Niech \\(B\\) oznacza dziedzinę 	1	[{"added": {}}]	12	1
547	2024-11-02 15:35:54.442215+00	21	21 -> Niech \\(B\\) oznacza dziedzinę 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
548	2024-11-02 18:33:37.266209+00	22	22 -> W:  Uprość wyrażenie \\(\\frac{x	1	[{"added": {}}]	12	1
549	2024-11-02 19:58:24.426956+00	23	23 -> W:  Niech \\(A=\\{x\\in \\mathbb{R	1	[{"added": {}}]	12	1
550	2024-11-02 19:58:39.604119+00	23	23 -> W:  Niech \\(A=\\{x\\in \\mathbb{R	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
551	2024-11-02 20:53:22.18953+00	24	24 -> W:  W trójkącie \\(ABC\\) dane s	1	[{"added": {}}]	12	1
552	2024-11-02 20:53:39.891553+00	24	24 -> W:  W trójkącie \\(ABC\\) dane s	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
553	2024-11-02 22:21:52.674602+00	25	25 -> W:  Niech \\(c>0\\) i \\(c\\neq 1\\	1	[{"added": {}}]	12	1
554	2024-11-02 22:22:04.917383+00	25	25 -> W:  Niech \\(c>0\\) i \\(c\\neq1\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
555	2024-11-02 22:24:34.471134+00	26	26 -> W:  Niech \\(c>0\\) i \\(c\\neq1\\)	1	[{"added": {}}]	12	1
556	2024-11-02 22:25:02.368202+00	27	27 -> W:  Niech \\(c>0\\) i \\(c\\neq1\\)	1	[{"added": {}}]	12	1
557	2024-11-02 22:25:25.572872+00	27	27 -> W:  Niech \\(c>0\\) i \\(c\\neq1\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
558	2024-11-02 22:29:21.636908+00	28	28 -> PR;3;-1;Dana jest funkcja \\(f(	1	[{"added": {}}]	12	1
559	2024-11-03 19:19:37.631397+00	1	1 -> Czy suma długości przekątnych 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
560	2024-11-03 19:20:19.063045+00	2	2 -> Grupa słuchaczy wykładu z alge	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
561	2024-11-03 19:21:28.389122+00	3	3 -> Hasło do pewnego systemu kompu	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
562	2024-11-03 19:21:35.093516+00	3	3 -> Hasło do pewnego systemu kompu	2	[]	12	1
563	2024-11-03 19:21:52.8646+00	4	4 -> Rozwiązać nierówność \\(x+1\\geq	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
564	2024-11-03 19:23:27.610059+00	5	5 -> Suma 21 pierwszych wyrazów pew	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
565	2024-11-03 19:25:05.832479+00	6	6 -> Marcin stoi nad brzegiem morza	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
566	2024-11-03 19:25:55.758504+00	7	7 -> Ułożono dwie wieże z sześcienn	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
567	2024-11-03 19:26:30.531043+00	8	8 -> Kod do sejfu w willi pana Boga	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
568	2024-11-03 19:26:45.148894+00	9	9 -> Rozwiązać nierówność \\(x-1>\\sq	2	[]	12	1
569	2024-11-03 19:27:20.796684+00	10	10 -> W jednej szklance znajduje się	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
570	2024-11-03 19:27:47.623239+00	11	11 -> Trzy liczby tworzą ciąg geomet	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
571	2024-11-03 19:28:20.923801+00	12	12 -> Bocian stoi na słupie o wysoko	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
572	2024-11-03 19:41:20.784381+00	1	1 -> Rozwiązać nierówność \\(2x-2>\\s	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
573	2024-11-03 19:41:50.946608+00	2	2 -> Dla jakich wartości parametru 	2	[]	12	1
574	2024-11-03 19:42:14.414775+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
575	2024-11-03 19:42:33.396702+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
576	2024-11-03 19:42:45.084781+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
577	2024-11-03 19:43:05.331994+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
578	2024-11-03 19:43:18.607854+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
579	2024-11-03 19:43:43.824766+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
580	2024-11-03 19:43:56.823115+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
581	2024-11-03 19:44:11.07186+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
582	2024-11-03 19:44:31.781732+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
583	2024-11-03 19:45:06.504908+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
584	2024-11-03 19:46:15.439932+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
585	2024-11-03 19:47:02.356148+00	3	3 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
586	2024-11-03 19:48:27.458644+00	5	5 -> W trójkącie równoramiennym \\(A	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
587	2024-11-03 19:48:48.590894+00	6	6 -> W okrąg o promieniu \\(R\\) wpis	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
588	2024-11-03 19:49:19.303104+00	7	7 -> Rozwiązać nierówność \\(\\sqrt{2	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
589	2024-11-03 19:49:48.268866+00	8	8 -> Rozwiązać układ równań \\begin{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
590	2024-11-03 19:50:05.30985+00	8	8 -> Rozwiązać układ równań \\begin{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
591	2024-11-03 19:50:41.577529+00	9	9 -> Narysować staranny wykres funk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
592	2024-11-03 19:51:03.629404+00	10	10 -> Reszta z dzielenia wielomianu 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
593	2024-11-03 19:52:08.455112+00	11	11 -> Dany jest punkt \\(A(2,1)\\). Wy	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
594	2024-11-03 19:52:50.401018+00	12	12 -> Nad sześcianem o krawędzi \\(a\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
595	2024-11-03 19:54:51.471929+00	2	2 -> Rozwiązać równanie \\(\\frac{1}{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
596	2024-11-03 19:56:02.499131+00	4	4 -> Na prostej \\(l:2x-y-1=0\\) wyzn	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
597	2024-11-03 19:56:23.187795+00	5	5 -> W obszar ograniczony wykresem 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
598	2024-11-03 19:56:43.959187+00	6	6 -> W ostrosłupie, którego podstaw	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
599	2024-11-03 19:57:13.160565+00	7	7 -> Wyznaczyć dziedzinę funkcji \\(	2	[]	12	1
600	2024-11-03 19:57:24.769684+00	8	8 -> Rozwiązać równanie \\(\\sin^{4}x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
601	2024-11-03 19:57:59.039939+00	9	9 -> Narysować zbiór \\(\\{(x,y):|x|+	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
602	2024-11-03 19:59:27.143085+00	10	10 -> Niech \\(f(x)=\\frac{2x-1}{x-2}\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
603	2024-11-03 20:00:29.486338+00	11	11 -> Punkt \\(A(1,1)\\) jest wierzcho	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
604	2024-11-03 20:00:56.488449+00	12	12 -> W ostrosłupie, którego podstaw	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
605	2024-11-03 20:03:29.148303+00	7	7 -> Wyznaczyć dziedzinę funkcji \\(	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
606	2024-11-03 20:03:35.409221+00	8	8 -> Rozwiązać równanie \\(\\sin^{4}x	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
607	2024-11-03 20:03:41.520663+00	9	9 -> Narysować zbiór \\(\\{(x,y):|x|+	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
608	2024-11-03 20:03:46.990413+00	9	9 -> Narysować zbiór \\(\\{(x,y):|x|+	2	[]	12	1
609	2024-11-03 20:03:51.750491+00	12	12 -> W ostrosłupie, którego podstaw	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
610	2024-11-03 20:03:57.018876+00	11	11 -> Punkt \\(A(1,1)\\) jest wierzcho	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
611	2024-11-03 20:04:01.40058+00	10	10 -> Niech \\(f(x)=\\frac{2x-1}{x-2}\\	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
612	2024-11-03 20:09:13.215066+00	1	1 -> Niech \\(\\alpha\\) będzie kątem 	2	[]	12	1
613	2024-11-03 20:09:26.290339+00	2	2 -> Rozwiązać nierówność \\(x\\geq2+	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
614	2024-11-03 20:10:15.566095+00	3	3 -> Wykres trójmianu kwadratowego 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
615	2024-11-03 20:10:39.450158+00	3	3 -> Wykres trójmianu kwadratowego 	2	[]	12	1
616	2024-11-03 20:10:45.724665+00	4	4 -> W ciągu arytmetycznym, w który	2	[]	12	1
617	2024-11-03 20:11:19.389381+00	6	6 -> Na szczycie góry, na którą wch	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
618	2024-11-03 20:11:31.981328+00	7	7 -> W nieskończonym ciągu geometry	2	[]	12	1
619	2024-11-03 20:11:52.282608+00	8	8 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
620	2024-11-03 20:12:58.483227+00	10	10 -> Reszta z dzielenia wielomianu 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
621	2024-11-03 20:13:32.018726+00	11	11 -> Wyznaczyć pole trójkąta równob	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
622	2024-11-03 20:14:20.150785+00	12	12 -> W punktach \\(A(0,0)\\), \\(B(4,0	1	[{"added": {}}]	12	1
624	2024-11-03 20:14:57.724574+00	12	12 -> W punktach \\(A(0,0)\\), \\(B(4,0	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
625	2024-11-03 20:15:28.384508+00	12	12 -> W punktach \\(A(0,0)\\), \\(B(4,0	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
626	2024-11-03 20:19:09.447194+00	1	1 -> Niemieckie przepisy drogowe wy	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
627	2024-11-03 20:20:00.805796+00	12	12 -> sa	1	[{"added": {}}]	12	1
628	2024-11-03 20:20:45.540677+00	11	11 -> a	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
629	2024-11-03 20:20:53.400593+00	12	12 -> Napisz równanie prostej \\(k\\) 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
630	2024-11-03 20:21:17.055058+00	10	10 -> Dla jakich wartości parametrów	2	[]	12	1
631	2024-11-03 20:21:42.939752+00	11	11 -> Dla jakich wartości parametrów	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
632	2024-11-03 20:22:15.89356+00	9	9 -> a	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
633	2024-11-03 20:22:21.111978+00	10	10 -> Narysuj starannie zbiór \\(A\\ca	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
634	2024-11-03 20:22:57.931874+00	10	10 -> Narysuj starannie zbiór \\(A\\ca	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
635	2024-11-03 20:23:03.005037+00	8	8 -> Udowodnij, że jeżeli dwa trójk	2	[]	12	1
636	2024-11-03 20:23:18.878283+00	9	9 -> Udowodnij, że jeżeli dwa trójk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
637	2024-11-03 20:23:25.155814+00	7	7 -> Rozwiąż równanie \\(x=\\sqrt{5+\\	2	[]	12	1
638	2024-11-03 20:23:34.867095+00	8	8 -> Rozwiąż równanie \\(x=\\sqrt{5+\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
639	2024-11-03 20:23:55.99999+00	12	12 -> Napisz równanie prostej \\(k\\) 	2	[{"changed": {"fields": ["Numer zadania"]}}]	12	1
640	2024-11-03 20:24:00.353784+00	11	11 -> Dla jakich wartości parametrów	2	[{"changed": {"fields": ["Numer zadania"]}}]	12	1
641	2024-11-03 20:24:06.726236+00	10	10 -> Narysuj starannie zbiór \\(A\\ca	2	[{"changed": {"fields": ["Numer zadania"]}}]	12	1
642	2024-11-03 20:24:13.961816+00	9	9 -> Udowodnij, że jeżeli dwa trójk	2	[{"changed": {"fields": ["Numer zadania"]}}]	12	1
643	2024-11-03 20:24:20.187621+00	8	8 -> Rozwiąż równanie \\(x=\\sqrt{5+\\	2	[{"changed": {"fields": ["Numer zadania"]}}]	12	1
644	2024-11-03 20:24:28.663491+00	7	7 -> Rozwiąż równanie \\(x=\\sqrt{5+\\	2	[{"changed": {"fields": ["Numer zadania"]}}]	12	1
645	2024-11-03 20:24:41.8252+00	6	6 -> Wyznacz kąty \\(\\alpha\\) i \\(2\\	2	[{"changed": {"fields": ["Numer zadania", "Poziom trudnosci"]}}]	12	1
646	2024-11-03 20:24:52.686596+00	5	5 -> Jednym z wierzchołków kwadratu	2	[{"changed": {"fields": ["Numer zadania"]}}]	12	1
647	2024-11-03 20:24:58.729162+00	4	4 -> Narysuj starannie zbiór \\(A\\ca	2	[{"changed": {"fields": ["Numer zadania"]}}]	12	1
648	2024-11-03 20:25:03.459958+00	3	3 -> Rozwiąż nierówność \\(x\\leq 1+\\	2	[{"changed": {"fields": ["Numer zadania"]}}]	12	1
649	2024-11-03 20:26:07.532716+00	7	7 -> Wyznacz kąty \\(\\alpha\\) i \\(2\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
650	2024-11-03 20:26:39.224983+00	5	5 -> Jednym z wierzchołków kwadratu	2	[]	12	1
651	2024-11-03 20:26:47.737727+00	6	6 -> Jednym z wierzchołków kwadratu	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
652	2024-11-03 20:27:31.436315+00	5	5 -> Narysuj starannie zbiór \\(A\\ca	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
653	2024-11-03 20:27:58.660114+00	4	4 -> Rozwiąż nierówność \\(x\\leq1+\\s	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
654	2024-11-03 20:28:32.590186+00	2	2 -> s	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
655	2024-11-03 20:28:49.105322+00	3	3 -> Rozwazmy funkcję \\(f(x)=x^{2}-	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
656	2024-11-03 20:28:53.085158+00	2	2 -> \\(\\frac{\\mathrm{J}\\mathrm{a}\\s	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
657	2024-11-03 20:30:00.521541+00	3	3 -> Rozważmy funkcję \\(f(x)=x^{2}-	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
658	2024-11-03 20:30:13.204451+00	3	3 -> Rozważmy funkcję \\(f(x)=x^{2}-	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
659	2024-11-03 20:31:14.537757+00	2	2 -> Jakimi kątami mogą być \\(\\alph	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
660	2024-11-03 20:34:54.867045+00	2	2 -> Rozwiąż nierówność \\(\\sqrt{4-x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
661	2024-11-03 20:35:10.342232+00	1	1 -> Rozwiąż równanie \\(\\sin2x=\\cos	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
662	2024-11-03 20:35:21.881841+00	2	2 -> Rozwiąż nierówność \\(\\sqrt{4-x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
663	2024-11-03 20:35:43.869351+00	1	1 -> Rozwiąż równanie \\(\\sin2x=\\cos	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
664	2024-11-03 20:36:28.991158+00	3	3 -> W ciągu geometrycznym \\((a_{n}	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
665	2024-11-03 20:36:50.713862+00	4	4 -> Dla jakich wartości parametru 	2	[]	12	1
666	2024-11-03 20:37:53.03349+00	5	5 -> Przekrój poprzeczny dwuspadowe	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
667	2024-11-03 20:38:16.578007+00	6	6 -> Wykaż, że miara kąta ostrego w	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
668	2024-11-03 20:38:37.795883+00	7	7 -> Rozwiąż równanie \\(tgxtg(x+1)=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
669	2024-11-03 20:39:09.849557+00	8	8 -> Rozwiąż nierówność \\(2-3x>\\sqr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
670	2024-11-03 20:39:55.062189+00	9	9 -> Huragan znad Oceanu Atlantycki	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
671	2024-11-03 20:41:24.250164+00	10	10 -> Zbadaj liczbę rozwiązań równan	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
672	2024-11-03 20:41:58.150365+00	11	11 -> Pole rombu jest równe \\(S\\), a	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
673	2024-11-03 20:42:55.557911+00	12	12 -> Dany jest niestały ciąg arytme	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
674	2024-11-03 20:46:25.799725+00	2	2 -> W przedziale \\([\\pi,2\\pi]\\) ro	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
675	2024-11-03 20:46:58.229049+00	3	3 -> Dane są trzy wektory ã\\(=(1\\),	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
676	2024-11-03 20:47:29.463717+00	4	4 -> W przedziale \\([0,\\pi]\\) narys	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
677	2024-11-03 20:48:13.91837+00	6	6 -> Przekątna rombu o polu 9 zawar	2	[]	12	1
678	2024-11-03 20:49:26.790814+00	7	7 -> Resztą z dzielenia wielomianu 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
679	2024-11-03 20:50:09.662296+00	8	8 -> Wyznacz najmniejszą wartość fu	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
680	2024-11-03 20:50:41.874488+00	9	9 -> Rozwiąż równanie \\(\\cos{x}+\\co	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
681	2024-11-03 20:51:21.047045+00	11	11 -> Z wierzchołka O paraboli \\(y^{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
682	2024-11-03 20:51:43.86325+00	12	12 -> W trójkącie o wierzchołkach \\(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
683	2024-11-03 20:54:02.700971+00	10	10 -> Znajdź kąt między wektorami \\(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
684	2024-11-03 20:54:22.10099+00	10	10 -> Znajdź kąt między wektorami \\(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
685	2024-11-03 20:59:21.463323+00	1	1 -> Rozwiązać równanie \\(tgx-\\sin{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
686	2024-11-03 21:00:03.670218+00	2	2 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
687	2024-11-03 21:00:27.099713+00	3	3 -> Odcinek \\(CD\\) jest obrazem od	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
688	2024-11-03 21:01:16.830796+00	4	4 -> Wielomian \\(W(x)=x^{3}+ax^{2}+	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
689	2024-11-03 21:01:58.488187+00	5	5 -> Punkty \\(A(1,1)\\), \\(B(0,3)\\) 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
690	2024-11-03 21:02:28.152893+00	6	6 -> W trójkąt równoramienny wpisan	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
691	2024-11-03 21:02:45.263153+00	7	7 -> Narysować wykres funkcji \\(f(x	2	[]	12	1
692	2024-11-03 21:03:03.589904+00	8	8 -> Obliczyć pole trójkąta \\(ABC\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
693	2024-11-03 21:03:32.777479+00	9	9 -> Dla jakiego kąta ostrego \\(\\al	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
694	2024-11-03 21:03:54.355557+00	10	10 -> Dla jakiego parametru \\(p\\) wi	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
695	2024-11-03 21:04:16.118705+00	11	11 -> Wyznaczyć równania wszystkich 	2	[]	12	1
696	2024-11-03 21:04:35.253468+00	12	12 -> W trójkącie równoramiennym \\(A	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
697	2024-11-03 21:16:32.650057+00	1	1 -> Dwaj kolarze jeżdżą po torze w	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
698	2024-11-03 21:17:24.079765+00	2	2 -> Liczby o 16% mniejsza i o 43% 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
699	2024-11-03 21:17:41.196529+00	3	3 -> Rozwiązać równanie \\(\\sin{x}+\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
700	2024-11-03 21:18:07.049928+00	4	4 -> Rozwiązać nierówność \\(\\frac{\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
701	2024-11-03 21:18:23.01225+00	5	5 -> Dwa okręgi o promieniach \\(r\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
702	2024-11-03 21:18:55.546319+00	6	6 -> Dane są punkty \\(A(2,-2)\\) i \\	2	[]	12	1
703	2024-11-03 21:19:39.012557+00	7	7 -> Czy wieża zbudowana z sześcien	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
704	2024-11-03 21:20:07.823405+00	8	8 -> Rozwiązać równanie \\(\\cos2x=(\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
705	2024-11-03 21:20:38.942209+00	10	10 -> Rozwiązać nierówność \\(\\log_{2	2	[]	12	1
706	2024-11-03 21:20:44.585969+00	9	9 -> Sporządzić staranny wykres fun	2	[]	12	1
707	2024-11-03 21:21:06.351936+00	10	10 -> Rozwiązać nierówność \\(\\log_{2	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
708	2024-11-03 21:21:35.641596+00	11	11 -> Pod jakim kątem przecinają się	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
709	2024-11-03 21:23:00.24614+00	12	12 -> Boisko do gry w football amery	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
710	2024-11-03 21:23:26.890383+00	12	12 -> Boisko do gry w football amery	2	[]	12	1
711	2024-11-03 21:26:16.104427+00	1	1 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
712	2024-11-03 21:27:08.051662+00	3	3 -> Dany jest punkt \\(A(2,1)\\) ora	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
713	2024-11-03 21:27:36.950413+00	4	4 -> Logarytmy liczb 1, \\(3^{x}-2\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
714	2024-11-03 21:28:02.217031+00	5	5 -> Kolejne środki boków czworokąt	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
715	2024-11-03 21:28:57.480154+00	7	7 -> Narysować wykres funkcji \\(f(x	2	[]	12	1
716	2024-11-03 21:29:09.393736+00	8	8 -> Znaleźć punkt należący do para	2	[]	12	1
717	2024-11-03 21:29:48.600942+00	9	9 -> Wielomian \\(w(x)=x^{4}+ax^{3}+	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
718	2024-11-03 21:34:23.960697+00	10	10 -> Rozwiązać nierówność \\(\\log{x}	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
719	2024-11-03 21:34:40.831129+00	10	10 -> Rozwiązać nierówność \\(\\log{x}	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
720	2024-11-03 21:35:36.936632+00	11	11 -> Punkt \\(S\\) jest środkiem boku	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
721	2024-11-03 21:39:44.387208+00	1	1 -> Znaleźć największą wartość fun	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
722	2024-11-03 21:40:24.6917+00	4	4 -> Stosunek długości przekątnych 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
723	2024-11-03 21:40:33.549635+00	5	5 -> Dane są punkty \\(A(1,1)\\) i \\(	2	[]	12	1
724	2024-11-03 21:41:00.070475+00	6	6 -> Ramiona trójkąta równoramienne	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
725	2024-11-03 21:41:23.778643+00	7	7 -> Dla jakich wartości parametru 	2	[]	12	1
726	2024-11-03 21:41:38.38356+00	8	8 -> Rozwiązać równanie \\(\\frac{1}{	2	[]	12	1
727	2024-11-03 21:42:11.144447+00	9	9 -> Rozwiązać układ równań \\(?\\).	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
728	2024-11-03 21:42:51.975078+00	10	10 -> Dany jest trójkąt \\(ABC\\), w k	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
729	2024-11-03 21:43:18.712989+00	11	11 -> Wyznaczyć stosunek promienia o	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
730	2024-11-03 21:43:43.70395+00	11	11 -> Wyznaczyć stosunek promienia o	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
731	2024-11-03 21:45:28.91062+00	1	1 -> Punkty \\(K\\) i \\(L\\) są środka	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
732	2024-11-03 21:46:00.393814+00	2	2 -> W pewnym ciągu geometrycznym k	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
733	2024-11-03 21:46:41.147531+00	5	5 -> Statek płynie prosto w kierunk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
734	2024-11-03 21:46:58.661017+00	6	6 -> Obliczyć pole części wspólnej 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
735	2024-11-03 21:47:23.274973+00	7	7 -> Znajdź taki ciąg arytmetyczny,	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
736	2024-11-03 21:47:53.956994+00	8	8 -> W sześciokącie foremnym \\(ABCD	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
737	2024-11-03 21:48:22.137043+00	10	10 -> Rozwiąż równanie \\(\\cos2x-3\\co	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
738	2024-11-03 21:49:21.440267+00	12	12 -> Na dachu budynku stoi antena, 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
739	2024-11-03 21:50:56.510504+00	1	1 -> Narysuj staranny wykres funkcj	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
740	2024-11-03 21:51:40.588228+00	3	3 -> W trójkącie dane są długości d	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
741	2024-11-03 21:51:57.182787+00	4	4 -> Niech \\(ABCDEF\\) będzie sześci	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
742	2024-11-03 21:52:29.498923+00	5	5 -> Na krzywej o równaniu \\(y=\\sqr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
743	2024-11-03 21:52:55.683742+00	6	6 -> Dla jakich wartości parametru 	2	[]	12	1
744	2024-11-03 21:53:49.331132+00	7	7 -> Dany jest trójkąt o wierzchołk	2	[]	12	1
745	2024-11-03 21:54:32.443565+00	8	8 -> Narysuj wykres funkcji \\(f(x)=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
746	2024-11-03 21:55:13.854861+00	9	9 -> Zaznacz na płaszczyźnie zbiór 	2	[]	12	1
747	2024-11-03 21:55:46.774609+00	10	10 -> Reszta z dzielenia wielomianu 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1127	2024-11-23 15:44:43.542006+00	25	25 -> \\(\\)[]['image', 'zadanieInput'	3		12	1
748	2024-11-03 21:56:59.801116+00	11	11 -> Dany jest trapez \\(ABCD\\) o po	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
749	2024-11-03 21:57:53.359587+00	12	12 -> Boisko do gry w piłkę ręczną j	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
750	2024-11-03 22:01:07.920031+00	1	1 -> Dla jakich kątów \\(\\alpha\\in \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
751	2024-11-03 22:01:18.578629+00	1	1 -> Dla jakich kątów \\(\\alpha\\in \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
752	2024-11-03 22:01:39.898518+00	1	1 -> Dla jakich kątów \\(\\alpha\\in \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
753	2024-11-03 22:02:54.479691+00	3	3 -> W trójkącie równoramiennym kąt	2	[]	12	1
754	2024-11-03 22:03:07.670096+00	4	4 -> Płaszczyzna przechodząca przez	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
755	2024-11-03 22:04:19.764702+00	5	5 -> Niech \\(x_{1}\\) i \\(x_{2}\\) bę	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
756	2024-11-03 22:04:33.692722+00	6	6 -> Na dwóch zewnętrznie stycznych	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
757	2024-11-03 22:05:59.712395+00	7	7 -> Dane są proste \\(y=4x\\) i \\(y=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
758	2024-11-03 22:07:05.972341+00	9	9 -> Niech \\(a\\), \\(b\\), \\(c\\), \\(d	2	[]	12	1
759	2024-11-03 22:07:41.619177+00	10	10 -> Dla jakich kątów \\(\\alpha\\in \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
760	2024-11-03 22:08:09.819308+00	11	11 -> W ostrosłupie prawidłowym czwo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
761	2024-11-03 22:08:16.659904+00	12	12 -> Wierzchołek stożka jest środki	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
762	2024-11-03 22:11:54.293805+00	1	1 -> Znaleźć miejsca zerowe i naszk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
763	2024-11-03 22:12:14.541459+00	2	2 -> Romb o boku \\(a\\) i kącie ostr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
764	2024-11-03 22:12:31.144181+00	3	3 -> Odcinek o końcach \\(A(-1,-1)\\)	2	[]	12	1
765	2024-11-03 22:13:16.914555+00	4	4 -> W okrąg o promieniu 1 wpisujem	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
766	2024-11-03 22:13:33.762338+00	5	5 -> Sześcian podzielono na dwie br	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
767	2024-11-03 22:13:52.765247+00	6	6 -> Rozważamy zbiór liczb całkowit	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
768	2024-11-03 22:14:11.935046+00	7	7 -> Punkty \\(A(2,0)\\) i \\(B(0,2)\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
769	2024-11-03 22:14:29.642805+00	8	8 -> Trzy pierwiastki wielomianu o 	2	[]	12	1
770	2024-11-03 22:14:40.744727+00	9	9 -> W trójkącie równobocznym o bok	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
771	2024-11-03 22:15:36.114536+00	10	10 -> W trójkąt równoboczny o boku d	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
772	2024-11-03 22:15:44.901882+00	11	11 -> W okrąg o promieniu \\(r\\) wpis	2	[]	12	1
773	2024-11-03 22:16:11.224687+00	12	12 -> Znaleźć dziedzinę oraz przedzi	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
774	2024-11-03 22:18:37.37406+00	1	1 -> Dwa samochody wyjechały jednoc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
775	2024-11-03 22:20:39.443914+00	2	2 -> Proste \\(y=2\\), \\(y=2x+10\\) or	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
776	2024-11-03 22:20:53.387268+00	3	3 -> Rozważmy zbiór wszystkich pros	2	[]	12	1
777	2024-11-03 22:21:12.707274+00	4	4 -> Podstawa trójkąta równoboczneg	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
778	2024-11-03 22:21:25.520891+00	5	5 -> W stoku pole podstawy, pole po	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
779	2024-11-03 22:22:39.616773+00	6	6 -> Okrąg \\(O_{1}\\) o promieniu 1 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
780	2024-11-03 22:23:39.875868+00	7	7 -> Do punktu \\(A\\) po dwóch prost	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
781	2024-11-03 22:24:21.768534+00	8	8 -> Na płaszczyźnie dane są punkty	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
782	2024-11-03 22:24:52.872537+00	9	9 -> Wyznaczyć największą wartość p	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
783	2024-11-03 22:25:07.717303+00	10	10 -> Suma trzech początkowych wyraz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
784	2024-11-03 22:25:29.523432+00	10	10 -> Suma trzech początkowych wyraz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
785	2024-11-03 22:25:43.565289+00	11	11 -> Dwa jednakowe stożki złożono p	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
786	2024-11-03 22:26:12.625196+00	12	12 -> W czworościan foremny \\(ABCD\\)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
787	2024-11-03 22:27:46.215169+00	1	1 -> Rodzina składa się z pięciorga	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
788	2024-11-03 22:29:03.637191+00	2	2 -> Na bokach prostokąta o stałym 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
789	2024-11-03 22:29:17.522743+00	3	3 -> Punkty \\(A(1,3)\\), \\(B(5,1)\\),	2	[]	12	1
790	2024-11-03 22:29:35.527179+00	4	4 -> Liczby \\(x_{1}\\), \\(x_{2}\\) są	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
791	2024-11-03 22:30:15.051397+00	3	3 -> Punkty \\(A(1,3)\\), \\(B(5,1)\\),	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
792	2024-11-03 22:30:56.335926+00	4	4 -> Liczby \\(x_{1}\\), \\(x_{2}\\) są	2	[]	12	1
793	2024-11-03 22:32:36.187514+00	5	5 -> Rozwiązać układ równań: \\begin	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
794	2024-11-03 22:32:52.409719+00	5	5 -> Rozwiązać układ równań: \\begin	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
795	2024-11-03 22:33:35.712124+00	6	6 -> W graniastosłupie prawidłowym 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
796	2024-11-03 22:34:48.871934+00	7	7 -> Na ile sposobów można na umieś	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
797	2024-11-03 22:35:09.579227+00	8	8 -> Rozwiązać następującą nierówno	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
798	2024-11-03 22:35:27.654406+00	8	8 -> Rozwiązać następującą nierówno	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
799	2024-11-03 22:35:57.130656+00	9	9 -> Pokazać, że dla każdej wartośc	2	[]	12	1
800	2024-11-03 22:36:30.715244+00	10	10 -> Punkt \\(A\\) należy do obszaru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
801	2024-11-03 22:37:16.455322+00	11	11 -> Z punktu \\(A(1,1)\\) wychodzą d	2	[]	12	1
802	2024-11-03 22:37:30.950795+00	12	12 -> Znaleźć najmniejszą możliwą ob	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
803	2024-11-03 22:39:14.414675+00	1	1 -> W zawodach szachowych bierze u	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
804	2024-11-03 22:41:17.916187+00	2	2 -> Dane są trzy wektory: \\(\\vec{a	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
805	2024-11-03 22:42:11.956982+00	3	3 -> Wartość użytkowa pewnej maszyn	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
806	2024-11-03 22:42:22.073476+00	4	4 -> Na okręgu o promieniu długości	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
807	2024-11-03 22:43:50.54834+00	5	5 -> Obliczyć pierwiastek równania 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
808	2024-11-03 22:44:37.343849+00	6	6 -> Z czworościanu foremnego odcin	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
809	2024-11-03 22:45:27.253421+00	7	7 -> W zawodach szachowych bierze u	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1128	2024-11-23 15:44:43.543003+00	24	24 -> \\(\\)[]['image', 'zadanieInput'	3		12	1
810	2024-11-03 22:45:45.39924+00	8	8 -> Przez środek boku trójkąta rów	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
811	2024-11-03 22:46:41.484296+00	9	9 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
812	2024-11-03 22:47:27.05604+00	9	9 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
813	2024-11-03 22:49:11.001276+00	10	10 -> Z miast odległych o 119 km wyr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
814	2024-11-03 22:49:20.25125+00	11	11 -> Wyznaczyć sumę pierwiastków ró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
815	2024-11-03 22:50:03.241217+00	12	12 -> Z sześcianu odcinamy osiem nar	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
816	2024-11-03 22:51:42.655026+00	2	2 -> Trójkąt prostokątny o przypros	2	[]	12	1
817	2024-11-03 22:52:05.649675+00	3	3 -> Punkty \\((-1,1)\\), \\((0,0)\\), 	2	[]	12	1
818	2024-11-03 22:53:07.758868+00	4	4 -> Niech \\(f(x)=\\{\\) \\(\\frac{2-|x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
819	2024-11-03 22:53:43.005063+00	4	4 -> Niech \\(f(x)=?\\). \\[a)\\] Narys	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
820	2024-11-03 22:54:19.600651+00	5	5 -> Punkty \\(A(0,1)\\), \\(B(4,3)\\) 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
821	2024-11-03 22:54:38.526057+00	6	6 -> Ostrosłup prawidłowy trójkątny	2	[]	12	1
822	2024-11-03 22:55:57.377145+00	7	7 -> Punkty \\(A(0,1)\\), \\(B(4,3)\\) 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
823	2024-11-03 22:56:59.023301+00	8	8 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
824	2024-11-03 22:57:31.193122+00	9	9 -> Niech \\(f(x)=?\\). \\[a)\\] Narys	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
825	2024-11-03 22:58:15.677339+00	9	9 -> Niech \\(f(x)=?\\). \\[a)\\] Narys	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
826	2024-11-03 22:58:50.452705+00	10	10 -> Punkt \\(C(0,0)\\) jest wierzcho	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
827	2024-11-03 22:59:08.521989+00	12	12 -> Prostokąt o bokach \\(a\\) i \\(2	2	[]	12	1
828	2024-11-03 22:59:41.401552+00	11	11 -> W ośmiościan foremny wpisano d	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
829	2024-11-03 23:01:27.178289+00	1	1 -> Wykaż, ze dla dowolnej liczby 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
830	2024-11-03 23:01:49.247958+00	1	1 -> Wykaż, ze dla dowolnej liczby 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
831	2024-11-03 23:02:40.587037+00	2	2 -> Podaj wzór funkcji kwadratowej	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
832	2024-11-03 23:03:02.992108+00	3	3 -> Wyznacz wielomian \\(f(x)=x^{3}	2	[]	12	1
833	2024-11-03 23:03:15.387135+00	4	4 -> Narysuj wykres funkcji \\(f(x)=	2	[]	12	1
834	2024-11-03 23:03:54.393062+00	5	5 -> W zależności od parametru \\(a\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
835	2024-11-03 23:04:14.137809+00	5	5 -> W zależności od parametru \\(a\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
836	2024-11-03 23:04:56.127677+00	6	6 -> Ostrosłup prawidłowy czworokąt	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
837	2024-11-03 23:05:32.558992+00	7	7 -> Trzeci składnik rozwinięcia dw	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
838	2024-11-03 23:06:07.633775+00	8	8 -> Wykres wielomianu \\(w(x)=x^{3}	2	[]	12	1
839	2024-11-03 23:07:10.541758+00	10	10 -> Narysuj wykres funkcji \\(f(x)=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
840	2024-11-03 23:07:47.269532+00	11	11 -> W zależności od parametru \\(a\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
841	2024-11-03 23:09:52.003821+00	6	6 -> Ostrosłup prawidłowy czworokąt	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
842	2024-11-03 23:10:44.005323+00	6	6 -> Ostrosłup prawidłowy czworokąt	2	[]	12	1
843	2024-11-03 23:11:12.27228+00	7	7 -> Trzeci składnik rozwinięcia dw	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
844	2024-11-03 23:11:36.029606+00	8	8 -> Wykres wielomianu \\(w(x)=x^{3}	2	[]	12	1
845	2024-11-03 23:12:07.89672+00	9	9 -> W zależności od parametru \\(m\\	2	[]	12	1
846	2024-11-03 23:12:37.046051+00	12	12 -> Dany jest ostrosłup prawidłowy	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
847	2024-11-03 23:24:52.791505+00	1	1 -> Trzy liczby naturalne o iloczy	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
848	2024-11-03 23:25:11.364628+00	2	2 -> Liczby dodatnie \\(a\\), \\(b\\) s	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
849	2024-11-03 23:26:26.915249+00	3	3 -> Rozwiąż równanie \\(tg^{2}x=\\fr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
850	2024-11-03 23:26:40.755125+00	3	3 -> Rozwiąż równanie \\(tg^{2}x=\\fr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
851	2024-11-03 23:27:07.396644+00	4	4 -> Narysuj wykres funkcji \\(f(x)=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
852	2024-11-03 23:27:58.372677+00	6	6 -> Przekrój ostrosłupa prawidłowe	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
853	2024-11-03 23:28:34.15244+00	7	7 -> Liczby dodatnie \\(a\\), \\(b\\), 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
854	2024-11-03 23:29:03.59648+00	7	7 -> Liczby dodatnie \\(a\\), \\(b\\), 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
855	2024-11-03 23:29:30.594457+00	9	9 -> Oblicz sumę wyrazów nieskończo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
856	2024-11-03 23:30:02.047776+00	10	10 -> Narysuj wykres funkcji \\(f(x)=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
857	2024-11-03 23:30:10.496297+00	11	11 -> Okręgi o promieniach \\(r<R\\) s	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
858	2024-11-03 23:30:34.736096+00	11	11 -> Okręgi o promieniach \\(r<R\\) s	2	[]	12	1
859	2024-11-03 23:30:47.416141+00	12	12 -> W ostrosłupie prawidłowym trój	2	[]	12	1
860	2024-11-03 23:33:26.560369+00	1	1 -> W ciągu arytmetycznym suma wyr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
861	2024-11-03 23:34:11.069083+00	2	2 -> Punkt \\(A(1,1)\\) jest wierzcho	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
862	2024-11-03 23:34:43.088714+00	3	3 -> W konkursie matematycznym trzy	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
863	2024-11-03 23:34:52.58315+00	4	4 -> Opisz równaniem i narysuj w uk	2	[]	12	1
864	2024-11-03 23:34:59.906151+00	4	4 -> Opisz równaniem i narysuj w uk	2	[]	12	1
865	2024-11-03 23:35:16.812654+00	5	5 -> Rozwiąż nierówność \\(5^{1-x^{4	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
866	2024-11-03 23:35:43.742045+00	6	6 -> Wyznacz wszystkie liczby x z p	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
867	2024-11-03 23:36:31.862957+00	6	6 -> Wyznacz wszystkie liczby x z p	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
868	2024-11-03 23:36:45.975276+00	6	6 -> Wyznacz wszystkie liczby x z p	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
869	2024-11-03 23:37:10.440858+00	7	7 -> Wyznacz wszystkie liczby rzecz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
870	2024-11-03 23:37:43.790577+00	8	8 -> Rozwiąż równanie \\(1+3^{-3\\sin	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
871	2024-11-03 23:38:29.22298+00	9	9 -> Dana jest liczba \\(\\alpha\\in (	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
872	2024-11-03 23:39:35.134287+00	10	10 -> Drzewa rosnące przed galerią h	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
873	2024-11-03 23:40:26.32068+00	11	11 -> Krzywa \\(\\Gamma\\) jest zbiorem	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
874	2024-11-03 23:41:01.261313+00	12	12 -> Rozwiąż nierówność \\(\\sqrt{\\fr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
875	2024-11-03 23:43:52.216091+00	2	2 -> Rozwiązać równanie w przedzial	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
876	2024-11-03 23:45:06.56885+00	3	3 -> Dla jakiego parametru \\(m\\) ró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
877	2024-11-03 23:46:01.002651+00	4	4 -> Jedna z krawędzi bocznych ostr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
878	2024-11-03 23:46:31.006324+00	5	5 -> Jaką krzywą tworzą punkty płas	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
879	2024-11-03 23:46:46.757779+00	6	6 -> Narysować wykres funkcji \\(f(x	2	[]	12	1
880	2024-11-03 23:47:34.503999+00	7	7 -> Udowodnić tożsamość \\(x^{3}+y^	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
881	2024-11-03 23:47:55.890718+00	8	8 -> Jaką krzywą tworzą środki wszy	2	[]	12	1
882	2024-11-03 23:48:16.148636+00	9	9 -> Wyznaczyć wszystkie styczne do	2	[]	12	1
883	2024-11-03 23:48:42.773693+00	10	10 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
884	2024-11-03 23:50:01.561076+00	11	11 -> Dla jakiego parametru \\(m\\) ró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
885	2024-11-03 23:50:19.911447+00	11	11 -> Dla jakiego parametru \\(m\\) ró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
886	2024-11-03 23:53:12.875617+00	1	1 -> W urnie znajduje się 9 kul pon	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
887	2024-11-03 23:53:29.830395+00	2	2 -> Narysuj na płaszczyźnie krzywą	2	[]	12	1
888	2024-11-03 23:54:19.130722+00	4	4 -> Rozwiąż równanie \\((\\frac{9}{4	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
889	2024-11-03 23:54:51.90353+00	6	6 -> Wśród walców wpisanych w kulę 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
890	2024-11-03 23:55:48.072463+00	7	7 -> W finale pewnego konkursu bier	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
891	2024-11-03 23:56:37.917132+00	9	9 -> Zbadaj, dla jakich argumentów 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
892	2024-11-03 23:57:25.581924+00	12	12 -> Wśród prostopadłościanów wpisa	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
893	2024-11-03 23:57:49.891845+00	12	12 -> Wśród prostopadłościanów wpisa	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
894	2024-11-04 00:00:31.291011+00	2	2 -> Jaki zbiór tworzą środki wszys	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
895	2024-11-04 00:00:58.595957+00	3	3 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
896	2024-11-04 00:02:23.069602+00	4	4 -> Niech \\(T\\) będzie przekształc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
897	2024-11-04 00:03:17.631373+00	5	5 -> Wspólne styczne do stycznych z	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
898	2024-11-04 00:03:31.272752+00	6	6 -> Pole powierzchni całkowitej os	2	[]	12	1
899	2024-11-04 00:04:09.536725+00	7	7 -> W rozwinięciu \\((a+b)^{n}=\\sum	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
900	2024-11-04 00:04:43.814144+00	7	7 -> W rozwinięciu \\((a+b)^{n}=\\sum	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
901	2024-11-04 00:05:20.605868+00	8	8 -> Punkty \\(K\\), \\(L\\), \\(M\\) dzi	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
902	2024-11-04 00:05:57.347351+00	9	9 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
903	2024-11-04 00:07:22.634755+00	10	10 -> Końce odcinka \\(AB\\) o długośc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
904	2024-11-04 00:07:46.472901+00	11	11 -> Rozważamy zbiór wszystkich tró	2	[]	12	1
905	2024-11-04 00:07:54.944725+00	12	12 -> W przeciwlegle narożniki sześc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
906	2024-11-04 00:09:32.645672+00	1	1 -> Znaleźć stuelementowy ciąg ary	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
907	2024-11-04 00:09:54.312856+00	2	2 -> Rozwiązać układ równań \\(?\\).	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
908	2024-11-04 00:10:17.332745+00	3	3 -> Narysować wykres funkcji \\(f(x	2	[]	12	1
909	2024-11-04 00:10:45.56476+00	4	4 -> W romb \\(ABCD\\) o kącie ostrym	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
910	2024-11-04 00:11:00.545519+00	5	5 -> Znaleźć równania wspólnych sty	2	[]	12	1
911	2024-11-04 00:11:17.274654+00	6	6 -> W stożek o promieniu podstawy 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
912	2024-11-04 00:11:43.44556+00	6	6 -> W stożek o promieniu podstawy 	2	[]	12	1
913	2024-11-04 00:12:04.311203+00	7	7 -> Rozwiązać układ równań \\(?\\).	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
914	2024-11-04 00:13:06.863129+00	8	8 -> Wyznaczyć równania wszystkich 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
915	2024-11-04 00:13:55.73808+00	9	9 -> Granicą ciągu o wyrazie ogólny	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
916	2024-11-04 00:14:16.956862+00	10	10 -> Na boku \\(BC\\) trójkąta równob	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
917	2024-11-04 00:14:58.434486+00	11	11 -> Rozwiązać nierówność \\(1+\\frac	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
918	2024-11-04 00:15:34.014283+00	12	12 -> Jakie wymiary ma walec o możli	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
919	2024-11-04 00:16:46.115038+00	7	7 -> Rozwiązać układ równań \\(?\\).	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
920	2024-11-04 00:16:51.834135+00	8	8 -> Wyznaczyć równania wszystkich 	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
921	2024-11-04 00:16:56.712016+00	9	9 -> Granicą ciągu o wyrazie ogólny	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
922	2024-11-04 00:17:03.739357+00	10	10 -> Na boku \\(BC\\) trójkąta równob	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
923	2024-11-04 00:17:09.675056+00	11	11 -> Rozwiązać nierówność \\(1+\\frac	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
924	2024-11-04 00:17:15.307584+00	12	12 -> Jakie wymiary ma walec o możli	2	[{"changed": {"fields": ["Poziom trudnosci"]}}]	12	1
925	2024-11-04 00:18:54.899483+00	1	1 -> Załóżmy, że mamy 12 kul białyc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
926	2024-11-04 00:19:03.986747+00	2	2 -> Ścianki kostki do gry oznaczon	2	[]	12	1
927	2024-11-04 00:19:19.260825+00	3	3 -> Wyznaczyć ciąg arytmetyczny o 	2	[]	12	1
928	2024-11-04 00:19:45.157193+00	4	4 -> W zbiorze \\([0,2\\pi]\\) rozwiąz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
929	2024-11-04 00:20:10.795712+00	5	5 -> Znaleźć równania okręgów, któr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
930	2024-11-04 00:20:16.620401+00	6	6 -> Pokazać, że stosunek objętości	2	[]	12	1
931	2024-11-04 00:20:45.32357+00	7	7 -> Na ile sposobów można na wybra	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
932	2024-11-04 00:21:16.135854+00	8	8 -> Rozpatrujemy zbiór ciągów \\(n\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
933	2024-11-04 00:21:40.668694+00	9	9 -> Suma wszystkich współczynników	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
934	2024-11-04 00:22:38.449592+00	10	10 -> Rozwiązać nierówność \\(\\sin{x}	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
935	2024-11-04 00:23:10.676433+00	11	11 -> Zbadać przebieg zmienności fun	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
936	2024-11-04 00:23:20.971232+00	12	12 -> W stożku pole podstawy, pole p	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
937	2024-11-04 00:45:13.547027+00	1	1 -> Jeden z wierzchołków trójkąta 	2	[]	12	1
938	2024-11-04 00:45:47.284603+00	2	2 -> Zbadaj, dla jakiej wartości pa	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
939	2024-11-04 00:46:14.181435+00	3	3 -> Wyznacz te argumenty funkcji \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
940	2024-11-04 00:46:42.819068+00	4	4 -> Zakładając, że \\(x\\in [0,2\\pi]	2	[]	12	1
941	2024-11-04 00:47:16.780431+00	5	5 -> Wyznacz wszystkie punkty wspól	2	[]	12	1
942	2024-11-04 00:47:36.669539+00	6	6 -> Narysuj wykres funkcji \\(f(x)=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
943	2024-11-04 00:47:58.656657+00	7	7 -> Jeden z wierzchołków sześcioką	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
944	2024-11-04 00:49:21.943234+00	10	10 -> Rozwiąż nierówność \\(3-3\\sin^{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
945	2024-11-04 00:49:37.781576+00	11	11 -> Na stożku o promieniu podstawy	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
946	2024-11-04 00:50:08.869156+00	12	12 -> Określ dziedzinę, wyznacz wszy	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
947	2024-11-04 00:52:31.165756+00	1	1 -> Wyznacz dziedzinę funkcji \\(f(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
948	2024-11-04 00:52:43.794322+00	2	2 -> W przedziale \\([0,2\\pi]\\) rozw	2	[]	12	1
949	2024-11-04 00:53:02.388244+00	3	3 -> Obwód trójkąta równoramiennego	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
950	2024-11-04 00:53:41.255466+00	4	4 -> Rozwiąż równanie \\(\\sqrt{1-2\\c	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
951	2024-11-04 00:54:12.883339+00	5	5 -> Punkt \\(B(1,1)\\) jest wierzcho	2	[]	12	1
952	2024-11-04 00:54:45.631339+00	6	6 -> Sporzqdź staranny wykres funkc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
953	2024-11-04 00:55:23.016245+00	8	8 -> Rozwiąż równanie \\(2\\cos2x+1=\\	2	[]	12	1
954	2024-11-04 00:55:47.603651+00	9	9 -> W trójkącie prostokątnym przec	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
955	2024-11-04 00:56:05.648832+00	10	10 -> Rozwiąż nierówność \\(2^{x}(1+\\	2	[]	12	1
956	2024-11-04 00:56:31.344696+00	11	11 -> Znajdź równania prostych stycz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
957	2024-11-04 00:56:43.508554+00	12	12 -> Zbadaj przebieg zmienności i n	2	[]	12	1
958	2024-11-04 00:59:01.170363+00	1	1 -> Andrzej przebiegł maraton, pok	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
959	2024-11-04 00:59:16.481224+00	2	2 -> Niech \\(p\\) będzie liczbą pier	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
960	2024-11-04 00:59:50.816962+00	3	3 -> Rozwiąż równanie \\(12\\cos^{2}3	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
961	2024-11-04 01:00:19.571593+00	4	4 -> Wyznacz wszystkie argumenty \\(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
962	2024-11-04 01:00:33.94411+00	4	4 -> Wyznacz wszystkie argumenty \\(	2	[]	12	1
963	2024-11-04 01:01:03.887508+00	5	5 -> Przekątna rombu o obwodzie 12 	2	[]	12	1
964	2024-11-04 01:01:38.052793+00	6	6 -> Narysuj wykres funkcji \\(f(x)=	2	[]	12	1
965	2024-11-04 01:01:48.959704+00	7	7 -> Na nowym osiedlu wybudowano sz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
966	2024-11-04 01:02:22.442895+00	8	8 -> Zbadaj, dla jakich argumentów 	2	[]	12	1
967	2024-11-04 01:03:09.681847+00	9	9 -> Rozwiąż równanie \\(tg^{2}x=(4t	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
968	2024-11-04 01:03:50.55832+00	10	10 -> Wskaz wszystkie wartości x, dl	2	[]	12	1
969	2024-11-04 01:04:21.090049+00	11	11 -> Rozwiąż nierówność logarytmicz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
970	2024-11-04 01:04:39.132972+00	12	12 -> Boki \\(\\triangle ABC\\) zawarte	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
971	2024-11-04 01:07:23.681657+00	1	1 -> Rozwiązać równanie \\(\\frac{\\si	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
972	2024-11-04 01:07:58.078436+00	2	2 -> Niech \\(f(x)=\\sqrt{x}\\). Podać	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
973	2024-11-04 01:09:04.455239+00	3	3 -> Wykazać, że dla dowolnego \\(n\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
974	2024-11-04 01:09:52.56238+00	4	4 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
975	2024-11-04 01:10:23.979828+00	5	5 -> Znaleźć równanie stycznej 1 do	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
976	2024-11-04 01:11:21.256816+00	6	6 -> Rozwiązać układ równań \\begin{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
977	2024-11-04 01:11:45.111442+00	7	7 -> Niech \\(f(x)=\\frac{x-1}{x+2}\\)	2	[]	12	1
978	2024-11-04 01:12:15.117729+00	8	8 -> Stosując zasadę indukcji matem	2	[]	12	1
979	2024-11-04 01:12:52.335966+00	9	9 -> Wykorzystując metody rachunku 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
980	2024-11-04 01:13:31.211006+00	10	10 -> Znaleźć równanie stycznej 1 do	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
981	2024-11-04 01:14:26.523917+00	11	11 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
982	2024-11-04 01:16:19.129105+00	12	12 -> Wyznaczyć liczbę rozwiązań ukł	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
983	2024-11-04 01:18:27.944658+00	1	1 -> Rozwiaż nierówność \\(\\frac{3x-	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
984	2024-11-04 01:18:37.384497+00	1	1 -> Rozwiąż nierówność \\(\\frac{3x-	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
985	2024-11-04 01:18:48.606515+00	2	2 -> W zagrodzie jest 10 zwierząt, 	2	[]	12	1
986	2024-11-04 01:19:23.608244+00	3	3 -> Bez użycia kalkulatora porówna	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
987	2024-11-04 01:19:58.776059+00	4	4 -> Wyznacz wszystkie argumenty x,	2	[]	12	1
988	2024-11-04 01:20:12.363041+00	5	5 -> Wyznacz skalę podobieństwa tró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
989	2024-11-04 01:20:41.869114+00	6	6 -> Wśród prostokątów o ustalonej 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
990	2024-11-04 01:21:06.269699+00	7	7 -> Rozwiąż nierówność \\(x+1+\\frac	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
991	2024-11-04 01:21:30.099808+00	8	8 -> Narysuj wykres funkcji \\(f(x)=	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
992	2024-11-04 01:21:45.033971+00	9	9 -> Rozwiąż równanie logarytmiczne	2	[]	12	1
993	2024-11-04 01:22:13.125521+00	10	10 -> Trzech alpinistów atakuje szcz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
994	2024-11-04 01:22:33.449558+00	11	11 -> Oblicz tangens kąta rozwarcia 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
995	2024-11-04 01:22:48.859385+00	12	12 -> Wyznacz równanie linii będącej	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
996	2024-11-04 01:25:08.649693+00	1	1 -> Pewnej mroźnej zimy trzy przez	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
997	2024-11-04 01:26:13.806266+00	2	2 -> Obliczyć, ile kolejnych dodatn	2	[]	12	1
998	2024-11-04 01:26:47.542199+00	3	3 -> Rozwiązać równanie \\(\\sin^{3}x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
999	2024-11-04 01:27:34.808298+00	5	5 -> W trójkąt równoramienny, które	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1000	2024-11-04 01:27:49.883295+00	6	6 -> Narysować w prostokątnym układ	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1001	2024-11-04 01:29:22.735141+00	7	7 -> Ojciec i syn obchodzą urodziny	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1002	2024-11-04 01:30:04.410553+00	9	9 -> Rozwiązać równanie \\(4\\sin{x}\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1003	2024-11-04 01:31:03.945985+00	10	10 -> W dwóch urnach znajdują się ku	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1004	2024-11-04 01:31:24.57653+00	11	11 -> Uzasadnić, że dla każdej liczb	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1005	2024-11-04 01:31:43.337455+00	12	12 -> W trójkąt równoramienny, które	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1006	2024-11-04 01:33:58.433932+00	1	1 -> W szufladzie znajduje się 6 ró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1007	2024-11-04 01:34:18.702295+00	2	2 -> Wyznacz dziedzinę i zbadaj, dl	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1008	2024-11-04 01:34:58.333187+00	3	3 -> Wśród prostokątów wpisanych w 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1009	2024-11-04 01:35:18.23174+00	4	4 -> Rozwiąż nierówność \\(4^{x^{3}-	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1010	2024-11-04 01:37:13.989903+00	5	5 -> Powierzchnia boczna stożka po 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1011	2024-11-04 01:38:07.909276+00	6	6 -> Developer chce pomalować każde	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1012	2024-11-04 01:38:25.268331+00	7	7 -> Rozwiąż równanie \\(8x^{3}=1+6x	2	[]	12	1
1013	2024-11-04 01:39:18.765492+00	9	9 -> Rozwiąż nierówność \\(1+tg^{2}2	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1014	2024-11-04 01:39:41.728649+00	10	10 -> Wśród prostopadłościanów o pod	2	[]	12	1
1015	2024-11-04 01:40:17.71678+00	11	11 -> Określ dziedzinę, wyznacz prze	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1016	2024-11-04 01:41:11.868387+00	12	12 -> Narysuj wykres funkcji \\(f(x)=	1	[{"added": {}}]	12	1
1017	2024-11-04 01:43:10.632326+00	1	1 -> Suma wszystkich krawędzi prost	2	[]	12	1
1018	2024-11-04 01:43:22.041305+00	2	2 -> Sporządź wykres funkcji \\(f(x)	2	[]	12	1
1019	2024-11-04 01:43:42.223257+00	3	3 -> Ze zbioru trzech elementów \\(\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1020	2024-11-04 01:43:55.831176+00	4	4 -> Sześciu przyjaciół \\(A\\), \\(B\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1021	2024-11-04 01:44:14.12764+00	4	4 -> Sześciu przyjaciół \\(A\\), \\(B\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1022	2024-11-04 01:45:04.125588+00	5	5 -> Wyznacz współrzędne wierzchołk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1023	2024-11-04 01:46:04.861009+00	6	6 -> Trójkąt równoboczny \\(ABC\\) o 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1024	2024-11-04 01:46:45.748303+00	7	7 -> Ile jest czterocyfrowych kodów	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1025	2024-11-04 01:47:18.103658+00	8	8 -> Pięciu wioślarzy \\(A\\), \\(B\\),	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1026	2024-11-04 01:47:34.382435+00	9	9 -> Znajdź współrzędne wierzchołka	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1027	2024-11-04 01:48:30.443799+00	10	10 -> W prostokątnym układzie współr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1028	2024-11-04 01:48:45.141131+00	10	10 -> W prostokątnym układzie współr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1029	2024-11-04 01:49:24.704194+00	10	10 -> W prostokątnym układzie współr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1030	2024-11-04 01:49:46.109517+00	11	11 -> Wyznacz wszystkie styczne do w	2	[]	12	1
1031	2024-11-04 01:50:10.327878+00	12	12 -> Kwadrat \\(ABCD\\) o boku \\(a\\) 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1032	2024-11-04 01:55:00.309086+00	1	1 -> Współczynniki \\(a\\), \\(b\\) tró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1033	2024-11-04 01:55:39.304998+00	2	2 -> Kwadrat o boku \\(a\\) zgięto wz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1034	2024-11-04 01:56:10.284936+00	3	3 -> Trzy czerwone, trzy żółte i je	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1035	2024-11-04 01:56:27.370704+00	4	4 -> Wyznaczyć dziedzinę funkcji \\(	2	[]	12	1
1036	2024-11-04 01:57:01.486271+00	5	5 -> W ostrosłup prawidłowy czworok	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1037	2024-11-04 01:57:48.030702+00	6	6 -> Rozwiązać układ równań \\begin{	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1038	2024-11-04 01:58:25.752301+00	7	7 -> Na każdym z trzech drutów lini	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1039	2024-11-04 01:59:02.397027+00	8	8 -> Dolna cześć namiotu ma kształt	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1040	2024-11-04 01:59:53.979878+00	9	9 -> Z pudełka zawierającego 10 klo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1041	2024-11-04 02:00:35.608678+00	10	10 -> Stosując zasadę indukcji matem	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1042	2024-11-04 02:01:04.336597+00	10	10 -> Stosując zasadę indukcji matem	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1043	2024-11-04 02:01:30.95971+00	10	10 -> Stosując zasadę indukcji matem	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1044	2024-11-04 02:01:58.550636+00	11	11 -> Znaleźć równanie stycznej 1 do	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1045	2024-11-04 02:03:48.119038+00	12	12 -> Krawędź podstawy graniastosłup	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1046	2024-11-04 02:05:23.60613+00	1	1 -> Cztery cyfry 0 i pięć cyfr 1 u	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1047	2024-11-04 02:05:52.875322+00	2	2 -> Drugi wyraz pewnego ciągu geom	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1048	2024-11-04 02:06:35.693951+00	4	4 -> Dana jest funkcja \\(f(x)=\\frac	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1049	2024-11-04 02:07:04.833854+00	5	5 -> Romb o boku \\(a\\) i kącie ostr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1050	2024-11-04 02:07:15.829579+00	6	6 -> Długości boków trapezu opisane	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1051	2024-11-04 02:08:10.707865+00	7	7 -> Spośród 12 pączków, leżących n	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1052	2024-11-04 02:09:22.416132+00	8	8 -> Na krzywej o równaniu \\(y=\\sqr	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1053	2024-11-04 02:10:08.939056+00	9	9 -> Wyznaczyć punkty przecięcia si	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1054	2024-11-04 02:10:27.032423+00	9	9 -> Wyznaczyć punkty przecięcia si	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1055	2024-11-04 02:11:25.036718+00	10	10 -> Stosując zasadę indukcji matem	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1056	2024-11-04 02:12:20.770858+00	11	11 -> Z punktu \\(P\\) widać okrąg o ś	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1057	2024-11-04 02:12:39.257094+00	12	12 -> Podstawą ostrosłupa jest romb 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1058	2024-11-04 02:13:46.454518+00	1	1 -> Pierwszym wyrazem ciągu arytme	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1059	2024-11-04 02:13:55.835114+00	2	2 -> Spośród dwucyfrowych liczb nie	2	[]	12	1
1060	2024-11-04 02:14:09.440584+00	3	3 -> Uzasadnić, że ciąg o wyrazach 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1061	2024-11-04 02:14:48.969873+00	4	4 -> Znaleźć wszystkie wartości par	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1062	2024-11-04 02:15:19.78947+00	5	5 -> W ostrosłupie prawidłowym czwo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1063	2024-11-04 02:16:15.208478+00	6	6 -> Podstawa \\(AB\\) trójkąta równo	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1064	2024-11-04 02:17:07.447859+00	7	7 -> Turysta zabłądził w lesie zajm	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1065	2024-11-04 02:17:50.300995+00	8	8 -> Korzystając z zasady indukcji 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1066	2024-11-04 02:19:04.625519+00	9	9 -> Kubuś zaobserwował, że w pewne	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1067	2024-11-04 02:19:44.918364+00	10	10 -> Podstawa graniastosłupa proste	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1068	2024-11-04 02:20:19.643551+00	11	11 -> Znaleźć dziedzinę i zbiór wart	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1069	2024-11-04 02:21:24.239978+00	12	12 -> Kąt płaski przy wierzchołku \\(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1070	2024-11-04 02:21:51.408517+00	12	12 -> Kąt płaski przy wierzchołku \\(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1071	2024-11-04 02:24:30.56728+00	1	1 -> W pierwszej godzinie rowerzyst	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1072	2024-11-04 02:25:01.201112+00	2	2 -> W skarbonce jest 5 monet 5 zł 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1073	2024-11-04 02:25:17.666267+00	3	3 -> Rozwiązać nierówność \\(2\\log_{	2	[]	12	1
1074	2024-11-04 02:26:00.784887+00	4	4 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1075	2024-11-04 02:26:34.361341+00	4	4 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1076	2024-11-04 02:27:05.136574+00	5	5 -> W ostrosłupie prawidłowym trój	2	[]	12	1
1077	2024-11-04 02:27:32.801675+00	6	6 -> Kąty przy podstawie \\(AB\\) tró	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1078	2024-11-04 02:28:02.361552+00	7	7 -> Rozwiązać nierówność \\(\\sqrt{\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1079	2024-11-04 02:28:51.431551+00	8	8 -> Ze zbioru \\(\\{1,2,…,3n\\}\\), \\(	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1080	2024-11-04 02:29:44.037986+00	9	9 -> Stosując zasadę indukcji matem	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1081	2024-11-04 02:30:24.381778+00	10	10 -> Dana jest funkcja \\(f(x)=\\frac	2	[]	12	1
1082	2024-11-04 02:31:05.767504+00	11	11 -> W czworokącie \\(ABCD\\) o bokac	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1083	2024-11-04 02:31:38.492765+00	12	12 -> Podstawą ostrosłupa jest trójk	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1084	2024-11-04 02:34:00.731188+00	1	1 -> Wyznaczyć \\(z\\) jako funkcję z	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1085	2024-11-04 02:34:16.007241+00	2	2 -> Pokazać, że dla każdej wartośc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1086	2024-11-04 02:35:00.392106+00	3	3 -> W zależności od parametru rzec	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1087	2024-11-04 02:35:22.192273+00	4	4 -> Przekątna \\(BD\\) równoległobok	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1088	2024-11-04 02:35:34.936193+00	5	5 -> Wyznaczyć zbiór punktów, z któ	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1089	2024-11-04 02:36:13.137434+00	6	6 -> Podstawą graniastosłupa proste	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1090	2024-11-04 02:36:40.298587+00	7	7 -> Rozwiązać równanie \\((\\frac{1}	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1091	2024-11-04 02:36:58.473851+00	8	8 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1092	2024-11-04 02:37:09.744471+00	8	8 -> Dla jakich wartości parametru 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1093	2024-11-04 02:37:37.108612+00	9	9 -> Czworokąt wypukły \\(ABCD\\), w 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1094	2024-11-04 02:38:10.40033+00	10	10 -> Podstawa graniastosłupa proste	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1095	2024-11-04 02:38:58.532792+00	12	12 -> Wykorzystując wzór Newtona i \\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1096	2024-11-04 02:39:29.290759+00	12	12 -> Wykorzystując wzór Newtona i o	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1097	2024-11-04 02:41:36.37876+00	1	1 -> Wykaż, że dla dowolnych liczb 	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1098	2024-11-04 02:42:22.49217+00	3	3 -> Spośród 10 białych i 2 czarnyc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1099	2024-11-04 02:43:23.481613+00	5	5 -> Odcinek o końcach \\(A(1,0)\\) i	2	[]	12	1
1100	2024-11-04 02:43:43.37664+00	6	6 -> Na bokach \\(AC\\) i \\(BC\\) trój	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1101	2024-11-04 02:44:07.203117+00	7	7 -> Wykaż, że dla dowolnych liczb 	2	[]	12	1
1102	2024-11-04 02:44:24.112087+00	8	8 -> Rozwiąż równanie \\(\\cos{x}-\\si	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1103	2024-11-04 02:44:51.560921+00	9	9 -> Liczba dwuelementowych podzbio	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1104	2024-11-04 02:45:18.346118+00	10	10 -> Reszta z dzielenia wielomianu 	2	[]	12	1
1105	2024-11-04 02:45:51.833051+00	11	11 -> Dwa boki trójkąta zawierają si	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1106	2024-11-04 02:46:11.85577+00	12	12 -> Wyznacz równanie krzywej będąc	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1107	2024-11-04 09:10:47.90168+00	1	1 -> Wyznacz dziedzinę funkcji \\(f(	3		12	1
1108	2024-11-23 11:56:24.814154+00	2	2 -> Właściciel hurtowni sprzedał $	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1109	2024-11-23 12:16:26.904958+00	9	9 -> Narysuj wykres funkcji \\[ f(x)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1110	2024-11-23 12:16:39.514485+00	9	9 -> Narysuj wykres funkcji \\[ f(x)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1111	2024-11-23 15:44:43.528772+00	41	41 -> \\($f(x)=\\left\\{\\begin{array}{l	3		12	1
1112	2024-11-23 15:44:43.532087+00	40	40 -> /code\\(\\)['image']['zadanieInp	3		12	1
1113	2024-11-23 15:44:43.533286+00	39	39 -> /code\\(\\)['image']['zadanieInp	3		12	1
1114	2024-11-23 15:44:43.534402+00	38	38 -> /code\\(\\)['image']['zadanieInp	3		12	1
1115	2024-11-23 15:44:43.535204+00	37	37 -> /code\\(\\)['image']['zadanieInp	3		12	1
1116	2024-11-23 15:44:43.535924+00	36	36 -> /code\\(\\)['image']['zadanieInp	3		12	1
1117	2024-11-23 15:44:43.536772+00	35	35 -> None\\(\\)['image']['zadanieInpu	3		12	1
1118	2024-11-23 15:44:43.537489+00	34	34 -> rozw.jpg\\(\\)[]['image', 'zadan	3		12	1
1119	2024-11-23 15:44:43.538044+00	33	33 -> /code\\(\\)[]['image', 'zadanieI	3		12	1
1120	2024-11-23 15:44:43.538529+00	32	32 -> /code\\(\\)[]['image', 'zadanieI	3		12	1
1121	2024-11-23 15:44:43.538997+00	31	31 -> /code\\(\\)[]['image', 'zadanieI	3		12	1
1122	2024-11-23 15:44:43.539432+00	30	30 -> /code\\(\\)[]['image', 'zadanieI	3		12	1
1123	2024-11-23 15:44:43.539927+00	29	29 -> \\(\\)[]['image', 'zadanieInput'	3		12	1
1124	2024-11-23 15:44:43.540389+00	28	28 -> \\(\\)[]['image', 'zadanieInput'	3		12	1
1125	2024-11-23 15:44:43.540927+00	27	27 -> \\(\\)[]['image', 'zadanieInput'	3		12	1
1126	2024-11-23 15:44:43.541486+00	26	26 -> \\(\\)[]['image', 'zadanieInput'	3		12	1
1129	2024-11-23 15:44:43.54385+00	23	23 -> \\(\\)[]	3		12	1
1130	2024-11-23 15:44:43.544447+00	22	22 -> \\(\\)[]	3		12	1
1131	2024-11-23 15:44:43.544896+00	21	21 -> \\(\\)	3		12	1
1132	2024-11-23 15:44:43.545284+00	20	20 -> \\(\\)	3		12	1
1133	2024-11-23 15:44:43.545661+00	19	19 -> \\(\\)	3		12	1
1134	2024-11-23 15:44:43.546015+00	18	18 -> \\(\\)	3		12	1
1135	2024-11-23 15:44:43.546391+00	17	17 -> \\(\\)	3		12	1
1136	2024-11-23 15:44:43.546717+00	16	16 -> \\(\\)	3		12	1
1137	2024-11-23 15:44:43.54708+00	15	15 -> \\(\\)	3		12	1
1138	2024-11-23 15:44:43.547445+00	14	14 -> \\(\\)	3		12	1
1139	2024-11-23 15:44:43.547802+00	13	13 -> \\(\\)	3		12	1
1140	2024-11-23 15:44:43.548131+00	12	12 -> Z wierzchołków podstawy \\(A B\\	3		12	1
1141	2024-11-23 15:44:43.548865+00	11	11 -> Odcinek o końcach \\(A\\left(\\fr	3		12	1
1142	2024-11-23 15:44:43.549233+00	10	10 -> Dla jakich wartości parametru 	3		12	1
1143	2024-11-23 15:44:43.549605+00	9	9 -> Narysuj wykres funkcji \\[ f(x)	3		12	1
1144	2024-11-23 15:44:43.550019+00	8	8 -> 31 grudnia Kowalski zaciągnął 	3		12	1
1145	2024-11-23 15:44:43.550603+00	7	7 -> Wykaż, że różnica czwartych po	3		12	1
1146	2024-11-23 15:44:43.551266+00	6	6 -> Z miejscowości \\(A\\) i \\(B\\) o	3		12	1
1147	2024-11-23 15:44:43.551757+00	5	5 -> Oblicz \\[ \\frac{\\sqrt{2 \\sin ^	3		12	1
1148	2024-11-23 15:44:43.552158+00	4	4 -> Wykresem funkcji \\(f(x)=x^{2}+	3		12	1
1149	2024-11-23 15:44:43.552615+00	3	3 -> Narysuj wykres funkcji \\[ f(x)	3		12	1
1150	2024-11-23 15:44:43.552981+00	2	2 -> Właściciel hurtowni sprzedał \\	3		12	1
1151	2024-11-23 15:44:43.553309+00	1	1 -> Wykaż, że różnica kwadratów dw	3		12	1
1152	2024-11-24 21:29:24.756862+00	15	Publiczne Salezjańskie Liceum Ogólnokształcące w Krakowie	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1153	2024-11-24 21:29:29.763645+00	14	Politechnika Warszawska	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1154	2024-11-24 21:29:35.90471+00	13	Akademia Pomorska w Słupsku	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1155	2024-11-24 21:29:48.401946+00	11	WSiP	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1156	2024-11-24 21:30:23.617257+00	12	Instytut Matematyczny Polskiej Akademii Nauk	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1157	2024-11-24 21:30:28.574131+00	10	Portal edukacyjny w Szczecinie	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1158	2024-11-24 21:30:35.2563+00	9	Lubelskie Samorządowe Centrum Doskonalenia Nauczycieli	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1159	2024-11-24 21:30:45.383616+00	8	Kujawsko-Pomorskie Centrum Edukacji Nauczycieli w Bydgoszczy	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1160	2024-11-24 21:30:51.84178+00	7	XIV Liceum Ogólnokształcące im. Stanisława Staszica	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1161	2024-11-24 21:30:59.635713+00	6	Politechnika Gdańska	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1162	2024-11-24 21:34:08.403815+00	5	Operon	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1163	2024-11-24 21:34:53.648575+00	4	Nowa Era	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1164	2024-11-24 21:35:02.952215+00	3	Wydział Matematyki Politechniki Wrocławskiej	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1165	2024-11-24 21:35:09.445285+00	2	Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1166	2024-11-24 21:35:14.987681+00	1	Centralna komisja egzaminacyjna	2	[{"changed": {"fields": ["Typ"]}}]	19	1
1167	2024-11-25 01:38:52.423029+00	18	ZrodloZadan object (18)	2	[{"changed": {"fields": ["Poziom"]}}]	30	1
1168	2024-11-25 01:39:00.588233+00	19	ZrodloZadan object (19)	2	[{"changed": {"fields": ["Poziom"]}}]	30	1
1169	2024-11-25 11:31:28.671916+00	1	Zasob object (1)	1	[{"added": {}}]	5	1
1170	2024-11-25 11:31:34.120724+00	1	Zasob object (1)	3		5	1
1171	2024-11-25 11:35:12.955271+00	77	Zasob object (77)	1	[{"added": {}}]	5	1
1172	2024-11-25 11:35:18.383271+00	77	Zasob object (77)	3		5	1
1173	2024-11-25 19:09:15.259434+00	48	Kurs maturalny Politechniki Wrocławskiej	2	[{"changed": {"fields": ["Organizator"]}}]	30	1
1174	2024-11-25 19:20:13.694607+00	27	Konkurs Staś	2	[{"changed": {"fields": ["Organizator"]}}]	30	1
1175	2024-11-25 20:21:39.835841+00	2380	2380 -> Wyznacz równanie linii będącej	3		12	1
1176	2024-11-25 20:21:39.838529+00	2379	2379 -> Oblicz tangens kąta rozwarcia 	3		12	1
1177	2024-11-25 20:21:39.839596+00	2378	2378 -> Rozwiąż równanie logarytmiczne	3		12	1
1178	2024-11-25 20:21:39.840709+00	2377	2377 -> Rozwiąż nierówność \\[ x+1+\\fra	3		12	1
1179	2024-11-25 20:21:39.841549+00	2376	2376 -> Wśród prostokątów o ustalonej 	3		12	1
1180	2024-11-25 20:21:39.84226+00	2375	2375 -> Wyznacz skalę podobieństwa tró	3		12	1
1181	2024-11-25 20:21:39.843238+00	2374	2374 -> Bez użycia kalkulatora porówna	3		12	1
1182	2024-11-25 20:21:39.844044+00	2373	2373 -> Rozwiąż nierówność \\[ \\frac{3 	3		12	1
1183	2024-11-25 20:21:39.844776+00	2372	2372 -> Opisz metodę konstrukcji i sta	3		12	1
1184	2024-11-25 20:21:39.845578+00	2371	2371 -> Rozwiąż nierówność \\[ \\sqrt{\\l	3		12	1
1185	2024-11-25 20:21:39.846095+00	2370	2370 -> Wyznacz dziedzinę \\(D_{f}\\) fu	3		12	1
1186	2024-11-25 20:21:39.846521+00	2369	2369 -> Uzasadnij, że ciąg \\(\\left(a_{	3		12	1
1187	2024-11-25 20:21:39.846964+00	2368	2368 -> Niech \\(c>0\\) i \\(c \\neq 1\\). 	3		12	1
1188	2024-11-25 20:21:39.847325+00	2367	2367 -> Zaznacz na osi liczbowej zbiór	3		12	1
1189	2024-11-25 20:21:39.847788+00	2366	2366 -> Bank oferuje kredyt, który nal	3		12	1
1190	2024-11-25 20:21:39.848137+00	2365	2365 -> W ciągu arytmetycznym \\(\\left(	3		12	1
1191	2024-11-25 20:21:39.848481+00	2364	2364 -> Rozwiąż nierówność \\[ 1 \\leqsl	3		12	1
1192	2024-11-25 20:21:39.848826+00	2363	2363 -> Określ dziedzinę, wyznacz prze	3		12	1
1193	2024-11-25 20:21:39.849276+00	2362	2362 -> Rozwiąż nierówność \\[ 1+\\opera	3		12	1
1194	2024-11-25 20:21:39.849753+00	2361	2361 -> Określ dziedzinę i zbadaj, dla	3		12	1
1195	2024-11-25 20:21:39.850107+00	2360	2360 -> Rozwiąż równanie \\[ 8 x^{3}=1+	3		12	1
1196	2024-11-25 20:21:39.850496+00	2359	2359 -> Developer chce pomalować każde	3		12	1
1197	2024-11-25 20:21:39.850817+00	2358	2358 -> Narysuj wykres funkcji \\[ f(x)	3		12	1
1198	2024-11-25 20:21:39.851134+00	2357	2357 -> Rozwiąż nierówność \\[ 4^{x^{3}	3		12	1
1199	2024-11-25 20:21:39.85146+00	2356	2356 -> Wśród prostokątów wpisanych w 	3		12	1
1200	2024-11-25 20:21:39.851778+00	2355	2355 -> Wyznacz dziedzinę i zbadaj, dl	3		12	1
1201	2024-11-25 20:21:39.852124+00	2354	2354 -> W szufladzie znajduje się 6 ró	3		12	1
1202	2024-11-25 20:21:39.852444+00	2353	2353 -> Rozwiąż nierówność logarytmicz	3		12	1
1203	2024-11-25 20:21:39.852819+00	2352	2352 -> Rozwiąż równanie \\[ \\operatorn	3		12	1
1204	2024-11-25 20:21:39.853144+00	2351	2351 -> Zbadaj, dla jakich argumentów 	3		12	1
1205	2024-11-25 20:21:39.853468+00	2350	2350 -> Na nowym osiedlu wybudowano sz	3		12	1
1206	2024-11-25 20:21:39.853901+00	2349	2349 -> Narysuj wykres funkcji \\[ f(x)	3		12	1
1207	2024-11-25 20:21:39.854231+00	2348	2348 -> Przekątna rombu o obwodzie 12 	3		12	1
1208	2024-11-25 20:21:39.854635+00	2347	2347 -> Rozwiąż równanie \\[ 12 \\cos ^{	3		12	1
1209	2024-11-25 20:21:39.855015+00	2346	2346 -> Niech \\(p\\) będzie liczbą pier	3		12	1
1210	2024-11-25 20:21:39.855453+00	2345	2345 -> Andrzej przebiegł maraton, pok	3		12	1
1211	2024-11-25 20:21:39.855894+00	2344	2344 -> Bocian stoi na słupie o wysoko	3		12	1
1212	2024-11-25 20:21:39.856284+00	2343	2343 -> Trzy liczby tworzą ciąg geomet	3		12	1
1213	2024-11-25 20:21:39.856721+00	2342	2342 -> Rozwiązać nierówność \\[ x-1>\\s	3		12	1
1214	2024-11-25 20:21:39.857069+00	2341	2341 -> Kod do sejfu w willi pana Boga	3		12	1
1215	2024-11-25 20:21:39.857391+00	2340	2340 -> Ułożono dwie wieże z sześcienn	3		12	1
1216	2024-11-25 20:21:39.857712+00	2339	2339 -> Marcin stoi nad brzegiem morza	3		12	1
1217	2024-11-25 20:21:39.858037+00	2338	2338 -> Rozwiązać nierówność \\[ x+1 \\g	3		12	1
1218	2024-11-25 20:21:39.858513+00	2337	2337 -> Hasło do pewnego systemu kompu	3		12	1
1219	2024-11-25 20:21:39.858816+00	2336	2336 -> Grupa słuchaczy wykładu z alge	3		12	1
1220	2024-11-25 20:21:39.859126+00	2335	2335 -> Czy suma długości przekątnych 	3		12	1
1221	2024-11-25 20:21:39.859432+00	2334	2334 -> Podać interpretację geometrycz	3		12	1
1222	2024-11-25 20:21:39.859735+00	2333	2333 -> Wycinek koła o promieniu \\(3 R	3		12	1
1223	2024-11-25 20:21:39.860029+00	2332	2332 -> Liczba -2 jest pierwiastkiem d	3		12	1
1224	2024-11-25 20:21:39.860324+00	2331	2331 -> Stosując zasadę indukcji matem	3		12	1
1225	2024-11-25 20:21:39.860627+00	2330	2330 -> Niech \\(A\\) będzie wierzchołki	3		12	1
1226	2024-11-25 20:21:39.860908+00	2329	2329 -> Dane są funkcje \\(f(x)=4^{x-2}	3		12	1
1227	2024-11-25 20:21:39.861196+00	2328	2328 -> Wyznaczyć wartość parametru \\(	3		12	1
1228	2024-11-25 20:21:39.861552+00	2327	2327 -> Dane są punkty \\(A(0,2), B(4,4	3		12	1
1229	2024-11-25 20:21:39.861901+00	2326	2326 -> Podstawą ostrosłupa jest trójk	3		12	1
1230	2024-11-25 20:21:39.862194+00	2325	2325 -> Koło \\(x^{2}+y^{2}+4 x-2 y-1 \\	3		12	1
1231	2024-11-25 20:21:39.862484+00	2324	2324 -> Cztery kolejne współczynniki w	3		12	1
1232	2024-11-25 20:21:39.862775+00	2323	2323 -> Pole powierzchni całkowitej os	3		12	1
1233	2024-11-25 20:21:39.863055+00	2322	2322 -> Odcinek o końcach \\(A(0,7)\\) i	3		12	1
1234	2024-11-25 20:21:39.863421+00	2321	2321 -> Rozwiązać układ równań \\[ \\lef	3		12	1
1235	2024-11-25 20:21:39.864069+00	2320	2320 -> Narysować wykres funkcji \\[ f(	3		12	1
1236	2024-11-25 20:21:39.864436+00	2319	2319 -> Rozwiązać równanie \\[ \\sin x+\\	3		12	1
1237	2024-11-25 20:21:39.86475+00	2318	2318 -> W ostrosłupie prawidłowym trój	3		12	1
1238	2024-11-25 20:21:39.865116+00	2317	2317 -> W trapezie równoramiennym \\(A 	3		12	1
1239	2024-11-25 20:21:39.865611+00	2316	2316 -> Rozwiązać układ równań \\[ \\lef	3		12	1
1240	2024-11-25 20:21:39.86594+00	2315	2315 -> Narysować wykres funkcji \\(f(x	3		12	1
1241	2024-11-25 20:21:39.866311+00	2314	2314 -> Wyrażenie \\[ \\left(\\frac{a-2 b	3		12	1
1242	2024-11-25 20:21:39.866615+00	2313	2313 -> Wyznaczyć rozwiązanie ogólne r	3		12	1
1243	2024-11-25 20:21:39.866988+00	2312	2312 -> Z dwóch przeciwległych wierzch	3		12	1
1244	2024-11-25 20:21:39.867301+00	2311	2311 -> Udowodnić, że dla \\(x>-1\\) pra	3		12	1
1245	2024-11-25 20:21:39.86767+00	2310	2310 -> Dane są wierzchołki \\(A(-3,2),	3		12	1
1246	2024-11-25 20:21:39.868086+00	2309	2309 -> Gra w pary. W skarbonce znajdu	3		12	1
1247	2024-11-25 20:21:39.868436+00	2308	2308 -> Rozwiązać równanie \\[ \\sqrt{x^	3		12	1
1248	2024-11-25 20:21:39.86883+00	2307	2307 -> Trapez równoramienny \\(A B C D	3		12	1
1249	2024-11-25 20:21:39.869162+00	2306	2306 -> Uzasadnić, że dla dowolnego \\(	3		12	1
1250	2024-11-25 20:21:39.869508+00	2305	2305 -> Wyznaczyć dziedzinę funkcji \\[	3		12	1
1251	2024-11-25 20:21:39.870251+00	2304	2304 -> Rozwiązać równanie \\[ \\sqrt{2^	3		12	1
1252	2024-11-25 20:21:39.870705+00	2303	2303 -> Boki \\(\\triangle A B C\\) zawar	3		12	1
1253	2024-11-25 20:21:39.871169+00	2302	2302 -> Niech \\(A=\\{(x, y):|x|+2|y| \\l	3		12	1
1254	2024-11-25 20:21:39.87159+00	2301	2301 -> Podać dziedzinę i wyznaczyć ws	3		12	1
1255	2024-11-25 20:21:39.871949+00	2300	2300 -> Rozwiązać nierówność \\[ 2^{-\\s	3		12	1
1256	2024-11-25 20:21:39.872405+00	2299	2299 -> Zbadać, dla jakich argumentów 	3		12	1
1257	2024-11-25 20:21:39.872831+00	2298	2298 -> Rozwiązać nierówność \\[ \\log _	3		12	1
1258	2024-11-25 20:21:39.873262+00	2297	2297 -> Niech \\(n\\) będzie liczbą natu	3		12	1
1259	2024-11-25 20:21:39.87364+00	2296	2296 -> Linie kolejowe malują wagony k	3		12	1
1260	2024-11-25 20:21:39.873913+00	2295	2295 -> Między każde dwa kolejne wyraz	3		12	1
1261	2024-11-25 20:21:39.874211+00	2294	2294 -> Stosunek pola powierzchni bocz	3		12	1
1262	2024-11-25 20:21:39.874554+00	2293	2293 -> W kole \\(K\\) o promieniu 4 cm 	3		12	1
1263	2024-11-25 20:21:39.874857+00	2292	2292 -> Czworokąt wypukły \\(A B C D\\),	3		12	1
1264	2024-11-25 20:21:39.875135+00	2291	2291 -> Narysować wykres funkcji \\(f(x	3		12	1
1265	2024-11-25 20:21:39.875402+00	2290	2290 -> Przekrój ostrosłupa prawidłowe	3		12	1
1266	2024-11-25 20:21:39.875664+00	2289	2289 -> Dla jakich kątów \\(\\alpha\\) z 	3		12	1
1267	2024-11-25 20:21:39.875946+00	2288	2288 -> Promień kuli opisanej na ostro	3		12	1
1268	2024-11-25 20:21:39.876253+00	2287	2287 -> Dach wieży kościoła ma kształt	3		12	1
1269	2024-11-25 20:21:39.876605+00	2286	2286 -> W kwadracie o boku długości a 	3		12	1
1270	2024-11-25 20:21:39.876952+00	2285	2285 -> Narysować wykres funkcji \\(f(x	3		12	1
1271	2024-11-25 20:21:39.87731+00	2284	2284 -> Uzasadnić, że suma średnic okr	3		12	1
1272	2024-11-25 20:21:39.877626+00	2283	2283 -> Wyznaczyć wszystkie kąty \\(\\al	3		12	1
1273	2024-11-25 20:21:39.877909+00	2282	2282 -> Niech \\(f(x)=3(x+2)^{4}+x^{2}+	3		12	1
1274	2024-11-25 20:21:39.878179+00	2281	2281 -> Liczby: \\(a_{1}=\\log _{(3-2 \\s	3		12	1
1275	2024-11-25 20:21:53.042073+00	2280	2280 -> Dane są punkty \\(A(1,2), B(3,1	3		12	1
1276	2024-11-25 20:21:53.04496+00	2279	2279 -> Niech \\(f(x)=2^{x}, g(x)=2-x, 	3		12	1
1277	2024-11-25 20:21:53.045806+00	2278	2278 -> Czy liczby \\(\\sqrt{2}, \\sqrt{3	3		12	1
1278	2024-11-25 20:21:53.046549+00	2277	2277 -> Pan Kowalski umieścił swoje os	3		12	1
1279	2024-11-25 20:21:53.047294+00	2276	2276 -> Na prostej \\(x+2 y=5\\) wyznacz	3		12	1
1280	2024-11-25 20:21:53.048012+00	2275	2275 -> Przyprostokątną trójkąta prost	3		12	1
1281	2024-11-25 20:21:53.048616+00	2274	2274 -> Niech \\(f(x)=\\sqrt{x}, g(x)=x-	3		12	1
1282	2024-11-25 20:21:53.049639+00	2273	2273 -> Wielomian \\(W(x)=x^{5}+a x^{4}	3		12	1
1283	2024-11-25 20:21:53.050212+00	2272	2272 -> Czy liczby \\(\\sqrt{2}, 2,2 \\sq	3		12	1
1284	2024-11-25 20:21:53.050736+00	2271	2271 -> Z danych Głównego Urzędu Staty	3		12	1
1285	2024-11-25 20:21:53.051352+00	2270	2270 -> Z przystani A wyrusza z biegie	3		12	1
1286	2024-11-25 20:21:53.051957+00	2269	2269 -> Ile jest liczb pięciocyfrowych	3		12	1
1287	2024-11-25 20:21:53.052454+00	2268	2268 -> Dla jakiego parametru \\(m\\) ró	3		12	1
1288	2024-11-25 20:21:53.053042+00	2267	2267 -> Pan Kowalski zaciągnął 31 grud	3		12	1
1289	2024-11-25 20:21:53.053477+00	2266	2266 -> Dwaj rowerzyści wyjechali jedn	3		12	1
1290	2024-11-25 20:21:53.053936+00	2265	2265 -> Rozwiązać nierówność \\(\\frac{1	3		12	1
1291	2024-11-25 20:21:53.054381+00	2264	2264 -> Wykonać działania i zapisać w 	3		12	1
1292	2024-11-25 20:21:53.054835+00	2263	2263 -> Przy prostoliniowej ulicy (oś 	3		12	1
1293	2024-11-25 20:21:53.055293+00	2262	2262 -> Na paraboli \\(y=x^{2}-6 x+11\\)	3		12	1
1294	2024-11-25 20:21:53.055702+00	2261	2261 -> Ile jest czterocyfrowych liczb	3		12	1
1295	2024-11-25 20:21:53.056084+00	2260	2260 -> Pan Kowalski zaciągnął w banku	3		12	1
1296	2024-11-25 20:21:53.056646+00	2259	2259 -> Firma budowlana podpisała umow	3		12	1
1297	2024-11-25 20:21:53.057297+00	2258	2258 -> W trójkącie równoramiennym \\(A	3		12	1
1298	2024-11-25 20:21:53.057728+00	2257	2257 -> Obliczyć tangens kąta wypukłeg	3		12	1
1299	2024-11-25 20:21:53.058133+00	2256	2256 -> Narysować wykres funkcji \\(f(x	3		12	1
1300	2024-11-25 20:21:53.058538+00	2255	2255 -> Dane są liczby: \\(m=\\frac{\\bin	3		12	1
1301	2024-11-25 20:21:53.058958+00	2254	2254 -> Pole powierzchni bocznej ostro	3		12	1
1302	2024-11-25 20:21:53.059329+00	2253	2253 -> Niech \\(A=\\{(x, y): y \\geqslan	3		12	1
1303	2024-11-25 20:21:53.059699+00	2252	2252 -> W trójkąt otrzymany w przekroj	3		12	1
1304	2024-11-25 20:21:53.060225+00	2251	2251 -> Tangens kąta ostrego \\(\\alpha\\	3		12	1
1305	2024-11-25 20:21:53.060548+00	2250	2250 -> Niech \\(f(x)=\\left\\{\\begin{arr	3		12	1
1306	2024-11-25 20:21:53.060899+00	2249	2249 -> Trapez o kątach przy podstawie	3		12	1
1307	2024-11-25 20:21:53.061215+00	2248	2248 -> Liczba \\(p=\\frac{(\\sqrt[3]{54}	3		12	1
1308	2024-11-25 20:21:53.061548+00	2247	2247 -> Niech \\(A=\\left\\{x \\in \\mathbb	3		12	1
1309	2024-11-25 20:21:53.061909+00	2246	2246 -> Narysować wykres funkcji \\[ f(	3		12	1
1310	2024-11-25 20:21:53.062245+00	2245	2245 -> Znaleźć równanie stycznej \\(l\\	3		12	1
1311	2024-11-25 20:21:53.062589+00	2244	2244 -> Stosując zasadę indukcji matem	3		12	1
1312	2024-11-25 20:21:53.062922+00	2243	2243 -> Niech \\(f(x)=\\frac{x-1}{x+2}\\)	3		12	1
1313	2024-11-25 20:21:53.063236+00	2242	2242 -> Rozwiązać układ równań \\[ \\lef	3		12	1
1314	2024-11-25 20:21:53.063557+00	2241	2241 -> Znaleźć równanie stycznej \\(l\\	3		12	1
1315	2024-11-25 20:21:53.063937+00	2240	2240 -> Narysować wykres funkcji \\[ f(	3		12	1
1316	2024-11-25 20:21:53.064307+00	2239	2239 -> Wykazać, że dla dowolnego \\(n 	3		12	1
1317	2024-11-25 20:21:53.064732+00	2238	2238 -> Rozwiązać równanie \\[ \\frac{\\s	3		12	1
1318	2024-11-25 20:21:53.065057+00	2237	2237 -> Kwadrat \\(A B C D\\) o boku \\(a	3		12	1
1319	2024-11-25 20:21:53.065378+00	2236	2236 -> Wyznacz wszystkie styczne do w	3		12	1
1320	2024-11-25 20:21:53.065849+00	2235	2235 -> W prostokątnym układzie współr	3		12	1
1321	2024-11-25 20:21:53.066494+00	2234	2234 -> Znajdź współrzędne wierzchołka	3		12	1
1322	2024-11-25 20:21:53.066925+00	2233	2233 -> Pięciu wioślarzy \\(A, B, C, D,	3		12	1
1323	2024-11-25 20:21:53.06724+00	2232	2232 -> Ile jest czterocyfrowych kodów	3		12	1
1324	2024-11-25 20:21:53.067543+00	2231	2231 -> Trójkąt równoboczny \\(A B C\\) 	3		12	1
1325	2024-11-25 20:21:53.067874+00	2230	2230 -> Wyznacz współrzędne wierzchołk	3		12	1
1326	2024-11-25 20:21:53.06817+00	2229	2229 -> Sześciu przyjaciół \\(A, B, C, 	3		12	1
1327	2024-11-25 20:21:53.0685+00	2228	2228 -> Ze zbioru trzech elementów \\(\\	3		12	1
1328	2024-11-25 20:21:53.068811+00	2227	2227 -> Sporządź wykres funkcji \\[ f(x	3		12	1
1329	2024-11-25 20:21:53.069173+00	2226	2226 -> Suma wszystkich krawędzi prost	3		12	1
1330	2024-11-25 20:21:53.069558+00	2225	2225 -> W trójkąt równoramienny, które	3		12	1
1331	2024-11-25 20:21:53.069874+00	2224	2224 -> Uzasadnić, że dla każdej liczb	3		12	1
1332	2024-11-25 20:21:53.070154+00	2223	2223 -> Wyznaczyć dziedzinę naturalną 	3		12	1
1333	2024-11-25 20:21:53.070458+00	2222	2222 -> Ojciec i syn obchodzą urodziny	3		12	1
1334	2024-11-25 20:21:53.070764+00	2221	2221 -> Narysować w prostokątnym układ	3		12	1
1335	2024-11-25 20:21:53.071046+00	2220	2220 -> W trójkąt równoramienny, które	3		12	1
1336	2024-11-25 20:21:53.071537+00	2219	2219 -> Obliczyć, ile kolejnych dodatn	3		12	1
1337	2024-11-25 20:21:53.071874+00	2218	2218 -> Pewnej mroźnej zimy trzy przez	3		12	1
1338	2024-11-25 20:21:53.072156+00	2217	2217 -> Podstawą ostrosłupa jest trójk	3		12	1
1339	2024-11-25 20:21:53.072428+00	2216	2216 -> W czworokącie \\(A B C D\\) o bo	3		12	1
1340	2024-11-25 20:21:53.072716+00	2215	2215 -> Stosując zasadę indukcji matem	3		12	1
1341	2024-11-25 20:21:53.073223+00	2214	2214 -> Rozwiązać nierówność \\[ \\sqrt{	3		12	1
1342	2024-11-25 20:21:53.073526+00	2213	2213 -> Kąty przy podstawie \\(A B\\) tr	3		12	1
1343	2024-11-25 20:21:53.073838+00	2212	2212 -> W ostrosłupie prawidłowym trój	3		12	1
1344	2024-11-25 20:21:53.074136+00	2211	2211 -> Rozwiązać nierówność \\[ 2 \\log	3		12	1
1345	2024-11-25 20:21:53.074421+00	2210	2210 -> W skarbonce jest 5 monet \\(5 \\	3		12	1
1346	2024-11-25 20:21:53.074714+00	2209	2209 -> W pierwszej godzinie rowerzyst	3		12	1
1347	2024-11-25 20:21:53.074986+00	2208	2208 -> Wyznacz równanie krzywej będąc	3		12	1
1348	2024-11-25 20:21:53.075256+00	2207	2207 -> Dwa boki trójkąta zawierają si	3		12	1
1349	2024-11-25 20:21:53.075522+00	2206	2206 -> Reszta z dzielenia wielomianu 	3		12	1
1350	2024-11-25 20:21:53.075786+00	2205	2205 -> Liczba dwuelementowych podzbio	3		12	1
1351	2024-11-25 20:21:53.076077+00	2204	2204 -> Rozwiąż równanie \\(\\cos x-\\sin	3		12	1
1352	2024-11-25 20:21:53.076385+00	2203	2203 -> Wykaż, że dla dowolnych liczb 	3		12	1
1353	2024-11-25 20:21:53.076702+00	2202	2202 -> Na bokach \\(A C\\) i \\(B C\\) tr	3		12	1
1354	2024-11-25 20:21:53.076964+00	2201	2201 -> Odcinek o końcach \\(A(1,0)\\) i	3		12	1
1355	2024-11-25 20:21:53.077219+00	2200	2200 -> Wielomian \\(W(x)=2 x^{3}+p x^{	3		12	1
1356	2024-11-25 20:21:53.077478+00	2199	2199 -> Wykaż, że dla dowolnych liczb 	3		12	1
1357	2024-11-25 20:21:53.077777+00	2198	2198 -> Znaleźć dziedzinę i zbiór wart	3		12	1
1358	2024-11-25 20:21:53.07805+00	2197	2197 -> Podstawa graniastosłupa proste	3		12	1
1359	2024-11-25 20:21:53.078346+00	2196	2196 -> Korzystając z zasady indukcji 	3		12	1
1360	2024-11-25 20:21:53.078618+00	2195	2195 -> Turysta zabłądził w lesie zajm	3		12	1
1361	2024-11-25 20:21:53.078894+00	2194	2194 -> Podstawa \\(A B\\) trójkąta równ	3		12	1
1362	2024-11-25 20:21:53.079165+00	2193	2193 -> W ostrosłupie prawidłowym czwo	3		12	1
1363	2024-11-25 20:21:53.079427+00	2192	2192 -> Znaleźć wszystkie wartości par	3		12	1
1364	2024-11-25 20:21:53.079687+00	2191	2191 -> Uzasadnić, że ciąg o wyrazach 	3		12	1
1365	2024-11-25 20:21:53.079947+00	2190	2190 -> Spośród dwucyfrowych liczb nie	3		12	1
1366	2024-11-25 20:21:53.080208+00	2189	2189 -> Pierwszym wyrazem ciagu arytme	3		12	1
1367	2024-11-25 20:21:53.080463+00	2188	2188 -> W trójkącie równoramiennym \\(A	3		12	1
1368	2024-11-25 20:21:53.080718+00	2187	2187 -> Wyznaczyć równania wszystkich 	3		12	1
1369	2024-11-25 20:21:53.080984+00	2186	2186 -> Dla jakiego kąta ostrego \\(\\al	3		12	1
1370	2024-11-25 20:21:53.081417+00	2185	2185 -> Obliczyć pole trójkąta \\(A B C	3		12	1
1371	2024-11-25 20:21:53.081728+00	2184	2184 -> Narysować wykres funkcji \\(f(x	3		12	1
1372	2024-11-25 20:21:53.082003+00	2183	2183 -> W trójkąt równoramienny wpisan	3		12	1
1373	2024-11-25 20:21:53.082258+00	2182	2182 -> Wielomian \\(W(x)=x^{3}+a x^{2}	3		12	1
1374	2024-11-25 20:21:53.082513+00	2181	2181 -> Odcinek \\(C D\\) jest obrazem o	3		12	1
1375	2024-11-25 20:21:59.907789+00	2180	2180 -> Narysować wykres funkcji \\(f(x	3		12	1
1376	2024-11-25 20:21:59.909741+00	2179	2179 -> Rozwiązać równanie \\(\\operator	3		12	1
1377	2024-11-25 20:21:59.910661+00	2178	2178 -> Przez wierzchołek \\(S\\) stożka	3		12	1
1378	2024-11-25 20:21:59.911437+00	2177	2177 -> W trapezie opisanym na okręgu 	3		12	1
1379	2024-11-25 20:21:59.912144+00	2176	2176 -> Znaleźć równanie okręgu styczn	3		12	1
1380	2024-11-25 20:21:59.912755+00	2175	2175 -> Znaleźć i zaznaczyć na płaszcz	3		12	1
1381	2024-11-25 20:21:59.913338+00	2174	2174 -> W przedziale \\([0,2 \\pi]\\) roz	3		12	1
1382	2024-11-25 20:21:59.913947+00	2173	2173 -> Rozwiązać nierówność \\(\\frac{3	3		12	1
1383	2024-11-25 20:21:59.914533+00	2172	2172 -> Płaszczyzna przechodząca przez	3		12	1
1384	2024-11-25 20:21:59.91496+00	2171	2171 -> Trapez prostokątny, w którym s	3		12	1
1385	2024-11-25 20:21:59.915346+00	2170	2170 -> Zaznaczyć na płaszczyźnie zbio	3		12	1
1386	2024-11-25 20:21:59.915812+00	2169	2169 -> Znaleźć równanie okręgu styczn	3		12	1
1387	2024-11-25 20:21:59.916277+00	2168	2168 -> W przedziale \\([0,2 \\pi]\\) roz	3		12	1
1388	2024-11-25 20:21:59.916749+00	2167	2167 -> Rozwiązać nierówność \\(\\frac{1	3		12	1
1389	2024-11-25 20:21:59.917152+00	2166	2166 -> Wyznacz i narysuj funkcję \\(g(	3		12	1
1390	2024-11-25 20:21:59.917601+00	2165	2165 -> Wyznacz równania tych stycznyc	3		12	1
1391	2024-11-25 20:21:59.917972+00	2164	2164 -> Kwadrat o boku długości 4 obró	3		12	1
1392	2024-11-25 20:21:59.918309+00	2163	2163 -> Rozwiąż nierówność logarytmicz	3		12	1
1393	2024-11-25 20:21:59.918635+00	2162	2162 -> Liczby \\(a_{1}, a_{2}, \\ldots,	3		12	1
1394	2024-11-25 20:21:59.918978+00	2161	2161 -> Dane są punkty \\(A(0,-2)\\) ora	3		12	1
1395	2024-11-25 20:21:59.919301+00	2160	2160 -> W przedziale \\([0,2 \\pi]\\) wyz	3		12	1
1396	2024-11-25 20:21:59.919626+00	2159	2159 -> Rozwią̇̇ równanie \\[ 2\\left(\\l	3		12	1
1397	2024-11-25 20:21:59.919964+00	2158	2158 -> Ostrosłup prawidłowy czworokąt	3		12	1
1398	2024-11-25 20:21:59.920298+00	2157	2157 -> W trójkąt o wierzchołkach \\(A(	3		12	1
1399	2024-11-25 20:21:59.920631+00	2156	2156 -> Uczeń zna odpowiedzi na 20 spo	3		12	1
1400	2024-11-25 20:21:59.920963+00	2155	2155 -> Stosując zasadę indukcji matem	3		12	1
1401	2024-11-25 20:21:59.92134+00	2154	2154 -> Na ile sposobów można ustawić 	3		12	1
1402	2024-11-25 20:21:59.921754+00	2153	2153 -> W ostrosłupie prawidłowym trój	3		12	1
1403	2024-11-25 20:21:59.922515+00	2152	2152 -> Dany jest punkt \\(C(3,3)\\). Na	3		12	1
1404	2024-11-25 20:21:59.922986+00	2151	2151 -> Obliczyć prawdopodobieństwo, ż	3		12	1
1405	2024-11-25 20:21:59.923356+00	2150	2150 -> Wyznaczyć wszystkie wartości p	3		12	1
1406	2024-11-25 20:21:59.923744+00	2149	2149 -> Rzucamy pięcioma kostkami do g	3		12	1
1407	2024-11-25 20:21:59.924055+00	2148	2148 -> Na ile sposobów z grupy 10 chł	3		12	1
1408	2024-11-25 20:21:59.924363+00	2147	2147 -> W trójkąt równoboczny o boku \\	3		12	1
1409	2024-11-25 20:21:59.924685+00	2146	2146 -> W trójkącie równoramiennym \\(A	3		12	1
1410	2024-11-25 20:21:59.924984+00	2145	2145 -> Pole powierzchni bocznej ostro	3		12	1
1411	2024-11-25 20:21:59.925283+00	2144	2144 -> Dane jest równanie kwadratowe 	3		12	1
1412	2024-11-25 20:21:59.925566+00	2143	2143 -> Sześcian przecinamy płaszczyzn	3		12	1
1413	2024-11-25 20:21:59.925888+00	2142	2142 -> W trójkącie prostokątnym \\(A B	3		12	1
1414	2024-11-25 20:21:59.92617+00	2141	2141 -> W trójkąt równoboczny o boku \\	3		12	1
1415	2024-11-25 20:21:59.926454+00	2140	2140 -> Znajdź wymiary trapezu równora	3		12	1
1416	2024-11-25 20:21:59.926738+00	2139	2139 -> Niech \\(f(x)=4^{x+4}-7 \\cdot 3	3		12	1
1417	2024-11-25 20:21:59.927024+00	2138	2138 -> W kwadrat \\(A B C D\\) wpisano 	3		12	1
1418	2024-11-25 20:21:59.927304+00	2137	2137 -> Kula jest styczna do wszystkic	3		12	1
1419	2024-11-25 20:21:59.927615+00	2136	2136 -> Na półkuli o promieniu \\(r\\) o	3		12	1
1420	2024-11-25 20:21:59.927931+00	2135	2135 -> Wyznaczyć zbiór punktów płaszc	3		12	1
1421	2024-11-25 20:21:59.928232+00	2134	2134 -> Punkt \\(P\\left(-\\sqrt{3}, \\fra	3		12	1
1422	2024-11-25 20:21:59.928521+00	2133	2133 -> W czworokącie \\(A B C D\\) dane	3		12	1
1423	2024-11-25 20:21:59.928993+00	2132	2132 -> Rozwiązać równanie \\[ \\sqrt{3}	3		12	1
1424	2024-11-25 20:21:59.929631+00	2131	2131 -> Dla jakich wartości parametru 	3		12	1
1425	2024-11-25 20:21:59.930129+00	2130	2130 -> Dane są punkty \\(A(-1,-3)\\) i 	3		12	1
1426	2024-11-25 20:21:59.930576+00	2129	2129 -> Punkt \\(B(2,6)\\) jest wierzcho	3		12	1
1427	2024-11-25 20:21:59.931037+00	2128	2128 -> Rozwiązać nierówność \\(w(x-2)>	3		12	1
1428	2024-11-25 20:21:59.931448+00	2127	2127 -> Narysować wykres funkcji \\[ f(	3		12	1
1429	2024-11-25 20:21:59.931863+00	2126	2126 -> Wektory \\(\\overrightarrow{A B}	3		12	1
1430	2024-11-25 20:21:59.932187+00	2125	2125 -> Określić liczbę pierwiastków r	3		12	1
1431	2024-11-25 20:21:59.932527+00	2124	2124 -> Trzy liczby \\(x<y<z\\), których	3		12	1
1432	2024-11-25 20:21:59.932936+00	2123	2123 -> Tangens kąta ostrego \\(\\alpha\\	3		12	1
1433	2024-11-25 20:21:59.933316+00	2122	2122 -> Wyznaczyć zbiór wartości funkc	3		12	1
1434	2024-11-25 20:21:59.933616+00	2121	2121 -> Dziesiąty wyraz rozwinięcia \\(	3		12	1
1435	2024-11-25 20:21:59.934043+00	2120	2120 -> Obliczyć \\(a\\) wiedząc, że lic	3		12	1
1436	2024-11-25 20:21:59.934376+00	2119	2119 -> Wierzchołek \\(A\\) wykresu funk	3		12	1
1437	2024-11-25 20:21:59.934777+00	2118	2118 -> Dla jakiego parametru \\(m\\) ró	3		12	1
1438	2024-11-25 20:21:59.935106+00	2117	2117 -> Narysować wykres funkcji \\[ f(	3		12	1
1439	2024-11-25 20:21:59.935396+00	2116	2116 -> Suma pewnej ilości kolejnych l	3		12	1
1440	2024-11-25 20:21:59.935993+00	2115	2115 -> Rozwiązać nierówność \\(x^{3}+n	3		12	1
1441	2024-11-25 20:21:59.936449+00	2114	2114 -> Dwaj turyści wyruszyli jednocz	3		12	1
1442	2024-11-25 20:21:59.936782+00	2113	2113 -> Uprościć wyrażenie ( dla \\(a, 	3		12	1
1443	2024-11-25 20:21:59.937191+00	2112	2112 -> Narysować na płaszczyźnie zbió	3		12	1
1444	2024-11-25 20:21:59.937618+00	2111	2111 -> Ile jest liczb pięciocyfrowych	3		12	1
1445	2024-11-25 20:21:59.937997+00	2110	2110 -> Z dwu stacji wyjeżdżają jednoc	3		12	1
1446	2024-11-25 20:21:59.938363+00	2109	2109 -> Pan Kowalski zaciągnął 31 grud	3		12	1
1447	2024-11-25 20:21:59.93868+00	2108	2108 -> Grupa 175 robotników firmy pan	3		12	1
1448	2024-11-25 20:21:59.938979+00	2107	2107 -> Uprościć wyrażenie \\[ \\frac{1}	3		12	1
1449	2024-11-25 20:21:59.93927+00	2106	2106 -> Niech \\(A=\\left\\{x \\in \\mathbb	3		12	1
1450	2024-11-25 20:21:59.939669+00	2105	2105 -> Ile jest naturalnych liczb pię	3		12	1
1451	2024-11-25 20:21:59.940054+00	2104	2104 -> Z obozu A do obozu B można prz	3		12	1
1452	2024-11-25 20:21:59.940365+00	2103	2103 -> Wzrost kursu Euro w stosunku d	3		12	1
1453	2024-11-25 20:21:59.940642+00	2102	2102 -> W trójkącie o wierzchołkach \\(	3		12	1
1454	2024-11-25 20:21:59.94104+00	2101	2101 -> Z wierzchołka \\(O\\) paraboli \\	3		12	1
1455	2024-11-25 20:21:59.941399+00	2100	2100 -> Rozwiąż równanie \\[ \\cos x+\\co	3		12	1
1456	2024-11-25 20:21:59.941676+00	2099	2099 -> Wyznacz najmniejszą wartość fu	3		12	1
1457	2024-11-25 20:21:59.94215+00	2098	2098 -> Resztą z dzielenia wielomianu 	3		12	1
1458	2024-11-25 20:21:59.942481+00	2097	2097 -> Przekątna rombu o polu 9 zawar	3		12	1
1459	2024-11-25 20:21:59.942901+00	2096	2096 -> Na okręgu \\(x^{2}-2 x+y^{2}+4 	3		12	1
1460	2024-11-25 20:21:59.943324+00	2095	2095 -> W przedziale \\([0, \\pi]\\) nary	3		12	1
1461	2024-11-25 20:21:59.943811+00	2094	2094 -> Rozwiąż nierówność \\[ x^{5}+x^	3		12	1
1462	2024-11-25 20:21:59.944158+00	2093	2093 -> Podstawą ostrosłupa jest romb 	3		12	1
1463	2024-11-25 20:21:59.944555+00	2092	2092 -> Z punktu \\(P\\) widać okrąg o ś	3		12	1
1464	2024-11-25 20:21:59.944902+00	2091	2091 -> Stosując zasadę indukcji matem	3		12	1
1465	2024-11-25 20:21:59.945217+00	2090	2090 -> Wyznaczyć punkty przecięcia si	3		12	1
1466	2024-11-25 20:21:59.945523+00	2089	2089 -> Na krzywej o równaniu \\(y=\\sqr	3		12	1
1467	2024-11-25 20:21:59.945857+00	2088	2088 -> Spośród 12 pączków, leżących n	3		12	1
1468	2024-11-25 20:21:59.946175+00	2087	2087 -> Długości boków trapezu opisane	3		12	1
1469	2024-11-25 20:21:59.946426+00	2086	2086 -> Romb o boku \\(a\\) i kącie ostr	3		12	1
1470	2024-11-25 20:21:59.946684+00	2085	2085 -> Rozwiązać nierówność \\[ \\sqrt{	3		12	1
1471	2024-11-25 20:21:59.947022+00	2084	2084 -> Drugi wyraz pewnego ciągu geom	3		12	1
1472	2024-11-25 20:21:59.947326+00	2083	2083 -> Cztery cyfry 0 i pięć cyfr 1 u	3		12	1
1473	2024-11-25 20:21:59.947757+00	2082	2082 -> Wykorzystując wzór Newtona i o	3		12	1
1474	2024-11-25 20:21:59.94814+00	2081	2081 -> W zależności od parametru rzec	3		12	1
1475	2024-11-25 20:22:08.469506+00	2080	2080 -> Podstawą graniastosłupa proste	3		12	1
1476	2024-11-25 20:22:08.471333+00	2079	2079 -> Czworokąt wypukły \\(A B C D\\),	3		12	1
1477	2024-11-25 20:22:08.471959+00	2078	2078 -> Dla jakich wartości parametru 	3		12	1
1478	2024-11-25 20:22:08.472501+00	2077	2077 -> Rozwiązać równanie \\(\\left(\\fr	3		12	1
1479	2024-11-25 20:22:08.473207+00	2076	2076 -> Podstawą graniastosłupa proste	3		12	1
1480	2024-11-25 20:22:08.473587+00	2075	2075 -> Wyznaczyć zbiór punktów, z któ	3		12	1
1481	2024-11-25 20:22:08.473979+00	2074	2074 -> Przekątna \\(B D\\) równoległobo	3		12	1
1482	2024-11-25 20:22:08.474314+00	2073	2073 -> W zależności od parametru rzec	3		12	1
1483	2024-11-25 20:22:08.474665+00	2072	2072 -> Pokazać, że dla każdej wartośc	3		12	1
1484	2024-11-25 20:22:08.474963+00	2071	2071 -> Wyznaczyć \\(z\\) jako funkcję z	3		12	1
1485	2024-11-25 20:22:08.475264+00	2070	2070 -> Podstawą ostrosłupa \\(A B C D\\	3		12	1
1486	2024-11-25 20:22:08.47558+00	2069	2069 -> Rozwiązać układ równań \\[ \\lef	3		12	1
1487	2024-11-25 20:22:08.475967+00	2068	2068 -> Znaleźć wartość parametru nieu	3		12	1
1488	2024-11-25 20:22:08.476292+00	2067	2067 -> Dwóch strzelców oddało każdy p	3		12	1
1489	2024-11-25 20:22:08.476602+00	2066	2066 -> Sprawdzić tożsamość \\[ \\frac{\\	3		12	1
1490	2024-11-25 20:22:08.476888+00	2065	2065 -> Stosując zasadę indukcji matem	3		12	1
1491	2024-11-25 20:22:08.477289+00	2064	2064 -> Krzywa spiralna jest utworzona	3		12	1
1492	2024-11-25 20:22:08.477759+00	2063	2063 -> Podstawa \\(A B\\) trapezu równo	3		12	1
1493	2024-11-25 20:22:08.47821+00	2062	2062 -> Rozwiązać równanie \\[ \\frac{\\c	3		12	1
1494	2024-11-25 20:22:08.478564+00	2061	2061 -> Sala jest oświetlona 5 żarówka	3		12	1
1495	2024-11-25 20:22:08.478878+00	2060	2060 -> Liczba 1 jest pierwiastkiem wi	3		12	1
1496	2024-11-25 20:22:08.479161+00	2059	2059 -> Okrąg o promieniu \\(r\\) toczy 	3		12	1
1497	2024-11-25 20:22:08.479431+00	2058	2058 -> Manipulator robota składa się 	3		12	1
1498	2024-11-25 20:22:08.47971+00	2057	2057 -> Przekątne trapezu dzielą ten t	3		12	1
1499	2024-11-25 20:22:08.479978+00	2056	2056 -> Dana jest funkcja \\(f(x)=\\sin 	3		12	1
1500	2024-11-25 20:22:08.480243+00	2055	2055 -> Wykaż, że dla każdego trójkąta	3		12	1
1501	2024-11-25 20:22:08.480531+00	2054	2054 -> Udowodnij, że \\[ \\cos 4 x=1-8 	3		12	1
1502	2024-11-25 20:22:08.480809+00	2053	2053 -> Pewną górę widać najpierw pod 	3		12	1
1503	2024-11-25 20:22:08.481077+00	2052	2052 -> Na okręgu o promieniu \\(r\\) op	3		12	1
1504	2024-11-25 20:22:08.481331+00	2051	2051 -> Niech \\(\\alpha, \\beta\\) i \\(\\g	3		12	1
1505	2024-11-25 20:22:08.481581+00	2050	2050 -> Rozwią̇̇ równanie \\[ |\\sin x|+	3		12	1
1506	2024-11-25 20:22:08.481851+00	2049	2049 -> W trójkącie \\(A B C\\) wpisanym	3		12	1
1507	2024-11-25 20:22:08.482263+00	2048	2048 -> Rozwinięcie, powierzchni, bocz	3		12	1
1508	2024-11-25 20:22:08.482538+00	2047	2047 -> Udowodnić, że jeżeli liczby rz	3		12	1
1509	2024-11-25 20:22:08.482824+00	2046	2046 -> Wyznaczyć wszystkie wartości p	3		12	1
1510	2024-11-25 20:22:08.483091+00	2045	2045 -> Rozwiązać nierówność \\[ \\frac{	3		12	1
1511	2024-11-25 20:22:08.483569+00	2044	2044 -> Dany jest stożek ścięty, w któ	3		12	1
1512	2024-11-25 20:22:08.483882+00	2043	2043 -> Pole powierzchni bocznej ostro	3		12	1
1513	2024-11-25 20:22:08.484139+00	2042	2042 -> Wierzchołkami czworokąta są pu	3		12	1
1514	2024-11-25 20:22:08.484405+00	2041	2041 -> Dla jakich \\(\\alpha \\in[0,2 \\p	3		12	1
1515	2024-11-25 20:22:08.484673+00	2040	2040 -> Trzech robotników ma wykonać p	3		12	1
1516	2024-11-25 20:22:08.484964+00	2039	2039 -> Uprościć wyrażenie \\[ a(x)=\\le	3		12	1
1517	2024-11-25 20:22:08.485266+00	2038	2038 -> Jednym z pierwiastków wielomia	3		12	1
1518	2024-11-25 20:22:08.485536+00	2037	2037 -> Rozwiązać nierówność \\[ \\sin ^	3		12	1
1519	2024-11-25 20:22:08.485801+00	2036	2036 -> Podstawą ostrosłupa o wysokośc	3		12	1
1520	2024-11-25 20:22:08.486129+00	2035	2035 -> Bok \\(A B\\) trójkąta równorami	3		12	1
1521	2024-11-25 20:22:08.486509+00	2034	2034 -> Wyznaczyć wszystkie wartości p	3		12	1
1522	2024-11-25 20:22:08.486847+00	2033	2033 -> Rozwiązać równanie \\[ \\sqrt{8+	3		12	1
1523	2024-11-25 20:22:08.487132+00	2032	2032 -> Punkt \\((0,2)\\) jest środkiem 	3		12	1
1524	2024-11-25 20:22:08.487408+00	2031	2031 -> Trójkąt równoboczny \\(A B C\\) 	3		12	1
1525	2024-11-25 20:22:08.487683+00	2030	2030 -> Dana jest prosta \\(l: x+2 y-4=	3		12	1
1526	2024-11-25 20:22:08.487957+00	2029	2029 -> Określić liczbę rozwiązań ukła	3		12	1
1527	2024-11-25 20:22:08.488211+00	2028	2028 -> Wyznaczyć wszystkie punkty \\(x	3		12	1
1528	2024-11-25 20:22:08.488482+00	2027	2027 -> Rozwiązać równanie \\(1-|x|=\\sq	3		12	1
1529	2024-11-25 20:22:08.488737+00	2026	2026 -> Stosując zasadę indukcji matem	3		12	1
1530	2024-11-25 20:22:08.48902+00	2025	2025 -> Suma wyrazów nieskończonego ci	3		12	1
1531	2024-11-25 20:22:08.489288+00	2024	2024 -> W pudełku jest 400 kul w tym \\	3		12	1
1532	2024-11-25 20:22:08.489548+00	2023	2023 -> W turnieju szachowym rozgrywan	3		12	1
1533	2024-11-25 20:22:08.489824+00	2022	2022 -> Trzeci składnik rozwinięcia dw	3		12	1
1534	2024-11-25 20:22:08.490089+00	2021	2021 -> Ile liczb czterocyfrowych o ws	3		12	1
1535	2024-11-25 20:22:08.490346+00	2020	2020 -> Rozkład ocen ze sprawdzianu w 	3		12	1
1536	2024-11-25 20:22:08.490611+00	2019	2019 -> Suma pierwszego i trzeciego wy	3		12	1
1537	2024-11-25 20:22:08.490893+00	2018	2018 -> W turnieju szachowym każdy ucz	3		12	1
1538	2024-11-25 20:22:08.491158+00	2017	2017 -> Liczba 2-elementowych podzbior	3		12	1
1539	2024-11-25 20:22:08.491416+00	2016	2016 -> Losujemy liczbę ze zbioru \\(\\{	3		12	1
1540	2024-11-25 20:22:08.491702+00	2015	2015 -> Korzystając ze wzoru \\[ \\sin 5	3		12	1
1541	2024-11-25 20:22:08.491959+00	2014	2014 -> Rozwiązać nierówność \\[ \\sqrt{	3		12	1
1542	2024-11-25 20:22:08.492218+00	2013	2013 -> Określić dziedzinę i sporządzi	3		12	1
1543	2024-11-25 20:22:08.492487+00	2012	2012 -> Zaznaczyć na osi liczbowej zbi	3		12	1
1544	2024-11-25 20:22:08.492764+00	2011	2011 -> Stosując wzór na sinus podwojo	3		12	1
1545	2024-11-25 20:22:08.493167+00	2010	2010 -> Sporządzić staranny wykres fun	3		12	1
1546	2024-11-25 20:22:08.493418+00	2009	2009 -> Rozwiązać nierówność \\[ -2<\\lo	3		12	1
1547	2024-11-25 20:22:08.493673+00	2008	2008 -> W ciągu arytmetycznym suma poc	3		12	1
1548	2024-11-25 20:22:08.493931+00	2007	2007 -> W ostrosłupie prawidłowym czwo	3		12	1
1549	2024-11-25 20:22:08.494183+00	2006	2006 -> Dane są dwa okręgi: \\(K_{1}\\) 	3		12	1
1550	2024-11-25 20:22:08.494433+00	2005	2005 -> Przekrój sześcianu płaszczyzną	3		12	1
1551	2024-11-25 20:22:08.494686+00	2004	2004 -> Niech \\(K\\) będzie wierzchołki	3		12	1
1552	2024-11-25 20:22:08.494941+00	2003	2003 -> Dane są dwa wektory \\(\\vec{a}=	3		12	1
1553	2024-11-25 20:22:08.49519+00	2002	2002 -> Rozwiązać równanie \\(2 \\sin ^{	3		12	1
1554	2024-11-25 20:22:08.495452+00	2001	2001 -> Podstawą graniastosłupa jest r	3		12	1
1555	2024-11-25 20:22:08.495726+00	2000	2000 -> Dane są dwa okręgi: \\(K_{1}\\) 	3		12	1
1556	2024-11-25 20:22:08.495975+00	1999	1999 -> W ostrosłupie prawidłowym trój	3		12	1
1557	2024-11-25 20:22:08.496239+00	1998	1998 -> Rozwiązać układ równań \\[ \\lef	3		12	1
1558	2024-11-25 20:22:08.496508+00	1997	1997 -> Na płaszczyźnie dane są cztery	3		12	1
1559	2024-11-25 20:22:08.496768+00	1996	1996 -> Rozwiązać równanie \\(\\frac{1}{	3		12	1
1560	2024-11-25 20:22:08.49702+00	1995	1995 -> Na boku \\(B C\\) trójkąta równo	3		12	1
1561	2024-11-25 20:22:08.497264+00	1994	1994 -> Czworokąt wypukły \\(A B C D\\),	3		12	1
1562	2024-11-25 20:22:08.497539+00	1993	1993 -> Z wierzchołka \\(A\\) kwadratu \\	3		12	1
1563	2024-11-25 20:22:08.4978+00	1992	1992 -> Narysować staranny wykres funk	3		12	1
1564	2024-11-25 20:22:08.498043+00	1991	1991 -> Wyznaczyć promień okręgu opisa	3		12	1
1565	2024-11-25 20:22:08.498296+00	1990	1990 -> Dany jest wielomian \\(W(x)=x^{	3		12	1
1566	2024-11-25 20:22:08.498546+00	1989	1989 -> W trójkącie \\(A B C\\) dane są 	3		12	1
1567	2024-11-25 20:22:08.498803+00	1988	1988 -> Wykonać działania i zapisać w 	3		12	1
1568	2024-11-25 20:22:08.499066+00	1987	1987 -> Wielomian \\(W(x)=x^{3}-x^{2}+b	3		12	1
1569	2024-11-25 20:22:08.499318+00	1986	1986 -> Na kole o promieniu \\(r\\) opis	3		12	1
1570	2024-11-25 20:22:08.499565+00	1985	1985 -> Harcerze rozbili 2 namioty, je	3		12	1
1571	2024-11-25 20:22:08.499806+00	1984	1984 -> W trójkącie prostokątnym o kąc	3		12	1
1572	2024-11-25 20:22:08.500083+00	1983	1983 -> Niech \\[ f(x)=\\left\\{\\begin{ar	3		12	1
1573	2024-11-25 20:22:08.500389+00	1982	1982 -> Narysować staranny wykres funk	3		12	1
1574	2024-11-25 20:22:08.500661+00	1981	1981 -> Znaleźć wszystkie wartości par	3		12	1
1575	2024-11-25 23:03:11.323719+00	2294	2294 -> Stosunek pola powierzchni bocz	2	[{"changed": {"fields": ["Tresc", "Tags"]}}]	12	1
1576	2024-11-25 23:28:17.156857+00	1	1 -> Wykaż, że różnica kwadratów dw	3		12	1
1577	2024-11-25 23:28:17.158989+00	2	2 -> Właściciel hurtowni sprzedał \\	3		12	1
1578	2024-11-25 23:28:17.159477+00	3	3 -> Narysuj wykres funkcji \\[ f(x)	3		12	1
1579	2024-11-25 23:28:17.159858+00	4	4 -> Wykresem funkcji \\(f(x)=x^{2}+	3		12	1
1580	2024-11-25 23:28:17.160288+00	5	5 -> Oblicz \\[ \\frac{\\sqrt{2 \\sin ^	3		12	1
1581	2024-11-25 23:28:17.160683+00	6	6 -> Z miejscowości \\(A\\) i \\(B\\) o	3		12	1
1582	2024-11-25 23:28:17.161058+00	7	7 -> Wykaż, że różnica czwartych po	3		12	1
1583	2024-11-25 23:28:17.161394+00	8	8 -> 31 grudnia Kowalski zaciągnął 	3		12	1
1584	2024-11-25 23:28:17.161732+00	9	9 -> Narysuj wykres funkcji \\[ f(x)	3		12	1
1585	2024-11-25 23:28:17.162118+00	10	10 -> Dla jakich wartości parametru 	3		12	1
1586	2024-11-25 23:28:17.162467+00	11	11 -> Odcinek o końcach \\(A\\left(\\fr	3		12	1
1587	2024-11-25 23:28:17.162885+00	12	12 -> Z wierzchołków podstawy \\(A B\\	3		12	1
1588	2024-11-25 23:28:17.163293+00	13	13 -> Przedmowa ..... 5 	3		12	1
1589	2024-11-25 23:28:17.163577+00	14	14 -> Zadania ..... 7 	3		12	1
1590	2024-11-25 23:28:17.163854+00	15	15 -> Indeks tematyczny ..... 57 	3		12	1
1591	2024-11-25 23:28:17.164117+00	16	16 -> Odpowiedzi do zadań ..... 65 	3		12	1
1592	2024-11-25 23:28:17.164431+00	17	17 -> Wskazówki do zadań ..... 97 	3		12	1
1593	2024-11-25 23:28:17.164714+00	18	18 -> 12 przykładowych rozwiązań ...	3		12	1
1594	2024-11-25 23:28:17.165004+00	19	19 -> Stop składa się z \\(40 \\%\\) sr	3		12	1
1595	2024-11-25 23:28:17.165285+00	20	20 -> Rozwiązać równanie \\[ 3^{x}+1+	3		12	1
1596	2024-11-25 23:28:17.165784+00	21	21 -> W trójkącie \\(A B C\\) znane są	3		12	1
1597	2024-11-25 23:28:17.166085+00	22	22 -> Rozwiązać równanie \\[ \\cos 4 x	3		12	1
1598	2024-11-25 23:28:17.166352+00	23	23 -> Narysować staranny wykres funk	3		12	1
1599	2024-11-25 23:28:17.166621+00	24	24 -> Rozwiązać nierówność \\[ \\frac{	3		12	1
1600	2024-11-25 23:28:17.166899+00	25	25 -> W ostrostupie prawidłowym sześ	3		12	1
1601	2024-11-25 23:28:17.167167+00	26	26 -> Wyznaczyć równania wszystkich 	3		12	1
1602	2024-11-25 23:28:17.167417+00	27	27 -> Udowodnić, że dla każdego \\(n\\	3		12	1
1603	2024-11-25 23:28:17.16767+00	28	28 -> W równoramienny trójkąt prosto	3		12	1
1604	2024-11-25 23:28:17.167937+00	29	29 -> Rozwiązać nierówność \\[ \\log _	3		12	1
1605	2024-11-25 23:28:17.168217+00	30	30 -> Znaleźć wszystkie wartości par	3		12	1
1606	2024-11-25 23:28:17.168486+00	31	31 -> Zbadać liczbę rozwiązań równan	3		12	1
1607	2024-11-25 23:28:17.168748+00	32	32 -> Rozwiązać układ równań \\[ \\lef	3		12	1
1608	2024-11-25 23:28:17.169002+00	33	33 -> Wyznaczyć na osi odciętych pun	3		12	1
1609	2024-11-25 23:28:17.169444+00	34	34 -> W przedziale \\([0,2 \\pi]\\) roz	3		12	1
1610	2024-11-25 23:28:17.169702+00	35	35 -> Bez stosowania metod rachunku 	3		12	1
1611	2024-11-25 23:28:17.16995+00	36	36 -> Jednym z wierzchołków rombu o 	3		12	1
1612	2024-11-25 23:28:17.170202+00	37	37 -> Stosując zasadę indukcji matem	3		12	1
1613	2024-11-25 23:28:17.170468+00	38	38 -> Ostrosłup prawidłowy trójkątny	3		12	1
1614	2024-11-25 23:28:17.170751+00	39	39 -> Wśród trójkatón równoramiennyc	3		12	1
1615	2024-11-25 23:28:17.171035+00	40	40 -> Zbadać przebieg zmienności i n	3		12	1
1616	2024-11-25 23:28:17.171344+00	41	41 -> W trapezie równoramiennym dane	3		12	1
1617	2024-11-25 23:28:17.171605+00	42	42 -> Rozwiązać nierówność \\[ |\\cos 	3		12	1
1618	2024-11-25 23:28:17.171886+00	43	43 -> Rozwiązać równanie \\(16+19+22+	3		12	1
1619	2024-11-25 23:28:17.172143+00	44	44 -> Ze zbioru \\(\\{0,1, \\ldots, 9\\}	3		12	1
1620	2024-11-25 23:28:17.172411+00	45	45 -> Zbadać, czy istnieje pochodna 	3		12	1
1621	2024-11-25 23:28:17.172677+00	46	46 -> Udowodnić, że dwusieczne kątów	3		12	1
1622	2024-11-25 23:28:17.172937+00	47	47 -> Rozwiązać układ nierówności \\[	3		12	1
1623	2024-11-25 23:28:17.173201+00	48	48 -> Znaleźć równanie zbioru wszyst	3		12	1
1624	2024-11-25 23:28:17.173458+00	49	49 -> Zbadać iloczyn pierwiastków rz	3		12	1
1625	2024-11-25 23:28:17.173717+00	50	50 -> Podstawa czworościanu \\(A B C 	3		12	1
1626	2024-11-25 23:28:17.174002+00	51	51 -> Narysować na płaszczyźnie zbió	3		12	1
1627	2024-11-25 23:28:17.174256+00	52	52 -> Obliczyć \\(\\sin ^{3} \\alpha+\\c	3		12	1
1628	2024-11-25 23:28:17.174509+00	53	53 -> Rozważmy rodzinę prostych prze	3		12	1
1629	2024-11-25 23:28:17.174754+00	54	54 -> Rozwiązać równanie \\[ \\sqrt{x+	3		12	1
1630	2024-11-25 23:28:17.175008+00	55	55 -> Dwaj strzelcy strzelaja do tar	3		12	1
1631	2024-11-25 23:28:17.175258+00	56	56 -> Do naczynia w kształcie walca 	3		12	1
1632	2024-11-25 23:28:17.17552+00	57	57 -> Dla jakich wartości parametru 	3		12	1
1633	2024-11-25 23:28:17.175773+00	58	58 -> Dany jest trójkąt o wierzchołk	3		12	1
1634	2024-11-25 23:28:17.176035+00	59	59 -> Rozwiązać równanie \\[ x^{\\log 	3		12	1
1635	2024-11-25 23:28:17.176283+00	60	60 -> Styczna do okregu \\(x^{2}+y^{2	3		12	1
1636	2024-11-25 23:28:17.176539+00	61	61 -> Udowodnić prawdziwość tożsamoś	3		12	1
1637	2024-11-25 23:28:17.176815+00	62	62 -> Długości krawędzi prostopadłoś	3		12	1
1638	2024-11-25 23:28:17.177084+00	63	63 -> Z urny zawierajacej siedem kul	3		12	1
1639	2024-11-25 23:28:17.177383+00	64	64 -> Prostokąt obraca się wokół swo	3		12	1
1640	2024-11-25 23:28:17.177649+00	65	65 -> Wyznaczyć największą i najmnie	3		12	1
1641	2024-11-25 23:28:17.177907+00	66	66 -> Stosunek promienia okręgu wpis	3		12	1
1642	2024-11-25 23:28:17.178159+00	67	67 -> Rozwiązać nierówność \\[ \\left|	3		12	1
1643	2024-11-25 23:28:17.1786+00	68	68 -> Wyznaczyć równanie krzywej będ	3		12	1
1644	2024-11-25 23:28:17.178866+00	69	69 -> Pewien zbiór zawiera dokładnie	3		12	1
1645	2024-11-25 23:28:17.17912+00	70	70 -> Trapez o kątach przy podstawie	3		12	1
1646	2024-11-25 23:28:17.179372+00	71	71 -> Rozwiązać układ równań \\[ \\lef	3		12	1
1647	2024-11-25 23:28:17.179628+00	72	72 -> Rozwiązać nierówność \\(\\sin 2 	3		12	1
1648	2024-11-25 23:28:17.179893+00	73	73 -> Ostrosłup podzielono na trzy c	3		12	1
1649	2024-11-25 23:28:17.180175+00	74	74 -> Trylogię składajaca się z dwóc	3		12	1
1650	2024-11-25 23:28:17.180432+00	75	75 -> Suma wszystkich wyrazów niesko	3		12	1
1651	2024-11-25 23:28:17.180701+00	76	76 -> Obliczyć wszystkie te składnik	3		12	1
1652	2024-11-25 23:28:17.180966+00	77	77 -> Narysować staranny wykres funk	3		12	1
1653	2024-11-25 23:28:17.181221+00	78	78 -> Rozwiązać nierówność \\[ x+1 \\g	3		12	1
1654	2024-11-25 23:28:17.181484+00	79	79 -> W ostrosłupie prawidłowym trój	3		12	1
1655	2024-11-25 23:28:17.181738+00	80	80 -> Znaleźć wszystkie wartości par	3		12	1
1656	2024-11-25 23:28:17.181991+00	81	81 -> Rozwiązać równanie \\[ \\frac{\\s	3		12	1
1657	2024-11-25 23:28:17.182249+00	82	82 -> Przez punkt \\(P\\) leżacy wewną	3		12	1
1658	2024-11-25 23:28:17.182508+00	83	83 -> Promień kuli powiększono tak, 	3		12	1
1659	2024-11-25 23:28:17.182778+00	84	84 -> Wyznaczyć równanie krzywej utw	3		12	1
1660	2024-11-25 23:28:17.183062+00	85	85 -> Znaleźć wszystkie wartości par	3		12	1
1661	2024-11-25 23:28:17.183319+00	86	86 -> Różnica promienia kuli opisane	3		12	1
1662	2024-11-25 23:28:17.183577+00	87	87 -> Rozwiązać nierówność \\[ \\frac{	3		12	1
1663	2024-11-25 23:28:17.183833+00	88	88 -> Stosunek długości przyprostoką	3		12	1
1664	2024-11-25 23:28:17.184089+00	89	89 -> Zbadać przebieg zmienności i n	3		12	1
1665	2024-11-25 23:28:17.184357+00	90	90 -> Znaleźć równania wszystkich pr	3		12	1
1666	2024-11-25 23:28:17.184613+00	91	91 -> Stosując zasadę indukcji matem	3		12	1
1667	2024-11-25 23:28:17.184897+00	92	92 -> Tworząca stożka ma długość l i	3		12	1
1668	2024-11-25 23:28:17.185169+00	93	93 -> Bez stosowania metod rachunku 	3		12	1
1669	2024-11-25 23:28:17.185428+00	94	94 -> Z talii 24 kart wylosowano (be	3		12	1
1670	2024-11-25 23:28:17.185695+00	95	95 -> Rozwiązać nierówność \\[ \\log _	3		12	1
1671	2024-11-25 23:28:17.18594+00	96	96 -> Z punktu \\(C(1,0)\\) poprowadzo	3		12	1
1672	2024-11-25 23:28:17.186199+00	97	97 -> Rozwiązać układ równań \\[ \\lef	3		12	1
1673	2024-11-25 23:28:17.186446+00	98	98 -> Rozwiązać w przedziale \\([0, \\	3		12	1
1674	2024-11-25 23:28:17.186697+00	99	99 -> Przez środek boku trójkąta rów	3		12	1
1675	2024-11-25 23:28:17.18695+00	100	100 -> W kulę o promieniu \\(R\\) wpisa	3		12	1
1676	2024-11-26 15:50:02.998837+00	1	Rozwiazanie object (1)	1	[{"added": {}}]	14	1
1677	2024-11-26 15:50:21.621308+00	2	Rozwiazanie object (2)	1	[{"added": {}}]	14	1
1678	2024-11-26 21:10:07.176174+00	2	Rozwiazanie object (2)	2	[{"changed": {"fields": ["Tresc"]}}]	14	1
1679	2024-12-11 11:05:04.888385+00	3	3 -> Narysuj wykres funkcji \\[ f(x)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1680	2024-12-11 11:05:44.508696+00	3	3 -> Narysuj wykres funkcji \\[ f(x)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1681	2024-12-11 11:06:13.581615+00	1	1 -> Wykaż, że różnica kwadratów dw	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1682	2025-01-06 12:58:29.112809+00	3	3 -> Narysuj wykres funkcji \\[ f(x)	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1683	2025-01-06 16:56:52.904542+00	2385	2385 -> Zadanie 13.2. (0-4)\r\nPole \\(P\\	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1684	2025-01-06 16:59:25.673792+00	2386	2386 -> Zadanie 12. (0-6)\r\nWyznacz wsz	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1685	2025-01-06 19:16:56.731424+00	2387	2387 -> Ala ma kota. Oblicz wartość wy	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1686	2025-01-09 22:08:09.601118+00	9	,	3		31	1
1687	2025-01-09 22:08:09.606864+00	33	1	3		31	1
1688	2025-01-09 22:08:09.607305+00	39	10	3		31	1
1689	2025-01-09 22:08:09.607753+00	40	11	3		31	1
1690	2025-01-09 22:08:09.608107+00	41	12	3		31	1
1691	2025-01-09 22:08:09.608403+00	42	13	3		31	1
1692	2025-01-09 22:08:09.608683+00	43	14	3		31	1
1693	2025-01-09 22:08:09.608958+00	44	15	3		31	1
1694	2025-01-09 22:08:09.609251+00	45	16	3		31	1
1695	2025-01-09 22:08:09.609614+00	32	17	3		31	1
1696	2025-01-09 22:08:09.609893+00	34	2	3		31	1
1697	2025-01-09 22:08:09.610158+00	23	3	3		31	1
1698	2025-01-09 22:08:09.610393+00	46	4	3		31	1
1699	2025-01-09 22:08:09.610684+00	37	6	3		31	1
1700	2025-01-09 22:08:09.610973+00	38	7	3		31	1
1701	2025-01-09 22:08:09.611206+00	35	8	3		31	1
1702	2025-01-09 22:08:09.611449+00	36	9	3		31	1
1703	2025-01-09 22:08:09.611686+00	7	a	3		31	1
1704	2025-01-09 22:08:09.61198+00	19	aaa	3		31	1
1705	2025-01-09 22:08:09.612308+00	10	d	3		31	1
1706	2025-01-09 22:08:09.612613+00	31	DAMAT	3		31	1
1707	2025-01-09 22:08:09.612899+00	27	DFK	3		31	1
1708	2025-01-09 22:08:09.613145+00	26	DFL	3		31	1
1709	2025-01-09 22:08:09.613382+00	25	DFWL	3		31	1
1710	2025-01-09 22:08:09.613626+00	28	DGA	3		31	1
1711	2025-01-09 22:08:09.613907+00	29	DKOM	3		31	1
1712	2025-01-09 22:08:09.614159+00	24	DME	3		31	1
1713	2025-01-09 22:08:09.614418+00	30	DRPR	3		31	1
1714	2025-01-09 22:08:09.614727+00	12	f	3		31	1
1715	2025-01-09 22:08:09.614992+00	21	fff	3		31	1
1716	2025-01-09 22:08:09.615431+00	22	fsafas	3		31	1
1717	2025-01-09 22:08:09.615668+00	6	h	3		31	1
1718	2025-01-09 22:08:09.61593+00	4	j	3		31	1
1719	2025-01-09 22:08:09.616179+00	1	jhjk	3		31	1
1720	2025-01-09 22:08:09.616419+00	2	jhjk.fgdgdf	3		31	1
1721	2025-01-09 22:08:09.61667+00	5	k	3		31	1
1722	2025-01-09 22:08:09.61691+00	18	K	3		31	1
1723	2025-01-09 22:08:09.617135+00	3	Kwadratowa	3		31	1
1724	2025-01-09 22:08:09.617359+00	13	o	3		31	1
1725	2025-01-09 22:08:09.617588+00	16	r	3		31	1
1726	2025-01-09 22:08:09.617837+00	11	s	3		31	1
1727	2025-01-09 22:08:09.618079+00	20	sss	3		31	1
1728	2025-01-09 22:08:09.618346+00	14	t	3		31	1
1729	2025-01-09 22:08:09.618572+00	8	v	3		31	1
1730	2025-01-09 22:08:09.618809+00	15	w	3		31	1
1731	2025-01-09 22:59:14.451447+00	48	dfdd	2	[{"changed": {"fields": ["Name"]}}, {"changed": {"name": "tagged item", "object": "3 -> Narysuj wykres funkcji \\\\(f(x)= tagged with dfdd", "fields": ["Object ID"]}}]	31	1
1732	2025-01-09 23:07:56.008263+00	1	tag1	3		31	1
1733	2025-01-09 23:07:56.011765+00	2	tag2	3		31	1
1734	2025-01-09 23:07:56.012675+00	3	tag3	3		31	1
1735	2025-01-12 05:32:17.601547+00	673	673 -> Dana jest funkcja \\(f(x)=x^2-9	2	[{"changed": {"fields": ["Tresc", "Tags"]}}]	12	1
1736	2025-01-12 05:32:33.627979+00	673	673 -> Dana jest funkcja $f(x)=x^2-9x	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1737	2025-01-12 05:34:06.15783+00	673	673 -> Dana jest funkcja \\[f(x)=x^2-9	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1738	2025-01-12 05:37:12.389147+00	673	673 -> Dana jest funkcja \\[f(x)=x^2-9	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1739	2025-01-12 05:37:38.017974+00	673	673 -> Dana jest funkcja \\[f(x)=x^2-5	2	[{"changed": {"fields": ["Tresc"]}}]	12	1
1740	2025-01-12 09:35:40.454624+00	674	674 -> Zadanie 13.2. (0-4)\r\nPole $P$ 	2	[{"changed": {"fields": ["Tresc", "Tags"]}}]	12	1
1741	2025-01-13 19:11:18.370973+00	56	Ciągi	1	[{"added": {}}]	29	1
1742	2025-01-13 21:24:25.200053+00	14	14 -> Jaki zbiór tworzą środki wszys	2	[{"changed": {"fields": ["Tresc", "Tags", "Dzial"]}}]	12	1
1743	2025-01-13 21:26:07.749917+00	15	15 -> Narysować wykres funkcji \\(f(x	2	[{"changed": {"fields": ["Tresc", "Tags"]}}]	12	1
1744	2025-01-13 23:49:52.939408+00	57	Liczby i działania	1	[{"added": {}}]	29	1
1745	2025-01-13 23:50:34.695253+00	58	Wyrażenia algebraiczne	1	[{"added": {}}]	29	1
1746	2025-01-13 23:52:46.726065+00	59	Zbiory	1	[{"added": {}}]	29	1
1747	2025-01-13 23:53:37.585229+00	60	Równania, nierówności i układy	1	[{"added": {}}]	29	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	glowna	post
2	zasoby	autor
3	zasoby	lokalizacjazasobu
4	zasoby	wydawca
5	zasoby	zasob
6	model	elementtablic
7	model	zagadnienie
8	model	przedmiot
9	zbior	odpowiedz
10	zbior	rownanie
11	zbior	rysunek
12	zbior	zadanie
13	zbior	wymaganawiedza
14	zbior	rozwiazanie
15	zbior	poprawkizadanie
16	zbior	zasobzewnetrzny
17	arkusze	edycjaegzaminu
18	arkusze	plik
19	arkusze	organizacja
20	arkusze	egzamin
21	webscraping	odwiedzonewitryny
22	webscraping	zebranezasoby
23	admin	logentry
24	auth	permission
25	auth	group
26	auth	user
27	contenttypes	contenttype
28	sessions	session
29	zbior	mathtag
30	zasoby	zrodlozadan
31	taggit	tag
32	taggit	taggeditem
33	zasoby	organizacja
34	zbior	temat
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-10-20 09:54:00.519415+00
2	auth	0001_initial	2024-10-20 09:54:00.533005+00
3	admin	0001_initial	2024-10-20 09:54:00.549825+00
4	admin	0002_logentry_remove_auto_add	2024-10-20 09:54:00.554923+00
5	admin	0003_logentry_add_action_flag_choices	2024-10-20 09:54:00.558175+00
6	arkusze	0001_initial	2024-10-20 09:54:00.566826+00
7	arkusze	0002_auto_20230311_1928	2024-10-20 09:54:00.574446+00
8	arkusze	0003_auto_20230321_1313	2024-10-20 09:54:00.577863+00
9	arkusze	0004_edycjaegzaminu_poziom	2024-10-20 09:54:00.579453+00
10	arkusze	0005_edycjaegzaminu_etap	2024-10-20 09:54:00.58121+00
11	arkusze	0006_auto_20230323_1418	2024-10-20 09:54:00.588453+00
12	arkusze	0007_auto_20230325_1318	2024-10-20 09:54:00.591553+00
13	arkusze	0008_auto_20230325_1429	2024-10-20 09:54:00.594349+00
14	arkusze	0009_auto_20230325_1430	2024-10-20 09:54:00.59718+00
15	arkusze	0010_edycjaegzaminu_wyswietlananazwa	2024-10-20 09:54:00.599729+00
16	arkusze	0011_auto_20230326_0044	2024-10-20 09:54:00.601658+00
17	arkusze	0012_auto_20230326_0046	2024-10-20 09:54:00.603563+00
18	arkusze	0013_auto_20230326_0047	2024-10-20 09:54:00.607544+00
19	contenttypes	0002_remove_content_type_name	2024-10-20 09:54:00.61356+00
20	auth	0002_alter_permission_name_max_length	2024-10-20 09:54:00.615119+00
21	auth	0003_alter_user_email_max_length	2024-10-20 09:54:00.617771+00
22	auth	0004_alter_user_username_opts	2024-10-20 09:54:00.620321+00
23	auth	0005_alter_user_last_login_null	2024-10-20 09:54:00.623478+00
24	auth	0006_require_contenttypes_0002	2024-10-20 09:54:00.624059+00
25	auth	0007_alter_validators_add_error_messages	2024-10-20 09:54:00.62647+00
26	auth	0008_alter_user_username_max_length	2024-10-20 09:54:00.630047+00
27	auth	0009_alter_user_last_name_max_length	2024-10-20 09:54:00.632689+00
28	auth	0010_alter_group_name_max_length	2024-10-20 09:54:00.635624+00
29	auth	0011_update_proxy_permissions	2024-10-20 09:54:00.639063+00
30	glowna	0001_initial	2024-10-20 09:54:00.641804+00
31	glowna	0002_auto_20240824_1228	2024-10-20 09:54:00.644246+00
32	model	0001_initial	2024-10-20 09:54:00.651178+00
33	model	0002_zagadnienie_rodzic	2024-10-20 09:54:00.657673+00
34	model	0003_auto_20230322_0142	2024-10-20 09:54:00.66054+00
35	sessions	0001_initial	2024-10-20 09:54:00.663306+00
36	webscraping	0001_initial	2024-10-20 09:54:00.669353+00
37	webscraping	0002_auto_20230311_1937	2024-10-20 09:54:00.672797+00
38	webscraping	0003_auto_20230312_1911	2024-10-20 09:54:00.676113+00
39	webscraping	0004_auto_20230313_0242	2024-10-20 09:54:00.680416+00
40	webscraping	0005_auto_20230315_0124	2024-10-20 09:54:00.684389+00
41	webscraping	0006_auto_20230315_0149	2024-10-20 09:54:00.685832+00
42	webscraping	0007_auto_20230316_1419	2024-10-20 09:54:00.687292+00
43	zasoby	0001_initial	2024-10-20 09:54:00.696429+00
44	zasoby	0002_auto_20230325_1514	2024-10-20 09:54:00.701562+00
45	zasoby	0003_auto_20230325_1552	2024-10-20 09:54:00.704448+00
46	zbior	0001_initial	2024-10-20 09:54:00.729022+00
47	zbior	0002_auto_20230309_1200	2024-10-20 09:54:00.769553+00
48	zbior	0003_auto_20230318_1224	2024-10-20 09:54:00.773018+00
49	zbior	0004_auto_20230318_1734	2024-10-20 09:54:00.775637+00
50	zbior	0005_auto_20230319_1333	2024-10-20 09:54:00.777384+00
51	zbior	0006_auto_20230320_1359	2024-10-20 09:54:00.779896+00
52	zbior	0007_zadanie_odpowiedz	2024-10-20 09:54:00.782349+00
53	zbior	0008_auto_20230320_1406	2024-10-20 09:54:00.785535+00
54	zbior	0009_auto_20230320_1406	2024-10-20 09:54:00.787953+00
55	zbior	0010_poprawkizadanie	2024-10-20 09:54:00.792542+00
56	zbior	0011_zadanie_pochodzenie	2024-10-20 09:54:00.795795+00
57	zbior	0012_auto_20230322_0142	2024-10-20 09:54:00.800195+00
58	zbior	0013_zadanie_typ_zadania	2024-10-20 09:54:00.803078+00
59	zbior	0014_zasobzewnetrzny	2024-10-20 09:54:00.80835+00
60	zbior	0015_auto_20230322_1937	2024-10-20 09:54:00.813844+00
61	zbior	0016_zadanie_poziom_trudnosci	2024-10-25 11:36:46.514233+00
62	zbior	0017_auto_20241025_1150	2024-10-25 11:50:06.980071+00
63	zbior	0018_mathtag	2024-11-24 14:04:58.663579+00
64	zbior	0019_mathtag_symbol	2024-11-24 14:14:06.637673+00
65	zbior	0020_auto_20241124_1424	2024-11-24 14:24:08.45281+00
66	zbior	0021_auto_20241124_1428	2024-11-24 14:28:34.227758+00
67	zbior	0022_auto_20241124_1609	2024-11-24 16:09:28.243735+00
68	zasoby	0004_zrodlozadan	2024-11-24 19:05:40.621973+00
69	zbior	0023_auto_20241124_1905	2024-11-24 19:05:40.624052+00
70	arkusze	0014_auto_20241124_2129	2024-11-24 21:29:08.657267+00
71	arkusze	0015_auto_20241124_2130	2024-11-24 21:30:11.962884+00
72	zasoby	0005_zrodlozadan_poziom	2024-11-25 01:37:37.579793+00
73	zasoby	0006_auto_20241125_0138	2024-11-25 01:38:48.898043+00
74	zasoby	0007_auto_20241125_0144	2024-11-25 01:44:14.312011+00
75	zasoby	0008_zrodlozadan_link	2024-11-25 02:14:50.088023+00
76	zasoby	0009_auto_20241125_1125	2024-11-25 11:25:39.595698+00
77	zasoby	0010_auto_20241125_1144	2024-11-25 11:44:13.882008+00
78	zasoby	0011_zrodlozadan_organizator	2024-11-25 19:08:21.953805+00
79	arkusze	0016_organizacja_symbol	2024-11-25 19:45:22.08745+00
80	arkusze	0017_auto_20241125_1951	2024-11-25 19:52:01.05336+00
81	taggit	0001_initial	2024-11-25 22:40:38.776034+00
82	taggit	0002_auto_20150616_2121	2024-11-25 22:40:38.784322+00
83	taggit	0003_taggeditem_add_unique_index	2024-11-25 22:40:38.787305+00
84	taggit	0004_alter_taggeditem_content_type_alter_taggeditem_tag	2024-11-25 22:40:38.799961+00
85	zbior	0024_zadanie_tags	2024-11-25 22:40:38.805633+00
86	zbior	0025_auto_20241126_1002	2024-11-26 10:02:15.405433+00
87	zasoby	0012_auto_20241126_1005	2024-11-26 10:05:21.729279+00
88	zasoby	0013_organizacja	2024-11-26 10:08:41.800947+00
89	zbior	0002_rozwiazanie	2024-11-26 15:45:34.168978+00
90	zbior	0003_zadanie_dzial	2025-01-09 23:27:27.363153+00
91	zbior	0004_auto_20250111_1330	2025-01-11 13:30:41.83459+00
92	zbior	0005_temat	2025-01-14 00:40:09.90207+00
93	zasoby	0005_zasob_plik	2025-02-05 12:06:22.687258+00
94	zasoby	0002_zasob_filename	2025-02-05 12:17:31.079537+00
95	zasoby	0003_zasob_zrodlo	2025-02-05 12:17:54.693216+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ejgkphee7548nh6acuxmf3mcwt2ehi4t	NzM3YjgzMzE1OWUwN2UwMmFhNWU3NTdmZmJhMTQyZDAzN2IwYjg0Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MmIxM2UzOTAzMGFkYzA1NTMxOTk0NDY1MzZjNDdjYjk3MDEwNmJmIn0=	2024-11-03 09:55:08.901469+00
c4e1zye37juq9on0ie5sszljkfk9ugu4	NzM3YjgzMzE1OWUwN2UwMmFhNWU3NTdmZmJhMTQyZDAzN2IwYjg0Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MmIxM2UzOTAzMGFkYzA1NTMxOTk0NDY1MzZjNDdjYjk3MDEwNmJmIn0=	2024-11-17 19:18:59.352988+00
suzon4g834ri2c69kcds50ww5kwjm4ky	NzM3YjgzMzE1OWUwN2UwMmFhNWU3NTdmZmJhMTQyZDAzN2IwYjg0Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MmIxM2UzOTAzMGFkYzA1NTMxOTk0NDY1MzZjNDdjYjk3MDEwNmJmIn0=	2024-12-07 11:56:03.99896+00
2m90qjn9iih3bpv25zdfo2erdqqsxjin	NzM3YjgzMzE1OWUwN2UwMmFhNWU3NTdmZmJhMTQyZDAzN2IwYjg0Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MmIxM2UzOTAzMGFkYzA1NTMxOTk0NDY1MzZjNDdjYjk3MDEwNmJmIn0=	2024-12-25 11:04:02.581095+00
v1to247ryb38uk2b4kk928vqudvkozrp	NzM3YjgzMzE1OWUwN2UwMmFhNWU3NTdmZmJhMTQyZDAzN2IwYjg0Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MmIxM2UzOTAzMGFkYzA1NTMxOTk0NDY1MzZjNDdjYjk3MDEwNmJmIn0=	2025-01-20 12:50:25.012981+00
zr8ejgthcpgjsmjpe2k4qoukrif89erk	NzM3YjgzMzE1OWUwN2UwMmFhNWU3NTdmZmJhMTQyZDAzN2IwYjg0Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MmIxM2UzOTAzMGFkYzA1NTMxOTk0NDY1MzZjNDdjYjk3MDEwNmJmIn0=	2025-02-18 18:58:41.903378+00
\.


--
-- Data for Name: glowna_post; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.glowna_post (id, tytul, tresc, skrot, "dataPublikacji", miniatura) FROM stdin;
\.


--
-- Data for Name: model_elementtablic; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.model_elementtablic (id, tresc) FROM stdin;
\.


--
-- Data for Name: model_przedmiot; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.model_przedmiot (id, nazwa) FROM stdin;
\.


--
-- Data for Name: model_przedmiot_podstawa_programowa; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.model_przedmiot_podstawa_programowa (id, przedmiot_id, zagadnienie_id) FROM stdin;
\.


--
-- Data for Name: model_zagadnienie; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.model_zagadnienie (id, nazwa, opis, wiedza_id, rodzic_id) FROM stdin;
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	Dowód	dowód
2	Procenty	procenty
3	Zadanie z treścią	zadanie-z-treścią
4	Rysowanie wykresu	rysowanie-wykresu
5	Wartość bezwględna	wartość-bezwględna
6	Nierówność	nierówność
7	Przekształcenia wykresów	przekształcenia-wykresów
8	Prędkość	prędkość
9	Zbiory	zbiory
10	Przekształcenia wykresu	przekształcenia-wykresu
11	Wektory	wektory
12	Środek cieżkości	srodek-ciezkosci
13	Trójkąt	trojkat
14	Parametr	parametr
15	Ciąg arytmetyczny	ciag-arytmetyczny
16	Pole	pole
17	Trapez	trapez
18	Okrąg wpisany w czworokąt	okrag-wpisany-w-czworokat
19	Równanie	rownanie
20	Czworościan	czworoscian
21	Odcinanie brył	odcinanie-bry
22	Trójkąt równoboczny	trojkat-rownoboczny
23	Prowadzenie prostych	prowadzenie-prostych
24	Stosunek pól	stosunek-pol
25	Zadanie optymalizacyjne	zadanie-optymalizacyjne
26	Funkcja kwadratowa	funkcja-kwadratowa
27	Równanie wykładnicze	rownanie-wykadnicze
28	Wykres	wykres
29	Funkcja	funkcja
30	Szereg geometryczny	szereg-geometryczny
31	Równoległobok	rownolegobok
32	Sześciokąt foremny	szesciokat-foremny
33	Pierwiastek	pierwiastek
34	Logarytm	logarytm
35	Wielomian	wielomian
36	Wykładnicza	wykadnicza
37	Różne podstawy	rozne-podstawy
38	Równanie kwadratowe	rownanie-kwadratowe
39	Sześcian	szescian
40	Potęga	potega
41	Cięciwa	cieciwa
42	Min/Max	minmax
43	Zbiór wartości	zbior-wartosci
44	Min-Max	min-max
45	Przekształcenia geometryczne	przeksztacenia-geometryczne
46	niekompletne	niekompletne
47	Kąt dwuścienny	kat-dwuscienny
48	Ostrosłupy	ostrosupy
49	Ostrosłup prawidłowy trójkątny	ostrosup-prawidowy-trojkatny
50	Styczna do wykresu funkcji	styczna-do-wykresu-funkcji
51	Okrąg	okrag
52	Okrąg opisany na okręgu	okrag-opisany-na-okregu
53	Kula	kula
54	Bryła wpisana w bryłę	brya-wpisana-w-brye
55	Ilość rówiązań równania w zależności od m	ilosc-rowiazan-rownania-w-zaleznosci-od-m
56	Romb	romb
57	Figura wpisana w figurę	figura-wpisana-w-figure
58	Stożek	stozek
59	Funkcja homograficzna	funkcja-homograficzna
60	Prosta prostopadła	prosta-prostopada
61	Granica ciągu	granica-ciagu
62	Okrąg wpisany w trójkąt	okrag-wpisany-w-trojkat
63	sinx	sinx
64	cosx	cosx
65	Walec	walec
66	Funkcja wykładnicza	funkcja-wykadnicza
67	Trójkąt prostokątny	trojkat-prostokatny
68	Bryły obrotowe	bryy-obrotowe
69	Wielokąt foremny	wielokat-foremny
70	Równanie okręgu	rownanie-okregu
71	Okrąg wpisany w wielokąt	okrag-wpisany-w-wielokat
72	Okrąg opisany na wielokącie	okrag-opisany-na-wielokacie
73	Przekroje brył	przekroje-bry
74	Rysowanie brył	rysowanie-bry
75	Trójkąt równoramienny	trojkat-rownoramienny
76	Okrąg opisany na trójkącie	okrag-opisany-na-trojkacie
77	Ośmiościan foremny	osmioscian-foremny
78	Prostokąt	prostokat
79	Objętość	objetosc
80	Pole powierzchni całkowitej	pole-powierzchni-cakowitej
81	Loteria	loteria
82	Siatka brył	siatka-bry
83	Środkowa	srodkowa
84	Wyznaczanie punktu	wyznaczanie-punktu
85	Prosta	prosta
86	Parabola	parabola
87	Wyznaczanie punktu przecięcia	wyznaczanie-punktu-przeciecia
88	Zdarzenie wieloetapowe	zdarzenie-wieloetapowe
89	Prawdopodobieństwo	prawdopodobienstwo
90	Równanie prostej	rownanie-prostej
91	Symetralna odcinka	symetralna-odcinka
92	Układ równań	ukad-rownan
93	Obliczanie wierzchołków figury	obliczanie-wierzchokow-figury
94	Przekątne	przekatne
95	Wartość wyrażenia	wartosc-wyrazenia
96	Tożsamości trygonometryczne	tozsamosci-trygonometryczne
97	Kąt między prostą a płaszczyzną	kat-miedzy-prosta-a-paszczyzna
98	Trapez prostokątny	trapez-prostokatny
99	Kula opisana na ostrosłupie	kula-opisana-na-ostrosupie
100	Kula wpisana w ostrosłup	kula-wpisana-w-ostrosup
101	Dziedziana	dziedziana
102	Ułamek	uamek
103	Upraszczanie wyrażenia	upraszczanie-wyrazenia
104	Obliczanie wartości wyrażenia	obliczanie-wartosci-wyrazenia
105	wzory vieta	wzory-vieta
106	Ciąg geometryczny	ciag-geometryczny
107	tgx	tgx
108	Ośmiokąt foremny	osmiokat-foremny
109	Stosunek objętości	stosunek-objetosci
110	Sprawdzanie ciągłości funkcji	sprawdzanie-ciagosci-funkcji
111	Trygonometria	trygonometria
112	Ostrosłup prawidłowy czworokątny	ostrosup-prawidowy-czworokatny
113	Ostrosłup prawidłowy sześciokątny	ostrosup-prawidowy-szesciokatny
114	Asymptoty	asymptoty
115	Przedziały monotoniczności	przedziay-monotonicznosci
116	Ekstrema lokalne	ekstrema-lokalne
117	Badanie przebiegu zmienności funkcji	badanie-przebiegu-zmiennosci-funkcji
118	Działania na przedziałach	dziaania-na-przedziaach
119	Suma wyrazów ciągu	suma-wyrazow-ciagu
120	Obwód	obwod
121	Czworokąt wypukły	czworokat-wypuky
122	Okrąg opisany ma czworokącie	okrag-opisany-ma-czworokacie
123	Przekształcenia funkcji	przeksztacenia-funkcji
124	Przesunięcie o wykres	przesuniecie-o-wykres
125	Funkcja liniowa	funkcja-liniowa
126	Rzeka	rzeka
127	Wyznaczanie wzoru funkcji	wyznaczanie-wzoru-funkcji
128	Stosunek odcinków	stosunek-odcinkow
129	Styczne do okręgu	styczne-do-okregu
130	Kostka	kostka
131	Kule	kule
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	73	12	1
2	74	12	2
3	74	12	3
4	75	12	4
5	75	12	5
6	75	12	6
7	76	12	4
8	76	12	7
9	78	12	3
10	78	12	8
11	79	12	1
12	80	12	2
13	80	12	3
14	81	12	4
15	81	12	5
16	81	12	6
17	82	12	4
18	82	12	7
19	88	12	4
20	90	12	9
21	93	12	3
22	93	12	8
23	94	12	10
24	96	12	9
26	2	12	11
27	2	12	12
28	2	12	13
29	2	12	14
30	3	12	3
31	3	12	15
32	4	12	16
33	4	12	17
34	4	12	18
35	5	12	14
36	5	12	19
37	6	12	20
38	6	12	21
39	7	12	3
40	8	12	13
41	8	12	22
42	8	12	23
43	8	12	24
44	9	12	14
45	9	12	16
46	9	12	25
47	10	12	3
48	10	12	8
49	11	12	14
51	11	12	27
52	44	12	28
53	44	12	29
54	44	12	30
60	41	12	31
61	244	12	11
62	244	12	32
63	248	12	4
64	248	12	6
65	248	12	29
66	672	12	6
67	672	12	33
68	672	12	34
69	672	12	35
70	665	12	6
71	665	12	35
72	665	12	36
73	665	12	37
74	1	12	3
75	11	12	38
76	12	12	21
77	12	12	39
78	13	12	19
79	13	12	34
80	13	12	40
81	14	12	41
82	15	12	4
83	15	12	5
84	15	12	29
86	15	12	43
87	15	12	44
88	16	12	11
89	16	12	45
90	17	12	46
91	18	12	47
92	18	12	48
93	18	12	49
94	19	12	15
95	20	12	11
96	20	12	13
97	21	12	4
98	21	12	5
99	21	12	29
100	21	12	50
101	22	12	51
102	23	12	13
103	23	12	16
104	23	12	52
105	24	12	39
106	24	12	53
107	24	12	54
108	25	12	15
109	27	12	4
110	27	12	5
111	27	12	55
112	28	12	16
113	28	12	56
114	28	12	57
115	29	12	50
116	31	12	46
117	30	12	54
118	30	12	58
119	32	12	50
120	32	12	59
121	32	12	60
122	33	12	14
123	33	12	27
124	33	12	34
125	33	12	61
126	34	12	22
127	34	12	62
128	35	12	6
129	35	12	30
130	35	12	63
131	35	12	64
132	36	12	25
133	36	12	39
134	36	12	54
135	36	12	65
136	37	12	6
137	37	12	33
138	37	12	66
139	38	12	67
140	38	12	68
141	39	12	16
142	39	12	69
143	39	12	70
144	39	12	71
145	39	12	72
146	40	12	46
147	41	12	11
148	41	12	45
149	42	12	47
150	42	12	49
151	42	12	73
152	42	12	74
153	43	12	45
154	43	12	31
155	43	12	11
156	45	12	46
157	46	12	16
158	46	12	75
159	46	12	76
160	47	12	39
161	47	12	54
162	47	12	77
163	48	12	68
164	48	12	78
165	48	12	79
166	48	12	80
167	49	12	2
168	49	12	3
169	50	12	81
170	51	12	79
171	51	12	82
172	52	12	18
173	52	12	56
174	53	12	60
175	53	12	75
176	53	12	83
177	53	12	84
178	54	12	16
179	54	12	85
180	54	12	86
181	54	12	87
182	55	12	16
183	55	12	31
184	56	12	3
185	56	12	88
186	56	12	89
187	57	12	20
188	57	12	79
189	57	12	82
190	58	12	90
191	58	12	91
192	59	12	5
193	59	12	92
194	60	12	27
195	60	12	29
196	60	12	30
197	60	12	44
198	60	12	66
199	62	12	16
200	62	12	31
201	62	12	93
202	62	12	94
203	63	12	16
204	63	12	62
205	63	12	67
206	64	12	16
207	64	12	41
208	65	12	13
209	65	12	67
210	65	12	93
211	67	12	95
212	67	12	96
213	66	12	1
214	66	12	47
215	66	12	49
216	66	12	97
217	68	12	11
218	68	12	18
219	68	12	31
220	69	12	13
221	69	12	17
222	69	12	76
223	70	12	16
224	70	12	70
225	70	12	90
226	70	12	93
227	70	12	98
228	71	12	23
229	71	12	75
230	72	12	47
231	72	12	49
232	72	12	99
233	72	12	100
234	83	12	69
235	83	12	70
236	83	12	72
237	83	12	93
238	84	12	8
239	84	12	22
240	86	12	8
241	87	12	33
242	87	12	35
243	87	12	44
244	87	12	101
245	87	12	102
246	89	12	103
247	89	12	104
248	92	12	14
249	92	12	105
250	95	12	103
251	95	12	104
252	97	12	15
253	97	12	106
254	98	12	1
255	99	12	19
256	99	12	63
257	99	12	64
258	99	12	107
259	100	12	46
260	101	12	70
261	101	12	93
262	101	12	108
263	102	12	39
264	102	12	49
265	102	12	54
266	102	12	73
267	102	12	109
268	103	12	1
269	103	12	34
270	104	12	6
271	104	12	35
272	104	12	63
273	104	12	64
274	105	12	30
275	106	12	4
276	106	12	46
277	106	12	110
278	107	12	46
279	108	12	49
280	108	12	97
281	108	12	99
282	108	12	100
283	108	12	109
284	109	12	22
285	109	12	70
286	109	12	76
287	109	12	93
288	110	12	44
289	110	12	64
290	111	12	6
291	112	12	6
292	112	12	35
293	112	12	63
294	113	12	33
295	113	12	34
296	113	12	87
297	114	12	4
298	114	12	5
299	114	12	44
300	115	12	32
301	115	12	70
302	115	12	76
303	115	12	93
304	116	12	6
305	116	12	35
306	116	12	40
307	117	12	6
308	117	12	34
309	117	12	101
310	118	12	6
311	118	12	30
312	118	12	111
313	119	12	24
314	119	12	54
315	119	12	58
316	119	12	112
317	119	12	113
318	120	12	66
319	120	12	101
320	120	12	114
321	120	12	115
322	120	12	116
323	120	12	4
324	120	12	117
325	121	12	103
326	121	12	104
327	122	12	9
328	122	12	33
329	122	12	101
330	122	12	118
331	123	12	4
332	123	12	10
333	124	12	15
334	124	12	119
335	125	12	16
336	125	12	94
337	125	12	98
338	125	12	120
339	126	12	47
340	126	12	73
341	126	12	80
342	126	12	112
343	127	12	103
344	127	12	104
345	128	12	14
346	128	12	19
347	128	12	63
348	128	12	64
349	129	12	30
350	129	12	46
351	129	12	106
352	130	12	10
353	130	12	59
354	131	12	18
355	131	12	121
356	131	12	122
357	132	12	24
358	132	12	73
359	132	12	112
360	133	12	3
361	133	12	8
362	134	12	5
363	134	12	33
364	134	12	102
365	134	12	123
366	135	12	44
367	135	12	46
368	136	12	5
369	136	12	55
370	136	12	123
371	136	12	124
372	137	12	16
373	137	12	60
374	137	12	76
375	137	12	125
376	139	12	3
377	139	12	8
378	139	12	126
379	138	12	46
380	140	12	4
381	140	12	43
382	140	12	101
383	140	12	123
384	141	12	14
385	141	12	105
386	142	12	16
387	142	12	90
388	143	12	34
389	143	12	59
390	143	12	103
391	143	12	127
392	144	12	22
393	144	12	62
394	144	12	76
395	144	12	128
396	150	12	53
397	150	12	54
398	150	12	58
399	150	12	109
400	149	12	70
401	149	12	90
402	149	12	129
403	148	12	6
404	148	12	111
405	147	12	15
406	147	12	106
407	147	12	119
408	146	12	88
409	146	12	130
410	145	12	131
\.


--
-- Data for Name: webscraping_odwiedzonewitryny; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.webscraping_odwiedzonewitryny (id, uwagi, link, zrodlo_id, pochodzenie, fraza) FROM stdin;
\.


--
-- Data for Name: webscraping_zebranezasoby; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.webscraping_zebranezasoby (id, filename, directory, pochodzenie_id) FROM stdin;
\.


--
-- Data for Name: zasoby_autor; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.zasoby_autor (id, imie, nazwisko) FROM stdin;
\.


--
-- Data for Name: zasoby_organizacja; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.zasoby_organizacja (id, symbol, nazwa, strona, typ) FROM stdin;
1	CKE	Centralna komisja egzaminacyjna	https://cke.gov.pl/	PKE
2	AGH	Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie	https://www.diament.agh.edu.pl/	UW
3	PWR	Wydział Matematyki Politechniki Wrocławskiej	https://wmat.pwr.edu.pl/	UW
4	NE	Nowa Era	-	W
5	OPERON	Operon	-	W
6	PG	Politechnika Gdańska	-	UW
7	XIVLO	XIV Liceum Ogólnokształcące im. Stanisława Staszica	https://www.staszic.waw.pl/	S
8	CEN	Kujawsko-Pomorskie Centrum Edukacji Nauczycieli w Bydgoszczy	https://cen.bydgoszcz.pl/	PDN
9	LSCDN	Lubelskie Samorządowe Centrum Doskonalenia Nauczycieli	https://www.lscdn.pl/	PDN
10	PE	Portal edukacyjny w Szczecinie	https://pe.szczecin.pl/	I
11	WSiP	WSiP	https://wsip.pl/	W
12	IMPAN	Instytut Matematyczny Polskiej Akademii Nauk	https://www.impan.pl/	I
13	APS	Akademia Pomorska w Słupsku	-	UW
14	PW	Politechnika Warszawska	-	UW
15	SLOK	Publiczne Salezjańskie Liceum Ogólnokształcące w Krakowie	https://salezjanie.com/	S
16	WAT	Wojskowa Akademia Techniczna im. Jarosława Dąbrowskiego	https://www.wojsko-polskie.pl/wat/	UW
17	PS	Politechnika Śląska	https://www.polsl.pl/	UW
18	PK	Politechnika Krakowska im. Tadeusza Kościuszki	https://www.pk.edu.pl/index.php?lang=pl	UW
19	UJ	Uniwersytet Jagiellońskii	https://www.uj.edu.pl/pl	UW
\.


--
-- Data for Name: zasoby_zasob; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.zasoby_zasob (id, rodzaj, nazwa, opis, pochodzenie_id, autor_id, do_dzien, do_miesiac, do_rok, od_dzien, od_miesiac, od_rok, plik, filename, zrodlo) FROM stdin;
1	\N	KMPW_4_2018.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	\N	KMPW_5_2018.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	\N	KMPW_5_2019.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	\N	KMPW_4_2019.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	\N	KMPW_5_2022.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	\N	KMPW_4_2022.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	\N	KMPW_1_2014.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	\N	KMPW_1_2015.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	\N	KMPW_4_2021.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
10	\N	KMPW_5_2021.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	\N	KMPW_1_2017.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12	\N	KMPW_1_2016.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13	\N	KMPW_5_2020.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14	\N	KMPW_4_2020.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
15	\N	KMPW_2_2022.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16	\N	KMPW_3_2022.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
17	\N	KMPW_7_2015.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18	\N	KMPW_6_2015.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19	\N	KMPW_7_2017.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
20	\N	KMPW_6_2017.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
21	\N	KMPW_3_2021.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
22	\N	KMPW_2_2021.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
23	\N	KMPW_2_2020.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24	\N	KMPW_3_2020.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25	\N	KMPW_6_2016.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26	\N	KMPW_7_2016.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27	\N	KMPW_3_2018.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28	\N	KMPW_2_2018.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29	\N	KMPW_2_2019.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
30	\N	KMPW_3_2019.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
31	\N	KMPW_7_2021.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
32	\N	KMPW_6_2021.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
33	\N	KMPW_3_2017.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
34	\N	KMPW_2_2017.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
35	\N	KMPW_6_2020.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
36	\N	KMPW_7_2020.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
37	\N	KMPW_6_2022.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
38	\N	KMPW_7_2022.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
39	\N	KMPW_2_2014.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40	\N	KMPW_3_2014.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41	\N	KMPW_3_2015.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42	\N	KMPW_6_2018.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43	\N	KMPW_6_2019.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44	\N	KMPW_7_2019.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
45	\N	KMPW_1_2018.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
46	\N	KMPW_1_2019.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
47	\N	KMPW_4_2017.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48	\N	KMPW_5_2017.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
49	\N	KMPW_1_2021.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
50	\N	KMPW_1_2020.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
51	\N	KMPW_5_2016.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
52	\N	KMPW_4_2016.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
53	\N	KMPW_4_2014.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
54	\N	KMPW_1_2022.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
55	\N	KMPW_4_2015.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
56	\N	KMPW_5_2015.xml	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: zasoby_zrodlozadan; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.zasoby_zrodlozadan (id, symbol, rodzic, nazwa, opis, poziom, link, organizator_id) FROM stdin;
1	ZZK		Konkursy		0		\N
2	ZZKIUW	ZZK	Konkursy o indeks uczelni wyższej		0		\N
3	ZZKAGH	ZZK	Konkurs o diamentowy indeks "AGH"		1	https://www.diament.agh.edu.pl/zadania/	2
4	ZZKAGH1	ZZK	O złoty indeks Politechniki Śląskiej		1	https://www.polsl.pl/rd1-cos/zi-archiwum/	17
5	ZZKAGH2	ZZK	Złoty indeks PK		1	https://indeks.pk.edu.pl/?page_id=17	18
6	ZZKAGH3	ZZK	Ogólnopolski Konkurs Matematyczny im. gen. Sylwestra Kaliskiego (WAT)		1	https://www.wojsko-polskie.pl/wat/ogolnopolski-konkurs-matematyczny/	16
7	ZZKKK	ZZK	Konkursy kuratoryjne		0		\N
8	ZZKKK1	ZZK	Konkurs kuratoryjne - Dolnośląskie		1		\N
9	ZZKKK2	ZZK	Konkurs kuratoryjne - Kujawsko-Pomorskie		1		\N
10	ZZKKK3	ZZK	Konkurs kuratoryjne - Lubelskie		1		\N
11	ZZKKK4	ZZK	Konkurs kuratoryjne - Lubuskie		1		\N
12	ZZKKK5	ZZK	Konkurs kuratoryjne - Łódzkie		1		\N
13	ZZKKK6	ZZK	Konkurs kuratoryjne - Małopolskie		1		\N
14	ZZKKK7	ZZK	Konkurs kuratoryjne - Mazowieckie		1		\N
15	ZZKKK8	ZZK	Konkurs kuratoryjne - Opolskie		1		\N
16	ZZKKK9	ZZK	Konkurs kuratoryjne - Podkarpackie		1		\N
17	ZZKKK10	ZZK	Konkurs kuratoryjne - Podlaskie		1		\N
18	ZZKKK11	ZZK	Konkurs kuratoryjne - Pomorskie		1		\N
19	ZZKKK12	ZZK	Konkurs kuratoryjne - Śląskie		1		\N
20	ZZKKK13	ZZK	Konkurs kuratoryjne - Świętokrzyskie		1		\N
21	ZZKKK14	ZZK	Konkurs kuratoryjne - Warmińsko-Mazurskie		1		\N
22	ZZKKK15	ZZK	Konkurs kuratoryjne - Wielkopolskie		1		\N
23	ZZKKK16	ZZK	Konkurs kuratoryjne - Zachodniopomorskie		1		\N
24	ZZKLMM	ZZK	Liga matematyczna Matuskiego		0	https://ligamatematyczna.upsl.edu.pl/	13
25	ZZKMM	ZZK	Mistrzowie Matematyki		0	https://salezjanie.com/mistrzowie-matematyki/	15
26	ZZKOSZ	ZZK	Od szkolniaka do Żaka		0	https://cm.pg.edu.pl/dzialalnosc/konkursy/od-szkolniaka-do-zaka	6
27	ZZKOSZS	ZZK	Konkurs Staś		0	https://www.staszic.waw.pl/konkursy/stas/	7
28	ZZKOSZS2	ZZK	Jagieloński turniej matematyczny		0	https://jtm.matinf.uj.edu.pl/	19
29	ZZE		Egzaminy		0		\N
30	ZZEM	ZZE	Matury		0		\N
31	ZZEMPD	ZZEM	Matury podstawowe		1		1
32	ZZEMDO	ZZEM	Matury dodatkowe		1		1
33	ZZEMPO	ZZEM	Matury poprawkowe		1		1
34	ZZEMP	ZZEM	Matury próbne		1		1
35	ZZEMP1	ZZEMP	Matury próbne - Operon		2		5
36	ZZEMP2	ZZEMP	Matury próbne - Nowa Era		2		4
37	ZZEMP3	ZZEMP	Matury próbne - CENBydgoszcz		2		8
38	ZZEMP4	ZZEMP	Matury próbne - CKE		2		1
39	ZZEMP5	ZZEMP	Matury próbne - LSCDN		2		9
40	ZZEMP5	ZZEMP	Matury próbne - WSiP		2		11
41	ZZEG	ZZE	Egzaminy gimnazjalne		0		1
42	ZZEO	ZZE	Egzaminy ósmoklasisty		0		1
43	ZZEEW	ZZE	Egzaminy wstępne		0		\N
44	ZZEEWSR	ZZEEW	Egzaminy wstępne do szkół średnich		1		\N
45	ZZEEWSR2	ZZEEW	Egzaminy wstępny do Staszica		2		7
46	ZZEEWUW	ZZEEW	Egzaminy wstępne na uczelnie wyższe		1		\N
47	ZZEEWUW1	ZZEEW	Egzamin wstępny na PG		2		6
48	ZZEEWUW2	ZZEEW	Egzamin wstępny na PW		2		14
49	ZZK		Kursy		0		\N
50	ZZKMPW	ZZK	Kurs maturalny Politechniki Wrocławskiej		1	https://im.pwr.edu.pl/kurs/	3
51	ZZZZ		Zbiory zadań		0		\N
\.


--
-- Data for Name: zbior_mathtag; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.zbior_mathtag (id, nazwa, typ_tagu, symbol, opis) FROM stdin;
1	Matematyka elementarna	D	DME	
2	Funkcje i jej właściwości	D	DFWL	
3	Funkcja liniowa	D	DFL	
4	Funkcja kwadratowa	D	DFK	
5	Wielomiany	D	DW	
6	Funkcje wymierne	D	DFWym	
7	Funkcje wykładnicze	D	DFWyk	
8	Funkcje logarytmiczne	D	DFLog	
9	Funkcje trygonometryczne	D	DFT	
10	Trygonometria	D	DTR	
11	Planimetria	D	DPL	
12	Stereometria	D	DST	
13	Geometria analityczna	D	DGA	
14	Kombinatoryka	D	DKOM	
15	Rachunek prawdopodobieństwa	D	DRPR	
16	Statystyka	D	DSTA	
17	Analiza matematyczna	D	DAMAT	
18	Liniowe	R	RLin	
19	Kwadratowe	R	RKwa	
20	Wielomianowe	R	RWie	
21	Trygonometryczne	R	RTry	
22	Logarytmiczne	R	RLog	
23	Wykładnicze	R	RWyk	
24	Wartość bezwględnia	R	RWB	
25	Pierwiastek z niewiadomej	R	RPR	
26	Zmienna pomocznicza	R	RZP	
27	Podwójnie kwadratowe	R	RPK	
28	Zadania zamknięte jednokrotnego wyboru	Z	ZMJW	
29	Zadania zamknięte wielokrotnego wyboru	Z	ZMWW	
30	Zadania z kodowaną odpowiedzią	Z	ZK	zadania z matur w formule 2015-2023
31	Zadania otwarte	Z	ZO	
32	Zadanie przekrojowe	Z	ZPRzek	
33	Rozwiązywanie równań	U	URR	
34	Rozwiązywanie nierówności	U	URN	
35	Rozwiązywanie układów równań/nierówności	U	UURN	
36	Dowodzenie	U	UD	
37	Zadanie rachunkowe	U	UZR	
38	"Zadania z treścią"	U	UZZT	
39	Parametryzacja	U	UP	
40	Rysowanie wykresów funkcji	U	URWF	
41	Rysowanie figur płaskich	U	URFP	
42	Rysowanie brył	U	URB	
43	poziom podstawowy	P	PP	
44	poziom rozszerzony	P	PR	
45	poziom konkursowy	P	PK	
46	poziom olimpijski	P	PO	
47	Szkoła podstawowa (6-letnia)	E	ESP6	
48	Szkoła podstawowa (8-letnia)	E	ESP8	
49	Gimnazjum	E	EGim	
50	Liceum i szkoły ponadpodstawowe	E	EL	
51	Studia	E	ESt	
52	Konkurs	F	FK	
53	Egzamin	F	FE	
54	Kurs	F	FKR	
55	Zbior zadań	F	FZZ	
56	Ciągi	D	DCIAG	
57	Liczby i działania	D	DLiDzia	
58	Wyrażenia algebraiczne	D	DWyrAlge	
59	Zbiory	D	DZbio	
60	Równania, nierówności i układy	D	DRowNierUk	
\.


--
-- Data for Name: zbior_rozwiazanie; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.zbior_rozwiazanie (id, tresc, dotyczy_id) FROM stdin;
\.


--
-- Data for Name: zbior_temat; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.zbior_temat (id, nazwa, rodzic_id) FROM stdin;
1	Równania, nierówności i układy	\N
2	Układy równań	1
3	Układy równań liniowych	2
4	Równania	1
5	Równania liniowe	4
6	Równania kwadratowe	4
7	Równania wielomianowe	4
8	Równania trygonometryczne	4
9	Równania wykładnicze	4
10	Równania logarytmiczne	4
11	Równania wymierne	4
12	Równania mieszane	4
13	Równania na podstawianie	4
14	Równania podwójnie kwadratowe	13
15	Nierówności	1
16	Nierówności liniowe	15
17	Nierówności kwadratowe	15
18	Nierówności wielomianowe	15
19	Nierówności trygonometryczne	15
20	Nierówności wykładnicze	15
21	Nierówności logarytmiczne	15
22	Nierówności wymierne	15
23	Nierówności mieszane	15
24	Nierówności na podstawianie	15
25	Nierówności podwójnie kwadratowe	15
26	Planimetria	\N
27	Trójkąty	26
28	Czworokąty	26
29	Wielokąty	26
30	Stereometria	\N
31	Właściwości brył	30
32	Pole powierzchni	31
33	Objętość	31
34	Odcinki	31
35	Graniastosłupy	30
36	Ostrosłupy	30
37	Bryły obrotowe	30
38	Walec	37
39	Stożek	37
40	Kula	37
41	Przekroje brył	30
42	Bryły wpisane w bryły	30
43	Geometria analityczna	\N
44	Wektory	43
45	Wyznaczanie wektora	44
46	Działania na wektorach	44
47	Kąt między wektorami	44
48	Odcinki	43
49	Proste	43
50	Odległość punktu od prostej	43
51	Okręgi	43
52	Równanie okręgu	43
53	Pole trójkąta	43
54	Pole wielokąta	43
55	Wzajemne położenie prostej i okręgu	43
56	Wzajemne położenie dwóch okręgów	43
57	Jednokładność	43
58	Zbiory liczbowe	\N
59	Zbiory	58
60	Zbiory liczbowe	58
61	Działania na zbiorach	58
62	Przedziały liczbowe	58
63	Liczby i działania	\N
64	Ułamki zwykłe	63
65	Ułamki dzięsiętne	63
66	Potęgowanie	63
67	Pierwiastkowanie	63
68	Logarytmowanie	63
69	Silnia	63
70	Symbol Newtona	63
71	Wyrażenia algebraiczne	\N
72	Wzory skróconego mnożenia	71
73	Wzory stonia drugiego: \\((a-b)^2, (a+b)^2\\)	72
74	\\((a-b)(a+b)\\)	72
75	Wzory stopnia trzeciego: \\((a-b)^3, (a+b)^3, a^3-b^3, a^3+b^3\\)	72
76	\\(a^n-b^n\\)	72
77	Wzór Newtona. Trójkąt Pascala	72
78	Funkcje	\N
79	Funkcja liniowa	78
80	Funkcja kwadratowa	78
81	Funkcja wielomianowa	78
82	Funkcja wymierna	78
83	Funkcja wykładnicza	78
84	Funkcja logarytmiczna	78
85	Funkcja trygonometryczna	78
86	Ciągi	\N
87	Definicja	86
88	Ciąg arytmetyczny	86
89	Suma ciągu arytmetycznego	88
90	Ciąg geometryczny	86
91	Suma ciągu geometrycznego	90
92	Mieszanie ciągów	86
93	Granice ciągów	86
94	Szeregi geometryczne	86
95	Dowody	\N
96	Dowody geometryczne	95
97	Dowody algebraiczne	95
98	Dowody indukcyjne	95
99	Analiza matematyczna	\N
100	Trygonometria	\N
101	Definicja	100
102	Tożsamości trygonometryczne	100
103	Kombinatoryka	\N
104	Wariancje	103
105	Permutacje	103
106	Kombinacje	103
107	Zadania róźne	103
108	Rachunek prawdopodobieństwa	\N
\.


--
-- Data for Name: zbior_zadanie; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.zbior_zadanie (id, punkty, numer_zadania, tresc, wyswietlaj, odpowiedz, pochodzenie, typ_zadania, poziom_trudnosci, dzial) FROM stdin;
3	-1	3	Wartość użytkowa pewnej maszyny maleje z roku na rok o tę samą wielkość. Obliczyć czas, w jakim maszyna straci całkowitą wartość użytkową, jeżeli wiadomo, że jej wartość po 25 latach pracy była trzy razy mniejsza niż jej wartość po 15 latach.\n	t	\N	1	\N	PP	Ciągi
8	-1	2	Przez środek boku trójkąta równobocznego poprowadzono prostą tworzącą z tym bokiem kąt \\(45^{\\mathrm{o}}\\) i dzielącą ten trójkąt na dwie figury. Obliczyć stosunek pól tych figur (większej do mniejszej). Wynik przedstawić w najprostszej postaci.\n	t	\N	1	\N	PR	Planimetria
4	-1	4	Na okręgu o promieniu długości \\(r\\) opisano trapez prostokątny, którego najdłuzszy bok ma długość \\(3r\\). Obliczyć pole tego trapezu. Sporządzić staranny rysunek.\n	t	\N	1	\N	PP	Planimetria
5	-1	5	Obliczyć pierwiastek równania \\(\\frac{x-m}{4-6x}-\\frac{2x+m}{2x+1}=\\frac{2-m-7x^2}{6x^2-x-2}\\) wiedząc, że jest on o 2 większy od wartości parametru \\(m\\).\n	t	\N	1	\N	PP	Funkcje wymierne
6	-1	6	Z czworościanu foremnego odcinamy cztery naroża, których krawędziami bocznymi są połówki krawędzi czworościanu. Jaki wielościan otrzymujemy? Obliczyć stosunek jego objętości i pola powierzchni do objętości i pola powierzchni czworościanu. Sporządzić staranny rysunek.\n	t	\N	1	\N	PP	Stereometria
7	-1	1	W zawodach szachowych bierze udział pewna ilość zawodników, przy czym każdy zawodnik gra z każdym innym zawodnikiem dokładnie raz. Ilu było zawodników tych zawodów, jeśli rozegrano 84 partie, a dwóch zawodników wycofało się z zawodów po rozegraniu przez każdego trzech partii?\n	t	\N	1	\N	PR	Kombinatoryka
10	-1	4	Z miast odległych o 119 km wyruszają naprzeciw siebie dwaj rowerzyści, przy czym drugi rowerzysta startuje dwie godziny po wyjeździe pierwszego. Pierwszy rowerzysta, ruszający z miasta \\(A\\), w ciągu pierwszej godziny przejeżdża 20 km i w każdej następnej godzinie przejeżdża o 2 km mniej niż w poprzedniej. Natomiast drugi rowerzysta w ciągu pierwszej godziny przejeżdża 10 km i w każdej następnej godzinie przejeżdża o 3 km więcej niż w poprzedniej. Po ilu godzinach jazdy się spotkają i w jakiej odległości będą wtedy od obu miast?\n	t	\N	1	\N	PR	
9	-1	3	Dla jakich wartości parametru \\(m\\), punkty \\(A(m,-\\frac{3}{2})\\), \\(B(2,0)\\) oraz \\(C(4,-m)\\) są wierzchołkami trójkąta \\(ABC\\)? Zbadać jak zmienia się pole tego trójkąta w zależności od \\(m\\). Znaleźć, o ile istnieją, najmniejszą i największą wartość tego pola dla \\(m\\in [-2,2]\\).\n	t	\N	1	\N	PR	Geometria analityczna;Analiza matematyczna
17	-1	5	Wspólne styczne do stycznych zewnętrznie okręgów o promieniach \\(r<R\\) przecinają się pod kątem \\(2\\alpha\\). Wyznaczyć stosunek pól tych okręgów. Dla jakiego kąta \\(\\alpha\\) duże koło ma 9 razy większe pole niż małe?\n	t	\N	2	\N	PP	
11	-1	5	Wyznaczyć sumę pierwiastków równania \\(2^{(m+1)x^{2}-4mx+m+\\frac{3}{2}}=\\sqrt{2}\\) jako funkcję parametru \\(m\\). Wyznaczyć przedziały, na których funkcja ta jest rosnąca.\n	t	\N	1	\N	PR	Funkcje wykładnicze
12	-1	6	Z sześcianu odcinamy osiem naroży (małych czworościanów), których wierzchołkami są wierzchołki sześcianu, a bocznymi krawędziami połówki krawędzi sześcianu. Jaki wielościan otrzymujemy? Obliczyć stosunek jego objętości i pola powierzchni do objętości i pola powierzchni sześcianu. Znaleźć odległość między dwoma najbardziej odległymi wierzchołkami tego wielościanu. Sporządzić staranny rysunek.\n	t	\N	1	\N	PR	Stereometria
13	-1	1	Rozwiązać równanie \\(3^{\\log_{\\sqrt{3}}(2^{x}-1)}=2^{x+1}+1\\).\n	t	\N	2	\N	PP	Funkcje wykładnicze;Funkcje logarytmiczne
14	-1	2	Jaki zbiór tworzą środki wszystkich cięciw przechodzących przez ustalony punkt zadanego okręgu?	t		2	\N	PP	Planimetria
15	-1	3	Narysować wykres funkcji \\(f(x)=\\frac{|x+2|-1}{x-1}\\). Wyznaczyć zbiór jej wartości oraz najmniejszą i największą wartość na przedziale \\([-3,0]\\).	t		2	\N	PP	
16	-1	4	Niech \\(T\\) będzie przekształceniem płaszczyzny polegającym na przesunięciu o wektor [1, 2], a \\(S\\) - symetrią względem prostej \\(y=x\\). Wyznaczyć (analitycznie) obrazy kwadratu o wierzchołkach \\((0,1)\\), \\((1,1)\\), \\((1,2)\\) i \\((0,2)\\) w przekształceniach \\(SoT\\) i \\(ToS\\). Sporządzić staranne rysunki.\n	t	\N	2	\N	PP	Geometria analityczna
18	-1	6	Pole powierzchni całkowitej ostrosłupa prawidłowego trójkątnego jest 4 razy większe od pola jego podstawy. Obliczyć sinus kąta między ścianami ostrosłupa.\n	t	\N	2	\N	PP	Stereometria
19	-1	1	W rozwinięciu \\((a+b)^{n}=\\sum_{k=0}^{n}\\left(\\begin{array}{l}nk\\end{array}\\right)a^{n-k}b^{k}\\) dla \\(a=\\sqrt{x}\\), \\(b=\\frac{1}{2\\sqrt[4]{x}}\\) trzy pierwsze współczynniki przy potęgach \\(x\\) tworzą ciąg arytmetyczny. Znaleźć wszystkie składniki rozwinięcia, w którym \\(x\\) występuje w potędze o wykładniku całkowitym.\n	t	\N	2	\N	PR	Ciągi
20	-1	2	Punkty \\(K\\), \\(L\\), \\(M\\) dzielą boki \\(AB\\), \\(BC\\), \\(CA\\) trójkąta \\(ABC\\) (odpowiednio) w tym samym stosunku, tzn. \\(\\frac{|KB|}{|AB|}=\\frac{|LC|}{|BC|}=\\frac{|MA|}{|CA|}=s\\) Wykazać, że dla dowolnego punktu \\(P\\) znajdującego się wewnątrz trójkąta zachodzi równość \\(\\vec{PK}+\\vec{PL}+\\vec{PM}=\\vec{PA}+\\vec{PB}+\\vec{PC}\\).\n	t	\N	2	\N	PR	Planimetria
21	-1	3	Narysować wykres funkcji \\(f(x)=\\frac{(x+1)^{2}-1}{x|x-1|}\\). Wyznaczyć styczną do wykresu w punkcie \\((-2,f(-2))\\) oraz styczną do niej prostopadła.\n	t	\N	2	\N	PR	Analiza matematyczna
22	-1	4	Końce odcinka \\(AB\\) o długości \\(l\\) poruszają się po okręgu o promieniu \\(R\\) \\((l<2R)\\). Na odcinku obrano punkt \\(P\\) tak, że \\(\\frac{|AP|}{|PB|}=\\frac{1}{3}\\). Uzasadnić, że poruszający się punkt \\(P\\) zakreśla okrąg o tym samym środku. Dla jakiego 1 wycięte w ten sposób koło ma pole dwa razy mniejsze od pola dużego koła.\n	t	\N	2	\N	PR	Planimetria
23	-1	5	Rozważamy zbiór wszystkich trójkątów o polu 10, których jednym z wierzchołków jest \\(A(5,0)\\) a pozostałe dwa leżą na osi \\(Oy\\). Wyznaczyć zbiór wszystkich punktów płaszczyzny, które są środkami okręgów opisanych na tych trójkątach.\n	t	\N	2	\N	PR	Geometria analityczna
24	-1	6	W przeciwlegle narożniki sześcianu o boku 1 wpisano dwie kule o takich samych promieniach tak, że każda z nich jest styczna do drugiej i do trzech ścian wychodzących z odpowiedniego wierzchołka. Jaka jest odległość ich środków?\n	t	\N	2	\N	PR	Stereometria
25	-1	1	Znaleźć stuelementowy ciąg arytmetyczny, w którym suma wyrazów o numerach nieparzystych jest dwa razy większa od sumy wyrazów 0 numerach parzystych i o 50 mniejsza od sumy wszystkich wyrazów.\n	t	\N	3	\N	PP	Ciągi
26	-1	2	Rozwiązać układ równań \\(?\\).\n	t	\N	3	\N	PP	
45	-1	3	Niech \\(f(x)=?\\). \\[a)\\] Narysować wykres funkcji \\(f\\) i na jego podstawie wyznaczyć zbiór wartości funkcji. \\[b)\\] Obliczyć \\(f(\\log_{\\frac{1}{2}}(\\sqrt{2}-\\frac{1}{2}))\\) oraz \\(f(2^{\\sqrt{2}}+\\frac{1}{2})\\). \\[c)\\] Rozwiązać nierówność \\(f(x)\\leq \\frac{1}{2}\\) i zaznaczyć na osi \\(Ox\\) zbiór rozwiązań.\n	t	\N	4	\N	PR	
44	-1	2	Narysować wykres funkcji \\(f(x)=1-\\frac{2^{x}}{3^{x}-2^{x}}+(\\frac{2^{x}}{3^{x}-2^{x}})^{2}-…\\) i uzasadnić, że przyjmuje ona wyłącznie wartości większe niż \\(\\frac{1}{2}\\).\n	t	\N	4	\N	PR	Ciągi
31	-1	1	Rozwiązać układ równań \\(?\\).\n	t	\N	3	\N	PR	
27	-1	3	Narysować wykres funkcji \\(f(x)=x|x|-4|x|+3\\) i określić liczbę rozwiązań równania \\(f(x)=m\\) w zależności od parametru \\(m\\).\n	t	\N	3	\N	PP	Funkcje i jej właściwości
28	-1	4	W romb \\(ABCD\\) o kącie ostrym \\(\\alpha\\) wpisano czworokąt, którego boki są równoległe do przekątnych rombu. Jakie jest możliwie największe pole takiego czworokąta?\n	t	\N	3	\N	PP	Planimetria
29	-1	5	Znaleźć równania wspólnych stycznych do wykresów funkcji \\(f(x)=-x^{2}+2x\\) i \\(g(x)=x^{2}+1\\).\n	t	\N	3	\N	PP	Analiza matematyczna
40	-1	4	Niech \\(f(x)=?\\). \\[a)\\] Narysować wykres funkcji \\(f\\) i na jego podstawie wyznaczyć zbiór wartości funkcji. \\[b)\\] Obliczyć \\(f(\\sqrt{2})\\) oraz \\(f(\\sqrt{3})\\). \\[c)\\] Rozwiązać nierówność \\(f(x)\\leq-\\frac{1}{2}\\) i zaznaczyć na osi \\(Ox\\) zbiór rozwiązań.\n	t	\N	4	\N	PP	
32	-1	2	Wyznaczyć równania wszystkich stycznych do wykresu funkcji \\(f(x)=\\frac{2x-1}{x+1}\\), które są prostopadłe do prostej \\(x+3y+1=0\\).\n	t	\N	3	\N	PR	Analiza matematyczna
33	-1	3	Granicą ciągu o wyrazie ogólnym \\(a_{n}=n^{2}-\\sqrt{n^{4}-an^{2}+bn}\\) jest większy z pierwiastków równania \\(x^{\\log_{2}x}-3=4x^{\\log_{\\frac{1}{2}}x}\\). Wyznaczyć parametry \\(a\\) i \\(b\\).\n	t	\N	3	\N	PR	Ciągi
34	-1	4	Na boku \\(BC\\) trójkąta równobocznego obrano punkt \\(D\\) tak, że promień okręgu wpisanego w trójkąt \\(ADC\\) jest dwa razy mniejszy niż promień okręgu wpisanego w trójkąt \\(ABD\\). W jakim stosunku punkt \\(D\\) dzieli bok \\(BC\\)?\n	t	\N	3	\N	PR	Planimetria
35	-1	5	Rozwiązać nierówność \\(1+\\frac{\\sin{x}}{\\sqrt{3}+\\sin{x}}+(\\frac{\\sin{x}}{\\sqrt{3}+\\sin{x}})^{2}+(\\frac{\\sin{x}}{\\sqrt{3}+\\sin{x}})^{3}+\\cdots\\leq \\cos{x}\\), której lewa strona jest sumą wszystkich wyrazów nieskończonego ciągu geometrycznego.\n	t	\N	3	\N	PR	Ciągi
36	-1	6	Jakie wymiary ma walec o możliwie największej objętości wpisany w sześcian o boku \\(a\\) w taki sposób, że jego oś jest zawarta w przekątnej sześcianu, a każda z podstaw jest styczna do trzech ścian wychodzących z jednego wierzchołka.\n	t	\N	3	\N	PR	Stereometria
37	-1	1	Rozwiązać nierówność \\(\\sqrt{2^{x}-1}\\leq 2^{x}-3\\).\n	t	\N	4	\N	PP	Funkcje wykładnicze
38	-1	2	Trójkąt prostokątny o przyprostokątnych \\(a\\), \\(b\\) obracamy wokół każdej z przyprostokątnych. Obliczyć stosunek sumy objętości tych stożków do objętości bryły otrzymanej przez obrót trójkąta wokół przeciwprostokątnej i wyrazić go jako funkcję zmiennej \\(\\frac{a}{b}\\).\n	t	\N	4	\N	PP	Stereometria
39	-1	3	Punkty \\((-1,1)\\), \\((0,0)\\), \\((\\sqrt{2},0)\\) są trzema kolejnymi wierzchołkami wielokąta foremnego. Wyznaczyć współrzędne pozostałych wierzchołków wielokąta oraz jego pole. Podać równania okręgów wpisanego i opisanego na tym wielokącie oraz wyznaczyć stosunek ich promieni.\n	t	\N	4	\N	PP	Geometria analityczna
42	-1	6	Ostrosłup prawidłowy trójkątny, w którym bok podstawy i wysokość są równe \\(a\\) przecięto płaszczyzną przechodzącą przez jedną z krawędzi podstawy na dwie bryły o tej samej objętości. Wyznaczyć tangens kąta nachylenia tej płaszczyzny do płaszczyzny podstawy. Sporządzić rysunek.\n	t	\N	4	\N	PP	Stereometria
47	-1	5	W ośmiościan foremny wpisano dwa sześciany. Wierzchołki pierwszego z nich leżą na krawędziach ośmiościanu, a wierzchołki drugiego - na wysokościach ścian bocznych. Obliczyć stosunek objętości tych sześcianów.\n	t	\N	4	\N	PR	Stereometria
46	-1	4	Punkt \\(C(0,0)\\) jest wierzchołkiem trójkąta równoramiennego, w którym środkowa podstawy \\(AB\\) i wysokość poprowadzona z jednego z wierzchołków \\(A\\), \\(B\\) przecinają się w punkcie \\(S(2,1)\\). Pole trójkąta \\(ABS\\) jest dwa razy mniejsze niż pole trójkąta \\(ABC\\). Wyznaczyć współrzędne wierzchołków \\(A\\), \\(B\\) oraz równanie okręgu opisanego na trójkącie \\(ABC\\).\n	t	\N	4	\N	PR	Geometria analityczna
49	-1	1	Do sklepu dostarczono ziemniaki w dwóch gatunkach. II gatunek jest po \\(a\\) zł za kilogram, a I gatunek jest o 20% droższy. Łączna wartość dostarczonych ziemniaków wyniosła \\(56a\\) zł. W ciągu dnia sprzedano 1/5 ziemniaków I gatunku i 1/4 ziemniaków II gatunku, w sumie za kwotę \\(12,2a\\) zł. Ile kilogramów ziemniaków każdego gatunku dostarczono do sklepu?\n	t	\N	5	\N	PP	
51	-1	3	Dany jest kwadrat o boku \\(a\\). Do boków tego kwadratu dołączono jednakowe trójkąty równoramienne o podstawie boku kwadratu. Następnie złączono wierzchołki trójkątów w jeden wierzchołek tworząc ostrosłup o objętości \\(V\\). Wyznacz długość ramienia dołączonych trójkątów, a następnie wykonaj rachunki, przyjmując \\(a=3 cm\\) oraz \\(V=18 cm^{3}\\).\n	t	\N	5	\N	PP	Stereometria
48	-1	6	Prostokąt o bokach \\(a\\) i \\(2a\\) obraca się wokół przekątnej. Obliczyć pole powierzchni całkowitej i objętość otrzymanej bryły.\n	t	\N	4	\N	PR	Stereometria
50	-1	2	Na loterii jest 100 losów, z których 5 jest wygrywających. Jakie jest prawdopodobieństwo, że wśród trzech kupionych losów \\[a)\\] dokładnie jeden wygrywa	t	\N	5	\N	PP	Rachunek prawdopodobieństwa
73	-1	1	Wykaż, że różnica kwadratów dwóch liczb nieparzystych jest podzielna przez 8.\n            	t	\N	7	\N	PP	Arytmetyka
74	-1	2	Właściciel hurtowni sprzedał \\(\\frac{1}{3}\\) partii bananów po założonej przez siebie cenie. Ponieważ\n                pozostałe owoce zaczęły zbyt szybko dojrzewać, więc obniżył ich cenę o 30%. Dzięki temu sprzedał 60%\n                aktualnego stanu. Resztę bananów udało mu się sprzedać dopiero, gdy ustalił ich cenę na poziomie\n                \\(\\frac{1}{5}\\) ceny początkowej. Ile procent zaplanowanego zysku stanowi kwota uzyskana ze sprzedaży? W\n                jakiej cenie (w porównaniu z założoną) powinien sprzedać pierwszą partię towaru, żeby jednokrotna\n                obniżka ich ceny o 25% pozwoliła na sprzedanie wszystkich owoców i uzyskanie zaplanowanego początkowo\n                zysku?\n            	t	\N	7	\N	PP	Arytmetyka
75	-1	3	Narysuj wykres funkcji \\(f(x)=\\frac{|x-1|+x}{|x+1|}\\). Następnie rozwiąż nierówność \\(f(x)\\geq1\\) i,\n                korzystając z wykresu, podaj jej interpretację graficzną.\n            	t	\N	7	\N	PP	Funkcja wymierna
421	-1	1	Wyznaczyć \\(z\\) jako funkcję zmiennej \\(y\\), wiedząc, że \\(x=2\\frac{1}{1-\\log_{2}z}\\) oraz \\(y=2\\frac{1}{1-\\log_{2}x}\\).\n	t	\N	36	\N	PP	
59	-1	5	Rozwiąż algebraicznie następujący układ równań \\begin{array}{l} y=|x^{2}-2x|+1 x^{2}+y^{2}+1=2x+2y \\end{array} i podaj jego interpretację graficzną (wykonaj staranny rysunek).\n	t	\N	5	\N	PR	Geometria analityczna
53	-1	5	Znajdź współrzędne wierzchołka \\(C\\) trójkąta równoramiennego \\(ABC\\) o podstawie \\(AB\\), gdzie \\(A(0,0)\\) i \\(B(2,0)\\), wiedząc, że środkowe tego trójkąta \\(AD\\) i \\(BE\\) są prostopadłe względem siebie.\n	t	\N	5	\N	PP	Geometria analityczna
54	-1	6	Prosta o równaniu \\(x-2y+10=0\\) przecina parabolę \\(y=x^{2}-4x+5\\) w punktach \\(A\\) i \\(B\\). Wykaż, że trójkąt \\(ABC\\), gdzie \\(C\\) jest wierzchołkiem paraboli, jest prostokątny, a następnie oblicz pole tego trójkąta. Wykonaj staranny rysunek.\n	t	\N	5	\N	PP	Geometria analityczna
55	-1	1	Kat ostry równoległoboku ma miarę \\(45^{\\mathrm{o}}\\). Punkt przecięcia przekątnych równoległoboku jest oddalony od boków o 1 i \\(\\sqrt{2}\\). Oblicz pole tego równoległoboku oraz długości jego przekątnych.\n	t	\N	5	\N	PR	Planimetria
57	-1	3	Czworościan rozcięto wzdłuż trzech krawędzi wychodzących z tego samego wierzchołka i po rozprostowaniu otrzymano kwadrat o boku \\(a\\). Oblicz objętość czworościaniu oraz wykonaj odpowiedni rysunek.\n	t	\N	5	\N	PR	Stereometria
58	-1	4	Przez punkt \\((-1,2)\\) przeprowadź prostą tak, aby środek jej odcinka zawartego między prostymi \\(x+2y=3\\) i \\(x+2y=5\\) należał do prostej \\(x+y=2\\). Wyznacz równanie symetralnej tego odcinka. Wykonaj staranny rysunek.\n	t	\N	5	\N	PR	Geometria analityczna
60	-1	6	Funkcja \\(f(x)=\\frac{x^{2}-4x+4}{2x}\\) ma w punktach \\(A\\) i \\(B\\) wartości ekstremalne. Znajdź taki punkt \\(C\\) należący do osi odciętych, aby pole trójkąta \\(ABC\\) było równe pierwiastkowi równania \\(x^{1-\\frac{1}{2}+\\frac{1}{4}-\\frac{1}{8}…}=4\\), gdzie \\(x>0\\). Naszkicuj wykres funkcji \\(f(x)\\) wraz z trójkątem \\(ABC\\).\n	t	\N	5	\N	PR	Analiza matematyczna;Ciągi
62	-1	2	Dane są wierzchołki \\(A(-1,-2)\\) i \\(B(6,-1)\\) równoległoboku, którego przekątne przecinają się w punkcie \\(S(4,0)\\). Wyznacz współrzędne pozostałych wierzchołków i oblicz pole równoległoboku.\n	t	\N	6	\N	PP	Geometria analityczna
63	-1	3	Trójkąt prostokątny o polu 30 jest opisany na okręgu o promieniu 2. Wyznacz długości jego boków.\n	t	\N	6	\N	PP	Planimetria
64	-1	4	Cięciwy \\(AB\\) i \\(CD\\) (punkt \\(C\\) leży na łuku \\(AB\\)) przecinają się pod kątem prostym w punkcie \\(S\\). Pole trójkąta \\(BSD\\) jest równe 4, a pole trójkąta \\(ASC\\) wynosi 9. Oblicz pole czworokąta \\(ADBC\\), jeżeli suma długości tych cięciw jest równa 15.\n	t	\N	6	\N	PP	Planimetria
65	-1	5	Dane są punkty \\(A(8,2)\\) i \\(B(1,6)\\). Punkt \\(C\\) leży na jednej z osi układu i jest wierzchołkiem kata prostego w trójkącie \\(ABC\\). Wyznacz współrzędne punku \\(C\\).\n	t	\N	6	\N	PP	Geometria analityczna
67	-1	1	Wiedząc, że \\(\\sin2x=-\\frac{3}{4}\\) i \\(x\\in (\\frac{\\pi}{2},\\pi)\\), oblicz wartość wyrażenia \\(\\frac{\\sin(3x+30^{\\mathrm{o}})-\\sin(x-30^{\\mathrm{o}})}{4\\cos^{2}x-2}\\).\n	t	\N	6	\N	PR	Trygonometria
66	-1	6	W ostrosłupie prawidłowym trójkątnym zachodzi równość \\(\\cos\\alpha=\\sqrt{3}\\cos\\beta\\), gdzie \\(\\alpha\\) jest kątem nachylenia krawędzi bocznej, a \\(\\beta\\)- kątem nachylenia ściany bocznej do podstawy. Wykaż, że ten ostrosłup jest czworościanem foremnym.\n	t	\N	6	\N	PP	Stereometria
68	-1	2	Wektory \\(\\vec{u}\\), \\(\\vec{v}\\) mają długość 1 i tworzą kąt \\(60^{\\mathrm{o}}\\). Oblicz długości przekątnych równoległoboku rozpiętego na wektorach \\((2\\vec{u}-\\vec{v})\\) i \\((\\vec{u}-2\\vec{v})\\). Wyznacz jego kąt ostry i sprawdź, czy można w ten równoległobok wpisać okrąg. Jeżeli tak, to oblicz jego promień.\n	t	\N	6	\N	PR	Planimetria
69	-1	3	Przekątne trapezu \\(ABCD\\) przecinają się w takim punkcie \\(P\\), że \\(|AP|^{2}+|BP|^{2}-|AB|^{2}=\\frac{2\\sqrt{5}}{3}|AP||BP|\\). O ile dłuższy jest promień okręgu opisanego na trójkącie \\(ABP\\) od promienia okręgu opisanego na trójkącie \\(PCD\\), jeżeli \\(|AB|-|CD|=4\\)?\n	t	\N	6	\N	PR	Planimetria
70	-1	4	Na okręgu \\(x^{2}+y^{2}-2x-2y=0\\), opisany jest trapez prostokątny \\(ABCD\\) o polu 12. Wyznacz współrzędne wierzchołków trapezu, wiedząc, że większa z jego podstaw \\(AB\\) jest zawarta jest w prostej \\(x+y=0\\), a kąt przy wierzchołku \\(A\\) jest prosty.\n	t	\N	6	\N	PR	Geometria analityczna
72	-1	6	W ostrosłupie prawidłowym trójkątnym krawędź boczna jest dwa razy dłuższa niż krawędź podstawy. Wyznacz cosinus kata między ścianami bocznymi ostrosłupa oraz stosunek promienia kuli opisanej na ostrosłupie do promienia kuli wpisanej w ostrosłup.\n	t	\N	6	\N	PR	Stereometria
99	-1	3	Rozwiąż równanie \\(tg^{2}x=\\frac{1+\\cos{x}}{1-\\sin{x}}\\).\n	t	\N	9	\N	PP	Funkcje trygonometryczne
76	-1	4	Wykresem funkcji \\(f(x)=x^{2}+bx+c\\) jest parabola o wierzchołku w punkcie \\((3,-1)\\). Podaj wzór\n                funkcji, której wykres jest obrazem symetrycznym tej paraboli: \\[a)\\] względem prostej \\(x=1\\), \\[b)\\]\n                względem punktu \\((1,0)\\). Sporządź staranne wykresy wszystkich funkcji.\n            	t	\N	7	\N	PP	Funkcja kwadratowa
77	-1	5	Oblicz\n                \\(\\frac{\\sqrt{2\\sin^{3}\\alpha+3\\sin\\alpha\\cos^{2}\\alpha}}{\\sin\\alpha\\sqrt{\\cos\\alpha}+\\cos\\alpha\\sqrt{\\sin\\alpha}}\\)\n                wiedząc, że tg \\(\\alpha=\\frac{1}{2}\\). Wynik podaj bez niewymierności w mianowniku.\n            	t	\N	7	\N	PP	Trygonometria
78	-1	6	Z miejscowości \\(A\\) i \\(B\\) odległych o 90 kilometrów wyruszyli dwaj rowerzyści. Adam wyjechał z\n                \\(A\\) o godzinę wcześniej niż Bartek z \\(B\\). Od momentu spotkania Adam jechał do \\(B\\) 90 minut, a\n                Bartek dotarł do \\(A\\) po 4 godzinach. Z jaką prędkością jechał każdy z rowerzystów?\n            	t	\N	7	\N	PP	Arytmetyka
79	-1	1	Wykaż, że różnica czwartych potęg dwóch liczb nieparzystych jest podzielna przez 16.\n            	t	\N	7	\N	PR	Arytmetyka
80	-1	2	31 grudnia Kowalski zaciągnął pożyczkę 4000 złotych oprocentowaną w wysokości 16% w skali roku.\n                Zobowiązał się spłacić ją w ciągu roku w czterech równych ratach płatnych 31 marca, 30 czerwca, 30\n                września i 31 grudnia. Oprocentowanie pożyczki liczy się od 1 stycznia, a odsetki od kredytu naliczane\n                są w terminach płatności rat. Oblicz wysokość tych rat w zaokrągleniu do pełnych groszy.\n            	t	\N	7	\N	PR	Arytmetyka
81	-1	3	Narysuj wykres funkcji \\(f(x)=\\frac{|x+1|+x}{|x-1|}\\) i wyznacz zbiór jej wartości. Następnie rozwiąż\n                nierówność \\(f(x-1)< x\\) i podaj jej interpretację graficzną.\n            	t	\N	7	\N	PR	Funkcja wymierna
82	-1	4	Dla jakich wartości parametru rzeczywistego \\(m\\) równanie kwadratowe \\(2x^{2}-mx+m+2=0\\) ma dwa\n                pierwiastki rzeczywiste \\(x_{1}\\), \\(x_{2}\\), których suma odwrotności jest nieujemna? Sporządź wykres\n                funkcji \\(f(m)=\\frac{1}{x_{1}}+\\frac{1}{x_{2}}\\).\n            	t	\N	7	\N	PR	Funkcja kwadratowa
85	-1	1	Dla pewnego kąta ostrego \\(\\alpha\\) zachodzi równość \\(\\cos\\alpha=2\\sin\\alpha\\). Wyznaczyć wartości\n                wszystkich funkcji trygonometrycznych tego kąta.\n            	t	\N	8	\N	PP	Trygonometria
88	-1	4	Wyznaczyć wzory tych funkcji kwadratowych \\(f(x)=ax^{2}+bx+c\\), dla których najmniejszą wartością\n                jest \\(\\frac{9}{2}\\), \\(f(0)=-4\\), a jednym z miejsc zerowych jest \\(x=4\\). Narysować wykresy tych\n                funkcji.\n            	t	\N	8	\N	PP	Funkcja kwadratowa
90	-1	6	Dane są zbiory \\(A=\\{(x,y):4|x|-4\\leq 2|y|\\leq |x|+2\\}\\) oraz \\(B=\\{(x,y):|x|+|y|\\leq\n                \\frac{5}{2}\\}\\). Obliczyć pole zbioru \\(A\\cap B\\). Wykonać staranny rysunek.\n            	t	\N	8	\N	PP	Arytmetyka
91	-1	1	Wiedząc, że dla wypukłego kąta \\(\\alpha\\) zachodzi równość \\(\\cos\\alpha-\\sin\\alpha=\\frac{1}{3}\\),\n                wyznaczyć wszystkie funkcje trygonometryczne tego kąta.\n            	t	\N	8	\N	PR	Trygonometria
93	-1	3	Ciężarówka o długości 16m jedzie ze stałą prędkością 70 km/h. Wyprzedza ją samochód osobowy o\n                długości 4m jadąc ze stałą prędkością 100 km/h. Manewr wyprzedzania rozpoczyna od zjazdu na lewy pas\n                dokładnie 20m za ciężarówką, a kończy, powracając na prawy pas jezdni dokładnie 20m przed nią (odstęp\n                między pojazdami wynosi w tych momentach 20m). Z naprzeciwka nadjeżdża inny samochód osobowy z\n                prędkością 105 km/h. Jaka powinna być odległość między oboma samochodami osobowymi na początku manewru\n                wyprzedzania, żeby zakończył się on bezpiecznie (bez zmiany prędkości obu samochodów)?\n            	t	\N	8	\N	PR	Arytmetyka
94	-1	4	Narysować wykres funkcji \\(f(x)=|2^{-x}-2| dla x \\leq 1\\), \\(f(x)=\\frac{x-4}{x-2} dla x>1\\).\n                Posługując się nim, podać wzór funkcji \\(g(m)\\) określającej liczbę rozwiązań równania \\(f(x)=m\\), gdzie\n                \\(m\\) jest parametrem rzeczywistym.\n            	t	\N	8	\N	PR	Funkcja wykładnicza
96	-1	6	Dane są zbiory \\(A=\\{(x,y):x^{2}+y^{2}<16\\}\\) oraz \\(B=\\{(x,y):x^{2}+y^{2}<4||x|-|y||\\}\\).\n                Narysować zbiór \\(A\\backslash B\\) oraz obliczyć jego pole.\n            	t	\N	8	\N	PR	Arytmetyka
84	-1	6	Z wierzchołków podstawy \\(AB\\) trójkąta równobocznego o boku \\(a\\) rozpoczęły ruch dwa punkty.\n                Poruszają się one wzdłuż boków \\(AC\\) i \\(BC\\) z prędkościami odpowiednio \\(v_{1}\\) i \\(v_{2}\\). Po\n                jakim czasie odległość między nimi będzie równa wysokości trójkąta?\n            	t	\N	7	\N	PR	Planimetria
86	-1	2	Po modernizacji linii kolejowej łączącej Wałbrzych z Wrocławiem średnia prędkość pociągu wzrosła o 14\n                km/h, a czas przejazdu 70 km skrócił się o 25 minut. Z jaką średnią prędkością jedzie teraz pociąg na\n                tej linii?\n            	t	\N	8	\N	PP	Arytmetyka
87	-1	3	Wyznaczyć dziedzinę oraz najmniejszą wartość funkcji \\(f(x)=\\frac{1}{\\sqrt{10+8x^{2}-x^{4}}}\\).\n            	t	\N	8	\N	PP	Funkcje i jej właściwości
89	-1	5	Uprościć wyrażenie (dla tych \\(a\\), \\(b\\), dla których ma ono sens)\n                \\((\\frac{1}{b}+\\frac{2}{\\sqrt[6]{a^{2}b^{3}}}+\\frac{1}{\\sqrt[3]{a^{2}}})(\\sqrt[3]{a^{2}}(\\sqrt[3]{a}+\\sqrt{b})-\\frac{a(2\\sqrt{b}+\\sqrt[3]{a})}{\\sqrt[3]{a}+\\sqrt{b}})\\).\n                Następnie obliczyć jego wartość dla \\(a=5\\sqrt{5}\\) i \\(b=146\\sqrt{5}\\).\n            	t	\N	8	\N	PP	Arytmetyka
92	-1	2	Dla jakich wartości parametru \\(p\\) suma kwadratów pierwiastków trójmianu \\(px^{2}-2px+2\\) jest\n                większa od 3?\n            	t	\N	8	\N	PR	Funkcja kwadratowa
95	-1	5	Uprościć wyrażenie (dla tych \\(a\\), \\(b\\), dla których ma ono sens)\n                \\((\\frac{\\sqrt[4]{a}}{\\sqrt{b}}-\\frac{b}{\\sqrt{a}}+\\frac{3\\sqrt{b}}{\\sqrt[4]{a}}-3)(\\sqrt[4]{ab^{2}}-b+\\frac{2b\\sqrt[4]{a}-\\sqrt{b^{3}}}{\\sqrt[4]{a}-\\sqrt{b}})\\).\n                Następnie obliczyć jego wartość dla \\(a=28-16\\sqrt{3}\\) i \\(b=3\\).\n            	t	\N	8	\N	PR	Arytmetyka
97	-1	1	Trzy liczby naturalne o iloczynie 80 tworzą ciąg arytmetyczny. Jeżeli drugi wyraz tego ciągu zmniejszymy o 1, to liczby te (rozważane w tej samej kolejności) utworzą ciąg geometryczny. Jakie to liczby?\n	t	\N	9	\N	PP	Ciągi
98	-1	2	Liczby dodatnie \\(a\\), \\(b\\) spełniają warunek \\(a^{2}+b^{2}=7ab\\). Wykaż, że \\(\\log_{3}a+\\log_{3}b+2=2\\log_{3}(a+b)\\).\n	t	\N	9	\N	PP	Funkcje logarytmiczne
476	-1	2	Wyznacz najmniejszą wartość funkcji \\(f(x)=(tgx+ctgx)^{2}\\) oraz rozwiąż nierówność \\(f(x)\\leq f(2x)\\).\n	t	\N	40	\N	PR	
106	-1	4	Narysuj wykres funkcji \\(f(x)=?\\). Na podstawie wykresu wyznacz zbiór wartości funkcji \\(f(x)\\) i sprawdź, w jakich punktach jest ona ciągła. Odpowiedź poprzyj odpowiednim rachunkiem.\n	t	\N	9	\N	PR	
101	-1	5	Punkt \\(A(0,0)\\) jest wierzchołkiem ośmiokąta foremnego wpisanego w okrąg \\(x^{2}-2x+y^{2}=0\\). Wyznacz współrzędne pozostałych wierzchołków.\n	t	\N	9	\N	PP	Geometria analityczna
103	-1	1	Liczby dodatnie \\(a\\), \\(b\\), \\(c\\) spełniają warunki: \\(c>b\\), \\(a\\neq1\\), \\(c-b\\neq1\\), \\(c+b\\neq1\\). Wykaż, że równość \\(\\log_{c+b}a\\cdot \\log_{c-b}a=\\frac{\\log_{c+b}a+\\log_{c-b}a}{2}\\) zachodzi wtedy i tylko wtedy, gdy \\(a^{2}+b^{2}=c^{2}\\).\n	t	\N	9	\N	PR	Matematyka elementarna
104	-1	2	Rozwiąż nierówność \\(\\sin^{4}x+\\cos^{4}x\\leq \\frac{3}{4}\\).\n	t	\N	9	\N	PR	Funkcje trygonometryczne
105	-1	3	Oblicz sumę wyrazów nieskończonego ciągu geometrycznego, w którym \\(a_{1}=1\\), a każdy kolejny wyraz jest połową różnicy wyrazu następnego i poprzedniego..\n	t	\N	9	\N	PR	Ciągi
107	-1	5	Okręgi o promieniach \\(r<R\\) są styczne zewnętrznie w punkcie \\(M\\) i styczne do prostej 1 w punktach \\(A\\) i \\(B\\). Wyznacz pole trójkąta \\(ABM\\) w zależności od \\(r\\) i \\(R\\).\n	t	\N	9	\N	PR	
120	-1	6	Określ dziedzinę, wyznacz wszystkie asymptoty, przedziały monotoniczności oraz wszystkie lokalne ekstrema funkcji \\(f(x)=\\frac{x^{3}+x^{2}-x+2}{x^{2}+x-2}\\). Sporządź staranny wykres.\n	t	\N	10	\N	PR	Analiza matematyczna
108	-1	6	W ostrosłupie prawidłowym trójkątnym krawędź boczna jest nachylona do podstawy pod kątem \\(60^{\\mathrm{o}}\\). Oblicz stosunek objętości kuli wpisanej do objętości kuli opisanej na ostrosłupie.\n	t	\N	9	\N	PR	Stereometria
109	-1	1	Jeden z wierzchołków trójkąta równobocznego wpisanego w okrąg \\(x^{2}+y^{2}=2\\) znajduje się w punkcie \\(P(1,1)\\). Wyznacz położenie pozostałych wierzchołków i sporządź odpowiedni rysunek.\n	t	\N	10	\N	PP	Geometria analityczna
110	-1	2	Zbadaj, dla jakiej wartości parametru \\(\\alpha\\in [0,2\\pi]\\) liczba 0 jest największą wartością funkcji \\(f(x)=x^{2}\\cos\\alpha+x(1+\\cos2\\alpha)-1\\) w całej jej dziedzinie.\n	t	\N	10	\N	PP	Funkcje trygonometryczne
111	-1	3	Wyznacz te argumenty funkcji \\(g(x)=16\\cdot 2^{x^{4}}\\cdot 243^{x^{2}}-81\\cdot 3^{x^{4}}\\cdot 32^{x^{2}}\\), dla których funkcja ta przyjmuje wartości nieujemne.\n	t	\N	10	\N	PP	Funkcje wykładnicze
112	-1	4	Zakładając, że \\(x\\in [0,2\\pi]\\), rozwiąż nierówność trygonometryczną \\(16\\sin^{4}\\frac{x}{2}-16\\sin^{2}\\frac{x}{2}+3\\geq0\\).\n	t	\N	10	\N	PP	Funkcje trygonometryczne
113	-1	5	Wyznacz wszystkie punkty wspólne krzywych \\(y=\\log_{\\sqrt{2}}\\sqrt{2x-1}+\\log_{\\frac{1}{2}}\\frac{1}{3x+1}\\) oraz \\(y=1+2\\log_{4}(x+1)\\).\n	t	\N	10	\N	PP	Geometria analityczna
114	-1	6	Narysuj wykres funkcji \\(f(x)=|2-|2-2^{|x|}||\\) i precyzyjnie opisz zastosowaną metodę jego konstrukcji. Na podstawie rysunku wskaz lokalne ekstrema funkcji oraz określ jej najmniejszą i największą wartość w całej dziedzinie, o ile one istnieją.\n	t	\N	10	\N	PP	Funkcje wykładnicze
115	-1	1	Jeden z wierzchołków sześciokąta foremnego wpisanego w okrąg \\(x^{2}+y^{2}=2\\) znajduje się w punkcie \\(P(-1,-1)\\). Wyznacz położenie pozostałych wierzchołków i sporządź odpowiedni rysunek.\n	t	\N	10	\N	PR	Geometria analityczna
116	-1	2	Rozwiąż nierówność \\(2^{3x^{3}+x^{2}-3x+1}\\cdot 3^{6x^{4}-x^{2}}\\geq3^{x^{3}+6x^{2}-x-1}\\cdot 4^{3x^{4}+x^{3}-3x^{2}-x+1}\\).\n	t	\N	10	\N	PR	Funkcje wykładnicze
117	-1	3	Określ dziedzinę i zbadaj, dla jakich argumentów funkcja \\(f(x)=\\log_{x-1}(x+2)+\\log_{x+2}\\frac{1}{x-1}\\) przyjmuje wartości dodatnie.\n	t	\N	10	\N	PR	Funkcje logarytmiczne
118	-1	4	Rozwiąż nierówność \\(3-3\\sin^{2}x+3\\sin^{4}x-3\\sin^{6}x+\\ldots\\leq \\frac{16\\cos^{2}x-16\\cos^{4}x}{2-\\cos^{2}x}\\), której lewa strona jest suma wszystkich wyrazów nieskończonego ciągu geometrycznego.\n	t	\N	10	\N	PR	Ciągi
121	-1	1	Uprościć następujące wyrażenie, określiwszy uprzednio jego dziedzinę: \\(\\frac{1}{\\sqrt[6]{a^{3}b^{2}}-\\sqrt[6]{b^{5}}}(\\sqrt[3]{a^{2}}-\\frac{b}{\\sqrt[3]{a}})+\\frac{1}{\\sqrt{a}+\\sqrt{b}}:\\frac{\\sqrt[3]{ab}}{a-b}\\). Obliczyć wartość tego wyrażenia, przyjmując \\(a=3+2\\sqrt{2}\\) i \\(b=1+\\sqrt{2}\\).\n	t	\N	11	\N	PP	Matematyka elementarna
122	-1	2	Niech \\(B\\) oznacza dziedzinę funkcji \\(f(x)=\\frac{1}{\\sqrt{3+2x-x^{2}}}\\), a \\(A=\\{x\\in \\mathbb{R}:\\frac{1}{|x^{2}-1|}\\geq4\\}\\). Wyznaczyć i zaznaczyć na osi liczbowej zbiory \\(A\\), \\(B\\), \\(A\\cap B\\), \\(A\\cup B\\) oraz \\((A\\backslash B)\\cup (B\\backslash A)\\).\n	t	\N	11	\N	PP	Matematyka elementarna
123	-1	3	Podać wzór funkcji kwadratowej, której wykres jest symetrycznym odbiciem wykresu funkcji \\(f(x)=x^{2}+2x\\) względem: \\[a)\\] prostej \\(x=1\\), \\[b)\\] punktu \\((0,0)\\), \\[c)\\] punktu \\((1,0)\\). Odpowiedź uzasadnić, przeprowadzając odpowiednie obliczenia. Sporządzić staranne wykresy wszystkich rozważanych funkcji.\n	t	\N	11	\N	PP	Funkcja kwadratowa
124	-1	4	W pewnym ciągu arytmetycznym różnica piętnastego i drugiego wyrazu jest równa 13. Oblicz \\(a_{30}-a_{4}\\) oraz sumę pierwszych dziesięciu wyrazów o numerach nieparzystych, wiedząc, że suma pierwszych dziesięciu wyrazów o numerach parzystych jest równa 125.\n	t	\N	11	\N	PP	Ciągi
125	-1	5	Przekątne trapezu prostokątnego o podstawach 3 i 4 przecinają się pod kątem prostym. Obliczyć obwód i pole trapezu. Sporządzić rysunek.\n	t	\N	11	\N	PP	Planimetria
126	-1	6	Ostrosłup prawidłowy, którego podstawą jest kwadrat o boku \\(a\\), przecięto płaszczyzną przechodzącą przez wysokość ostrosłupa i przekątną podstawy. Pole otrzymanego przekroju jest równe polu podstawy. Wyznaczyć pole powierzchni całkowitej ostrosłupa oraz cosinus kąta nachylenia ściany bocznej do podstawy.\n	t	\N	11	\N	PP	Stereometria
127	-1	1	Uprościć następujące wyrażenie, określiwszy uprzednio jego dziedzinę: \\(\\frac{\\sqrt[3]{a}-\\sqrt[3]{b}}{\\sqrt[3]{a^{2}}+\\sqrt[3]{ab}+\\sqrt[3]{b^{2}}}\\frac{a-b}{\\sqrt[3]{a^{2}}-\\sqrt[3]{b^{2}}}(1+\\frac{\\sqrt[3]{b}}{\\sqrt[3]{a}-\\sqrt[3]{b}}-\\frac{1+\\sqrt[3]{b}}{\\sqrt[3]{b}}):\\frac{\\sqrt[3]{b}(1+\\sqrt[3]{b})-\\sqrt[3]{a}}{\\sqrt[3]{b}}\\). Obliczyć wartość tego wyrażenia dla \\(a=7+5\\sqrt{2}\\) i \\(b=7-5\\sqrt{2}\\).\n	t	\N	11	\N	PR	Matematyka elementarna
477	-1	3	Rozwiąż równanie \\(\\cos{x}+\\cos{2x}+2\\cos{3x}+\\cos{4x}+\\cos{5x}=0\\).\n	t	\N	40	\N	PR	
138	-1	6	W kwadrat \\(ABCD\\) wpisano kwadrat \\(EFGH\\), który zajmuje <img src="/static/zbiorzadan/images/KursMatematyki_PolitechnikaWroclawska_1_2016_page0_images/image001.png" style="width: 29.772mm	t	\N	12	\N	PP	
130	-1	4	Podać wzór funkcji homograficznej, której wykres jest symetrycznym odbiciem wykresu funkcji \\(f(x)=\\frac{x-1}{x+1}\\) względem: \\[a)\\] prostej \\(x=1\\), \\[b)\\] punktu \\((0,0)\\), \\[c)\\] punktu \\((1,0)\\). Odpowiedź uzasadnić, przeprowadzając odpowiednie obliczenia. Sporządzić staranne wykresy wszystkich rozważanych funkcji.\n	t	\N	11	\N	PR	Funkcje wymierne
131	-1	5	W czworokącie wypukłym \\(ABCD\\), w którym \\(AB=1\\), \\(BC=2\\), \\(CD=4\\), \\(DA=3\\), cosinus kąta przy wierzchołku \\(B\\) jest równy \\(-\\frac{5}{7}\\). Wykazać, że czworokąt ten można wpisać w okrąg i obliczyć promień \\(R\\) tego okręgu. Sprawdzić, czy w rozważany czworokąt można wpisać okrąg. Jeżeli tak, to obliczyć jego promień.\n	t	\N	11	\N	PR	Planimetria
132	-1	6	W ostrosłupie prawidłowym czworokątnym, w którym wszystkie krawędzie są równe, poprowadzono płaszczyznę przechodzącą przez jedną z krawędzi podstawy oraz środki dwu przeciwległych do niej krawędzi bocznych. Obliczyć stosunek pola powierzchni przekroju do pola podstawy oraz stosunek objętości brył, na jakie płaszczyzna podzieliła ostrosłup.\n	t	\N	11	\N	PR	Stereometria
133	-1	1	Z miast \\(A\\) i \\(B\\) odległych o 700 km o tej samej godzinie wyruszają naprzeciw siebie (po dwu równoległych torach) dwa pociągi. Pociąg pospieszny, który wyjeżdża z \\(B\\), jedzie z prędkością o 35 km/h większą niż wyjeżdżający z \\(A\\) pociąg osobowy i przyjeżdża do \\(A\\) godzinę wcześniej niż pociąg osobowy osiąga \\(B\\). Z jakimi prędkościami poruszają się pociągi i w jakiej odległości od \\(A\\) się minęły.\n	t	\N	12	\N	PP	Matematyka elementarna
134	-1	2	Wyznaczyć dziedziny funkcji \\(f(x)=\\sqrt{\\frac{|x-1|-4}{x+2}}\\) oraz \\(g(x)=f(x+1)\\) i \\(h(x)=f(|x|)\\).\n	t	\N	12	\N	PP	Funkcje i jej właściwości
135	-1	3	Liczby \\(p=\\frac{?}{?}\\) i \\(q=\\frac{?}{?}\\) są miejscami zerowym trójmianu kwadratowego \\(f(x)=x^{2}+ax+b\\). Znaleźć najmniejszą i największą wartość \\(f(x)\\) na przedziale \\([0\\), 5\\(]\\).\n	t	\N	12	\N	PP	Funkcja kwadratowa
136	-1	4	Niech \\(f(x)=x^{2}\\) Narysować wykres funkcji \\(g(x)=|f(x-1)-4|\\) i określić liczbę rozwiązań równania \\(g(x)=m\\) w zależności o parametru \\(m\\).\n	t	\N	12	\N	PP	Funkcja kwadratowa
137	-1	5	Wykresy funkcji \\(f(x)=\\frac{m-1}{m+2}x+1\\) i \\(g(x)=\\frac{m+2}{m-3}x+1\\) są prostymi prostopadłymi. Obliczyć pole trójkąta ograniczonego wykresami tych funkcji i osią \\(Ox\\). Podać równanie okręgu opisanego na tym trójkącie. Sporządzić rysunek.\n	t	\N	12	\N	PP	Geometria analityczna
139	-1	1	Statek wyrusza (z biegiem rzeki) z przystani \\(A\\) do odległej o 140 km przystani \\(B\\). Po upływie 1 godziny wyrusza za nim łódź motorowa, dopędza statek w połowie drogi, po czym wraca do przystani \\(A\\) w tym samym momencie, w którym statek przybija do przystani \\(B\\). Wyznaczyć prędkość statku i prędkość łodzi w wodzie stojącej, wiedząc, że prędkość nurtu rzeki wynosi 4 km/godz.\n	t	\N	12	\N	PR	Matematyka elementarna
144	-1	6	Punkt \\(D\\) dzieli bok \\(AB\\) trójkąta równobocznego \\(ABC\\) w stosunku 2:1. Wyznaczyć stosunek długości promienia okręgu wpisanego w trójkąt \\(ADC\\) do długości promienia okręgu wpisanego w trójkąt \\(DBC\\).\n	t	\N	12	\N	PR	Planimetria
140	-1	2	Narysować wykres funkcji \\(f(x)=\\min\\{x^{3},\\frac{1}{x}\\}\\) i wyznaczyć jej dziedzinę oraz zbiór wartości. Podać wzór funkcji \\(h(x)\\), której wykres jest symetryczny do wykresu \\(f(x)\\) względem punktu \\((0,0)\\). Określić liczbę rozwiązań równania \\(f(x)=m\\) w zależności o parametru \\(m\\).\n	t	\N	12	\N	PR	Funkcje i jej właściwości
141	-1	3	Dla jakich wartości rzeczywistego parametru \\(p\\) równanie \\((p-1)x^{2}-(p+1)x-1=0\\) ma dwa pierwiastki tego samego znaku odległe co najwyżej o 1?\n	t	\N	12	\N	PR	Funkcja kwadratowa
142	-1	4	Wykresy funkcji \\(f(x)=(m-1)x+1\\) i \\(g(x)=\\frac{m}{m-1}x+b\\) są prostymi prostopadłymi, a pole trójkąta ograniczonego wykresami tych funkcji i osią \\(Ox\\) jest równe polu trójkąta ograniczonego tymi wykresami i osia \\(Oy\\). Wyznaczyć wzory funkcji figi obliczyć pole rozważanych trójkątów. Sporządzić rysunek.\n	t	\N	12	\N	PR	Geometria analityczna
143	-1	5	Obliczyć wartości \\(p=\\sqrt{19-8\\sqrt{3}}-\\sqrt[3]{26-15\\sqrt{3}}\\) i \\(q=\\frac{14\\log_{9}\\frac{1}{2}-\\log_{\\sqrt[3]{3}}\\frac{1}{4}}{\\log_{9}8+\\log_{\\sqrt{3}}\\frac{1}{2}}\\). Następnie wyznaczyć wzór i narysować wykres funkcji \\(f(x)=\\frac{ax+b}{cx+d}\\), wiedząc, że jest on symetryczny względem punktu \\((p,q)\\) i przechodzi przez punkt \\((0,0)\\).\n	t	\N	12	\N	PR	Funkcje wymierne
150	-1	6	Pokazać, że stosunek objętości stożka do objętości wpisanej w ten stożek kuli jest równy stosunkowi pola powierzchni całkowitej stożka do pola powierzchni kuli.\n	t	\N	13	\N	PP	Stereometria
149	-1	5	Znaleźć równania okręgów, które są styczne do obu osi układu współrzędnych oraz do prostej o równaniu \\(x+y=4\\). Wykonać rysunek.\n	t	\N	13	\N	PP	Geometria analityczna
148	-1	4	W zbiorze \\([0,2\\pi]\\) rozwiązać nierówność \\(\\sin{x}+\\sin{3x}\\geq\\cos{x}+\\cos{3x}\\).\n	t	\N	13	\N	PP	Trygonometria
147	-1	3	Wyznaczyć ciąg arytmetyczny o pierwszym wyrazie równym 2, wiedząc, że wyrazy: pierwszy, trzeci i jedenasty w podanej kolejności tworzą ciąg geometryczny. Ile pierwszych kolejnych wyrazów tego ciągu należy dodać, aby otrzymana suma była większa niż 1000?\n	t	\N	13	\N	PP	Ciągi
146	-1	2	Ścianki kostki do gry oznaczono liczbami: -3, -2, -1, 1, 2, 3. Jakie jest prawdopodobieństwo zdarzenia, że przy dwóch rzutach tą kostką: \\[a)\\] otrzymana suma liczb wynosi 2	t	\N	13	\N	PP	Rachunek prawdopodobieństwa
145	-1	1	Załóżmy, że mamy 12 kul białych i 9 kul czarnych. Na ile sposobów można na ustawić te kule w rzędzie w taki sposób, aby żadna czarna kula nie sąsiadowała z czarną? Na ile różnych sposobów można na ustawić te kule w rzędzie w taki sposób, aby żadna czarna kula nie sąsiadowała z czarną, jeśli kule białe ponumerujemy kolejnymi liczbami parzystymi, a kule czarne kolejnymi liczbami nieparzystymi?\n	t	\N	13	\N	PP	Kombinatoryka
152	-1	2	Rozpatrujemy zbiór ciągów \\(n\\)-elementowych o wyrazach -1, 0 lub 1. Obliczyć prawdopodobieństwo tego, że losowo wybrany ciąg ma co najwyżej jeden wyraz równy 0 i suma jego wyrazów równa jest 0.\n	t	\N	13	\N	PR	
153	-1	3	Suma wszystkich współczynników wielomianu \\(W_{n}(x)\\) jest równa \\(\\lim_{n\\rightarrow\\infty}(1+\\frac{1}{2}+\\frac{1}{4}+\\ldots+\\frac{1}{2^{n}})\\), a suma współczynników przy nieparzystych potęgach zmiennej równa jest sumie współczynników przy jej parzystych potęgach. Wyznaczyć resztę \\(R(x)\\) z dzielenia wielomianu \\(W_{n}(x)\\) przez dwumian \\(x^{2}-1\\).\n	t	\N	13	\N	PR	
154	-1	4	Rozwiązać nierówność \\(\\sin{x}+\\sin{2x}+\\sin{3x}\\geq\\cos{x}+\\cos{2x}+\\cos{3x}\\).\n	t	\N	13	\N	PR	
155	-1	5	Zbadać przebieg zmienności funkcji \\(f(x)=\\frac{4x^{2}-3x-1}{4x^{2}+1}\\) i naszkicować jej wykres. Na podstawie sporządzonego wykresu określić liczbę rozwiązań równania \\(f(x)=m\\) w zależności od parametru \\(m\\).\n	t	\N	13	\N	PR	
156	-1	6	W stożku pole podstawy, pole powierzchni kuli wpisanej w ten stożek i pole powierzchni bocznej stożka tworzą ciąg arytmetyczny. Wyznaczyć kąt nachylenia tworzącej stożka do płaszczyzny jego podstawy. Wykonać rysunek.\n	t	\N	13	\N	PR	
157	-1	1	Wykaż, ze dla dowolnej liczby naturalnej \\(n\\) liczba \\(\\frac{1}{3}n^{4}-\\frac{2}{3}n^{3}-\\frac{1}{3}n^{2}+\\frac{2}{3}n\\) jest podzielna przez 8.\n	t	\N	14	\N	PP	
158	-1	2	Podaj wzór funkcji kwadratowej, której wykres jest obrazem paraboli \\(f(x)=-4x(x-1)\\) w symetrii względem punktu \\((0,2)\\). Uzasadnij poprawność znalezionego wzoru i sporządź wykresy obu funkcji w jednym układzie współrzędnych.\n	t	\N	14	\N	PP	
159	-1	3	Wyznacz wielomian \\(f(x)=x^{3}+ax^{2}+bx+c\\) wiedząc, że jego pierwiastki są całkowite i tworzą ciąg geometryczny, a wykres przecina oś \\(Oy\\) w punkcie o współrzędnej \\(-8\\).\n	t	\N	14	\N	PP	
160	-1	4	Narysuj wykres funkcji \\(f(x)=\\frac{|x-1|}{|x|-1}\\). Wyznacz zbiór jej wartości i rozwiąż nierówność \\(|f(x)|\\leq 2\\).\n	t	\N	14	\N	PP	
161	-1	5	W zależności od parametru \\(a\\) określ liczbę rozwiązań układu \\begin{array}{l} x^{2}+y^{2}=1 |2x-y|=a \\end{array}. Podaj interpretację graficzną dla \\(a=\\sqrt{5}\\), \\(a=1\\) oraz \\(a=3\\).\n	t	\N	14	\N	PP	
162	-1	6	Ostrosłup prawidłowy czworokątny, w którym najmniejszy przekrój płaszczyzną zawierającą wysokość, prostopadłą do płaszczyzny podstawy, jest trójkątem równobocznym, przecięto płaszczyzną przechodzącą przez jedną z krawędzi podstawy prostopadłą do przeciwległej ściany bocznej. Wyznacz stosunek objętości brył, na jakie płaszczyzna ta podzieliła ostrosłup.\n	t	\N	14	\N	PP	
163	-1	1	Trzeci składnik rozwinięcia dwumianu \\((\\sqrt[3]{x^{2}}+\\frac{1}{\\sqrt{x}})^{n}\\) ma współczynnik równy 45. Wyznacz wszystkie składniki tego rozwinięcia, w których \\(x\\) występuje w potędze o wykładniku całkowitym.\n	t	\N	14	\N	PR	
164	-1	2	Wykres wielomianu \\(w(x)=x^{3}+ax^{2}+bx+c\\) przecina oś \\(Oy\\) w punkcie \\((0,-6)\\) i jest symetryczny względem punktu \\((-1,-2)\\). Wyznacz współczynniki \\(a\\), \\(b\\), \\(c\\) oraz pierwiastki tego wielomianu. Sporządź wykres.\n	t	\N	14	\N	PR	
165	-1	3	W zależności od parametru \\(m\\) określ liczbę rozwiązań równania \\(4^{x-1}-2^{x+1}\\log_{2}m+1=0\\).\n	t	\N	14	\N	PR	
166	-1	4	Narysuj wykres funkcji \\(f(x)=1-\\frac{\\log_{2}|x-1|}{1-\\log_{2}|x-1|}+(\\frac{\\log_{2}|x-1|}{1-\\log_{2}|x-1|})^{2}-(\\frac{\\log_{2}|x-1|}{1-\\log_{2}|x-1|})^{3}+…\\) gdzie prawa strona jest sumą nieskończonego ciągu geometrycznego.\n	t	\N	14	\N	PR	
167	-1	5	W zależności od parametru \\(a\\) określ liczbę rozwiązań układu \\begin{array}{l} xy-y=1 x^{2}+y^{2}-2x=a+1. \\end{array}. Podaj interpretację graficzną dla \\(a=0\\), \\(a=-1\\) oraz \\(a=7\\).\n	t	\N	14	\N	PR	
168	-1	6	Dany jest ostrosłup prawidłowy trójkątny, w którym krawędź boczna jest dwa razy dłuższa niż krawędź podstawy. Ostrosłup ten podzielono płaszczyzną przechodzącą przez krawędź podstawy na dwie bryły o tej samej objętości. Wyznacz stosunek objętości kul wpisanych w każdą z tych brył. Sporządź rysunek.\n	t	\N	14	\N	PR	
169	-1	1	Rozwiąż nierówność \\(1\\leq \\log_{\\frac{1}{3}}\\frac{1}{2x-1}<2\\).\n	t	\N	15	\N	PP	
170	-1	2	Średnia arytmetyczna czwartego, szóstego i dziesiątego wyrazu ciągu arytmetycznego \\((a_{n})\\), gdzie \\(n\\geq1\\), wynosi 14, a ciąg \\((a_{3},a_{5},a_{11})\\) jest geometryczny. Uzasadnij, że ciąg \\((a_{4},a_{6},a_{10})\\) również jest geometryczny.\n	t	\N	15	\N	PP	
171	-1	3	W ciągu arytmetycznym \\((a_{n})\\), określonym dla każdej liczby naturalnej \\(n\\geq1\\), mamy \\(a_{3}=0\\) oraz \\(a_{6}=7\\sin^{2}\\alpha\\), gdzie \\(tg\\alpha=3\\). Oblicz sumę 50 początkowych wyrazów tego ciągu, których indeksy są liczbami parzystymi.\n	t	\N	15	\N	PP	
172	-1	4	Bank oferuje kredyt, który należy spłacić jednorazowo wraz z odsetkami po roku. Jaki jest całkowity koszt tego kredytu, jeśli co miesiąc bank nalicza odsetki w wysokości 2% aktualnego zadłużenia, a dodatkowo w chwili przyznania kredytu dolicza prowizję w wysokości 3% pożyczanej kwoty? jaką kwotę trzeba będzie spłacić, jeśli pożyczymy 20000 zł? Prowizja naliczana jest jednorazowo i powiększa kwotę, którą należy spłacić.\n	t	\N	15	\N	PP	
173	-1	5	Zaznacz na osi liczbowej zbiór wszystkich wartości parametru \\(t\\), dla których funkcja \\(f(x)=(\\frac{2-t^{2}}{t-3})^{t-x}+1-t\\) jest malejąca. Naszkicuj wykres funkcji \\(f\\) dla największej całkowitej wartości \\(t\\) z wyznaczonego zbioru.\n	t	\N	15	\N	PP	
174	-1	6	Niech \\(c>0\\) i \\(c\\neq1\\). Wyznacz najmniejszą liczbę naturalną \\(m\\), dla której suma \\(m\\) początkowych wyrazów ciągu \\((a_{n})\\), \\(a_{n}=\\log_{2}c^{n}\\), przekracza liczbę \\(\\log_{2^{m}}c^{m^{2}}+16\\log_{4}c^{2}\\).\n	t	\N	15	\N	PP	
175	-1	1	Uzasadnij, że ciąg \\((a_{n})\\), którego n-ty wyraz dany jest wzorem \\(a_{n}=\\frac{1}{2^{1}+3^{1}}+\\frac{1}{2^{2}+3^{2}}+\\frac{1}{2^{3}+3^{3}}+\\cdots+\\frac{1}{2^{n}+3^{n}}\\), jest ograniczony.\n	t	\N	15	\N	PR	
176	-1	2	Wyznacz dziedzinę \\(D_{f}\\) funkcji \\(f(x)=\\log_{10+3x-x^{2}}(8-\\frac{7}{1-x})\\).\n	t	\N	15	\N	PR	
177	-1	3	Niech \\(c>0\\). Zbadaj monotoniczność oraz oblicz sumę wszystkich wyrazów nieskończonego ciągu \\((a_{n})\\), gdzie \\(a_{n}=\\log_{3^{3^{n}}}c\\) dla każdego \\(n\\geq1\\). Ustal, dla jakiej wartości parametru \\(c\\) suma ta jest nie mniejsza od liczby \\(\\log_{9}(c^{2}-2)\\).\n	t	\N	15	\N	PR	
178	-1	4	Rozwiąż nierówność \\(\\sqrt{\\log_{\\sqrt{x}}(x+2)}>\\frac{1}{\\log_{\\sqrt{x+2}}\\sqrt{x}}\\).\n	t	\N	15	\N	PR	
179	-1	5	Określ ilość rozwiązań równania \\(|2^{x-1}-1|=m\\cdot 2^{x+1}\\) w zależności od wartości parametru \\(m\\).\n	t	\N	15	\N	PR	
180	-1	6	Opisz metodę konstrukcji i starannie narysuj wykres funkcji \\(f(x)=2+\\log_{2}\\frac{1}{2x}\\). Następnie narysuj obraz tej krzywej w symetrii względem prostej \\(x=y\\). Wyprowadź wzór funkcji, której wykresem jest powstała w ten sposób krzywa.\n	t	\N	15	\N	PR	
181	-1	1	W trójkącie \\(ABC\\) wpisanym w okrąg o środku \\(S\\) i promieniu \\(r\\) dany jest kąt \\(\\alpha=\\angle ABC\\). Oblicz pole trójkąta \\(ASC\\).\n	t	\N	16	\N	PP	
182	-1	2	Rozwiąż równanie \\(|\\sinx|+|\\cosx|=\\frac{\\sqrt{6}}{2}\\).\n	t	\N	16	\N	PP	
183	-1	3	Dana jest funkcja \\(f(x)=\\cos(2x-\\frac{\\pi}{6})\\). Narysuj starannie wykres funkcji \\(f(x)\\). Rozwiąż nierówność \\((f(x))^{2}\\geq\\frac{1}{2}\\).\n	t	\N	16	\N	PP	
184	-1	4	Niech \\(\\alpha\\), \\(\\beta\\) i \\(\\gamma\\) oznaczają kąty pewnego trójkąta. Wykaż, że jeżeli \\(\\frac{\\sin\\alpha}{\\sin\\beta}=2\\cos\\gamma\\), to ten trójkąt jest równoramienny.\n	t	\N	16	\N	PP	
185	-1	5	Na okręgu o promieniu \\(r\\) opisano trapez prostokątny, którego najkrótszy bok jest równy \\(\\frac{4}{3}r\\). Oblicz pole tego trapezu.\n	t	\N	16	\N	PP	
186	-1	6	Pewną górę widać najpierw pod kątem \\(\\alpha\\) (jest to kąt między linią poziomą, a odcinkiem łączącym szczyt z obserwatorem), a po przybliżeniu się do niej od metrów widać ją pod nieco większym kątem \\(\\beta\\). Wyznaczyć względną wysokość tej góry. Wykonać obliczenia dla wartości \\(\\alpha=41^{\\mathrm{o}}\\), \\(\\beta=45^{\\mathrm{o}}\\), \\(d=90m\\).\n	t	\N	16	\N	PP	
187	-1	1	Udowodnij, że \\(\\cos4x=1-8\\cos^{2}x+8\\cos^{4}x\\). Wykorzystując ten wzór, znajdź wartość \\(\\cos\\frac{\\pi}{24}\\).\n	t	\N	16	\N	PR	
188	-1	2	Wykaż, że dla każdego trójkąta zachodzi nierówność \\(\\frac{1}{2r}<\\frac{1}{h_{a}}+\\frac{1}{h_{b}}<\\frac{1}{r}\\), gdzie \\(h_{a}\\), \\(h_{b}\\) są wysokościami, a \\(r\\) promieniem okręgu wpisanego w ten trójkąt.\n	t	\N	16	\N	PR	
189	-1	3	Dana jest funkcja \\(f(x)=\\sin4xctg2x-\\frac{1}{2}\\). Rozwiąż nierówność \\(f(x)\\geq1\\) i narysuj staranny wykres \\(f(x)\\).\n	t	\N	16	\N	PR	
190	-1	4	Przekątne trapezu dzielą ten trapez na cztery trójkąty. Pola tych dwóch trójkątów, których bokami są podstawy trapezu równe są \\(S_{a}\\) i \\(S_{b}\\). Oblicz pole tego trapezu.\n	t	\N	16	\N	PR	
191	-1	5	Manipulator robota składa się z dwóch ramion o długościach \\(l_{1}\\) i \\(l_{2}\\), połączonych przegubem. Pierwsze ramię umieszczono w początku układu współrzędnych. Niech \\(\\alpha\\) oznacza kąt miedzy pierwszym ramieniem i osią \\(Ox\\), a \\(\\beta\\) - kąt między drugim ramieniem i kierunkiem pierwszego ramienia (patrz rysunek). Wyznacz współrzędne końca drugiego ramienia (punktu \\(P\\)) w zależności od kątów \\(\\alpha\\) i \\(\\beta\\). Sprawdź, czy punkt \\(P\\) może przesunąć się do punktów \\(S(2,1)\\) oraz \\(Q(3,-1)\\) jeżeli \\(l_{1}=3\\), \\(l_{2}=2\\) oraz ruchy manipulatora ograniczone są tak że, \\(\\alpha\\), \\(\\beta\\in [-\\frac{2\\pi}{3},\\frac{2\\pi}{3}]\\). Jeżeli tak, to wskaz konkretne kąty \\(\\alpha\\) i \\(\\beta\\) (podaj przybliżenia, jeśli nie można określic dokładnej ich wartości), a jeśli nie, to uzasadnij dlaczego. <img src="/static/zbiorzadan/images/KursMatematyki_PolitechnikaWroclawska_3_2022_page1_images/image001.png" style="width: 60.048mm	t	\N	16	\N	PR	
192	-1	6	Okrąg o promieniu \\(r\\) toczy się wewnętrznie bez poślizgu po okręgu o promieniu \\(2r\\). Jaką linię zakreśla ustalony (dowolnie wybrany) punkt \\(P\\) ruchomego okręgu? Wskazówka: rozważ dwa różne położenia mniejszego okręgu i sprawdź gdzie przesuwa się punkt styczności, skorzystaj ze związku między długością łuku, kątem środkowym opartym na tym fuku i promieniem okręgu.\n	t	\N	16	\N	PR	
193	-1	1	Współczynniki \\(a\\), \\(b\\) trójmianu kwadratowego \\(x^{2}-2ax+b\\) oraz pierwiastki tego trójmianu, napisane w odpowiedniej kolejności, są czterema początkowymi wyrazami pewnego ciągu arytmetycznego. Dla \\(a=2\\) obliczyć różnicę ciągu, współczynnik \\(b\\) oraz pierwiastki trójmianu.\n	t	\N	17	\N	PP	
194	-1	2	Kwadrat o boku \\(a\\) zgięto wzdłuż jednej z przekątnych tak, aby odległość pozostałych wierzchołków była równa połowie długości przekątnej kwadratu. W tak powstały czworościan wpisano dwie identyczne, wzajemnie styczne kule. Obliczyć promień tych kul.\n	t	\N	17	\N	PP	
195	-1	3	Trzy czerwone, trzy żółte i jedna zieloną kredkę włożono w przypadkowy sposób do pudelka. Obliczyć prawdopodobieństwo tego, że żadne dwie kredki tego samego koloru nie beda leżały obok siebie.\n	t	\N	17	\N	PP	
196	-1	4	Wyznaczyć dziedzinę funkcji \\(f(x)=\\sqrt{\\frac{\\log_{2}x}{1-\\log_{2}x}}\\). Uzasadnić, że \\(f(x)\\) jest rosnąca. Korzystając z tego faktu, określić zbiór wartości funkcji \\(f(x)\\).\n	t	\N	17	\N	PP	
197	-1	5	W ostrosłup prawidłowy czworokątny wpisano prostopadłościan prosty o podstawie kwadratowej w ten sposób, że wierzchołki jego górnej podstawy leż a w środkach ciężkości ścian bocznych ostrosłupa. Pole powierzchni całkowitej prostopadłościanu stanowi trzecia cześć pola powierzchni całkowitej ostrosłupa. Obliczyć tangens kata nachylenia krawędzi bocznej ostrosłupa do podstawy.\n	t	\N	17	\N	PP	
198	-1	6	Rozwiązać układ równań \\begin{array}{l} x^{2}+y^{2}=2 \\frac{1}{x}+\\frac{1}{y}=2 \\end{array}. Podać interpretacje geometryczna tego układu i sporządzić rysunek.\n	t	\N	17	\N	PP	
199	-1	1	Na każdym z trzech drutów linii elektrycznej wysokiego napięcia siedzi po pięć wróbli. W pewnej chwili odfruneło przypadkowych sześć wróbli. Obliczyć prawdopodobieństwo tego, że na co najmniej dwóch drutach pozostała taka sama liczba ptaków.\n	t	\N	17	\N	PR	
200	-1	2	Dolna cześć namiotu ma kształt walca o wysokości \\(h=2m\\), a górna jest stożkiem o tworzącej \\(l=\\sqrt{15}m\\) i tym samym promieniu, co cześć dolna. Wyznaczyć pozostałe parametry namiotu tak, aby jego objętość była największa. Sporządzić rysunek.\n	t	\N	17	\N	PR	
201	-1	3	Z pudełka zawierającego 10 klocków ponumerowanych cyframi od 0 do 9 wylosowano dwa klocki i ustawiono obok siebie w przypadkowej kolejności, tworząc w ten sposób liczbę \\(k\\) (ustawienie 03 rozumiemy jako liczbę 3). Następnie wylosowano trzeci klocek z pozostałych i ustawiono go za tamtymi, gdy suma cyfr liczby \\(k\\) była mniejsza niż 10, lub przed tamtymi, w przeciwnym wypadku. Obliczyć prawdopodobieństwo tego, że otrzymana liczba jest większa od 500. Wsk. Użyć wzoru na prawdopodobieństwo całkowite.\n	t	\N	17	\N	PR	
202	-1	4	Stosując zasadę indukcji matematycznej, udowodnić tożsamość \\(\\sin^{2}\\alpha+\\sin^{2}3\\alpha+…+\\sin^{2}(2n-1)\\alpha=\\frac{n}{2}-\\frac{\\sin4n\\alpha}{4\\sin2\\alpha}\\), \\(n\\geq1\\), gdzie \\(\\alpha\\neq k\\frac{\\pi}{2}\\), \\(k\\) całkowite.\n	t	\N	17	\N	PR	
203	-1	5	Znaleźć równanie stycznej 1 do wykresu funkcji \\(f(x)=\\frac{1}{x}+x^{2}\\) w punkcie, w którym przecina on oś \\(Ox\\). Wyznaczyć wszystkie styczne, które są równolegle do prostej \\(l\\). Znaleźć punkty wspólne tych stycznych z wykresem funkcji. Rozwiązanie zilustrować odpowiednim rysunkiem.\n	t	\N	17	\N	PR	
232	-1	4	Narysować wykres funkcji \\(f(x)=?\\). Posługując się wykresem, podać zbiór wartości funkcji \\(f\\) oraz jej najmniejszą i największą wartość na przedziałach \\([-1, 2]\\) oraz \\([0,3]\\).\n	t	\N	20	\N	PP	
640	-1	4	Dla jakich wartości parametru \\(a\\) nierówność \\((a^{2}-1)x^{2}+2(a-1)x+2>0\\) jest spełniona dla każdego \\(x\\in \\mathbb{R}\\)?\n	t	\N	54	\N	PP	
204	-1	6	Krawędź podstawy graniastosłupa trójkątnego prawidłowego ma długość \\(a\\). Oznaczmy przez \\(2\\alpha\\) kąt miedzy przekątnymi ścian bocznych wychodzącymi z jednego wierzchołka. Graniastosłup przecięto na dwie części płaszczyzną przechodząca przez krawędź dolnej podstawy i przeciwległy wierzchołek górnej podstawy. Obliczyć tangens kata \\(\\alpha\\), dla którego w większa cześć graniastosłupa można wpisać kule. Dla znalezionego kata \\(\\alpha\\), obliczyć promień kuli wpisanej w mniejsza cześć graniastosłupa.\n	t	\N	17	\N	PR	
205	-1	1	Wyznacz dziedzinę funkcji \\(f(x)=\\log_{4-x^{2}}(2^{x}+2^{1-x}-3)\\).\n	t	\N	18	\N	PP	
206	-1	2	W przedziale \\([0,2\\pi]\\) rozwiąż nierówność \\(\\cos^{2}2x+\\sin^{2}x\\leq \\frac{1}{2}\\).\n	t	\N	18	\N	PP	
207	-1	3	Obwód trójkąta równoramiennego jest równy 8. Jaka powinna być długość boków tego trójkąta, by objętość bryły powstałej z jego obrotu dokoła podstawy była największa?\n	t	\N	18	\N	PP	
208	-1	4	Rozwiąż równanie \\(\\sqrt{1-2\\cdot 3^{x}+9^{x}}=3^{2x-1}-7\\cdot 3^{x-1}+2\\).\n	t	\N	18	\N	PP	
209	-1	5	Punkt \\(B(1,1)\\) jest wierzchołkiem kąta prostego w trójkącie prostokątnym o polu 2, wpisanym w okrąg \\(x^{2}+y^{2}+2x-2y-2=0\\). Znajdź współrzędne pozostałych wierzchołków tego trójkąta. Rozwiązanie zilustruj starannym rysunkiem.\n	t	\N	18	\N	PP	
210	-1	6	Sporzqdź staranny wykres funkcji \\(f(x)=?\\), i na jego podstawie wyznacz zbiór wartości tej funkcji. Rozwiąż nierówność \\(f^{2}(x)\\leq 1\\) i zaznacz zbiór jej rozwiązań na osi \\(Ox\\).\n	t	\N	18	\N	PP	
211	-1	1	Narysuj staranny wykres funkcji \\(f(x)=|2^{|x-1|}-4|-2\\) i opisz dokładnie sposób jego konstrukcji. Korzystając z rysunku, określ ilość rozwiązań równania \\(f(x)=m\\) w zależności od parametru \\(m\\).\n	t	\N	18	\N	PR	
212	-1	2	Rozwiąż równanie \\(2\\cos2x+1=\\sqrt{2\\cos^{2}2x-6\\sin^{2}x+5}\\).\n	t	\N	18	\N	PR	
213	-1	3	W trójkącie prostokątnym przeciwprostokątna ma długość 3. Jakie powinny być długości przyprostokątnych, aby objętość bryły powstałej z jego obrotu dokoła jednej z nich była największa?\n	t	\N	18	\N	PR	
214	-1	4	Rozwiąż nierówność \\(2^{x}(1+\\frac{\\sqrt{3}}{2})^{\\frac{1}{x}}-(2-\\sqrt{3})^{-x}\\geq0\\).\n	t	\N	18	\N	PR	
215	-1	5	Znajdź równania prostych stycznych do okręgu \\(x^{2}+y^{2}=25\\) przechodzących przez punkt \\(S(6,8)\\). Wyznacz współrzędne punktów styczności \\(A\\), \\(B\\) i oblicz pole obszaru ograniczonego odcinkami \\(AS\\), \\(BS\\) oraz większym fukiem \\(AB\\). Wykonaj staranny rysunek.\n	t	\N	18	\N	PR	
216	-1	6	Zbadaj przebieg zmienności i narysuj staranny wykres funkcji \\(f(x)=\\frac{3x-2}{(x-1)^{2}}\\).\n	t	\N	18	\N	PR	
217	-1	1	Pierwszym wyrazem ciągu arytmetycznego jest \\(a_{1}=2017\\), a jego różnica jest rozwiązaniem równania \\(\\sqrt{2-x}-x=10\\). Obliczyć sumę wszystkich dodatnich wyrazów tego ciągu.\n	t	\N	19	\N	PP	
218	-1	2	Spośród dwucyfrowych liczb nieparzystych mniejszych od 50 wylosowano bez zwracania dwie. Obliczyć prawdopodobieństwo tego, że obie wylosowane liczby są pierwsze oraz prawdopodobieństwo tego, że iloczyn wylosowanych liczb nie jest podzielny przez 15.\n	t	\N	19	\N	PP	
219	-1	3	Uzasadnić, że ciąg o wyrazach \\(a_{n}=\\frac{2^{n}+2^{n+1}+..+2^{2n}}{2^{2}+2^{4}+\\ldots+2^{2n}}\\), \\(n\\geq1\\), nie jest rosnący oraz, że jest rosnący, poczynając od \\(n=2\\).\n	t	\N	19	\N	PP	
220	-1	4	Znaleźć wszystkie wartości parametru rzeczywistego \\(m\\), dla których proste o równaniach \\(x-my+2m=0\\), \\(2mx+4y+1=0\\), \\(mx-y-3m-1=0\\) są parami różne i przecinają się w jednym punkcie. Sporządzić odpowiedni rysunek dla najmniejszej ze znalezionych wartości tego parametru.\n	t	\N	19	\N	PP	
221	-1	5	W ostrosłupie prawidłowym czworokątnym dana jest odległość \\(d\\) środka podstawy od krawędzi bocznej oraz kąt \\(2\\alpha\\) miedzy sąsiednimi ścianami bocznymi. Obliczyć objętość ostrosłupa.\n	t	\N	19	\N	PP	
222	-1	6	Podstawa \\(AB\\) trójkąta równoramiennego \\(ABC\\) jest krótsza od ramion. Wysokości \\(AD\\) i \\(CE\\) dzielą trójkąt na cztery części, z których dwie są trójkątami prostokątnymi o polach równych 9 oraz 2. Obliczyć pola pozostałych części oraz obwód trójkąta.\n	t	\N	19	\N	PP	
223	-1	1	Turysta zabłądził w lesie zajmującym obszar (w km) \\(D=\\{(x,y):x^{2}+y^{2}\\leq 2y+3,-2y\\leq x\\leq y\\}\\). Wskazać mu najkrótsza drogę wyjścia z lasu, jeśli znajduje się w punkcie \\(P(-\\frac{1}{4},\\frac{3}{2})\\). Ile minut będzie trwała wędrówka, jeśli idzie z prędkością 4 km/h?\n	t	\N	19	\N	PR	
224	-1	2	Korzystając z zasady indukcji matematycznej, udowodnić prawdziwość nierówności \\(1^{5}+2^{5}+…+n^{5}<\\frac{n^{3}(n+1)^{3}}{6},n\\geq1\\).\n	t	\N	19	\N	PR	
225	-1	3	Kubuś zaobserwował, że w pewnej chwili w trzypiętrowej kamienicy po drugiej stronie ulicy pali się światło w 10 oknach. Na każdej kondygnacji kamienicy znajdują się 4 okna. Zakładamy, że okna zapalają siei gasną losowo. Obliczyć prawdopodobieństwo tego, że zarówno na drugim jak i na trzecim pietrze kamienicy świeca się co najmniej dwa okna. Wsk. Skorzystać ze wzoru \\(P(A\\cup B)=P(A)+P(B)-P(A\\cap B)\\).\n	t	\N	19	\N	PR	
226	-1	4	Podstawa graniastosłupa prostego o wysokości \\(h=2\\)jest trójkąt, w którym tangens kata przy wierzchołku \\(A\\) wynosi \\(-\\sqrt{2}\\). Przekątne \\(e\\), \\(f\\) sąsiednich ścian bocznych, wychodzące z wierzchołka \\(A\\), są do siebie prostopadle, a liczby \\(h\\), \\(e\\), \\(f\\) są kolejnymi wyrazami pewnego ciągu geometrycznego. Obliczyć objętość graniastosłupa.\n	t	\N	19	\N	PR	
227	-1	5	Znaleźć dziedzinę i zbiór wartości funkcji \\(f(x)=\\sqrt{\\log_{2}\\frac{1}{\\cos{x}+\\sqrt{3}\\sin{x}}}\\).\n	t	\N	19	\N	PR	
228	-1	6	Kąt płaski przy wierzchołku \\(D\\) ostrosłupa prawidłowego trójkątnego o podstawie \\(ABC\\) jest równy \\(\\alpha\\). Na krawędzi \\(BD\\) wybrano punkt \\(E\\) taki, że \\(\\triangle ACE\\) jest trójkątem równobocznym. Znaleźć stosunek \\(k(\\alpha)\\) objętości ostrosłupa \\(ABCE\\) do objętości ostrosłupa \\(ACED\\) w zależności od kata \\(\\alpha\\). Sporządzić wykres funkcji \\(k(\\alpha)\\).\n	t	\N	19	\N	PR	
229	-1	1	Rozwiązać równanie \\(\\frac{\\sin{x}}{2\\cos^{2}2x-1}=1\\).\n	t	\N	20	\N	PP	
230	-1	2	Niech \\(f(x)=\\sqrt{x}\\). Podać wzór funkcji: \\[a)\\] \\(g(x)\\), której wykres jest symetrycznym obrazem wykresu \\(f(x)\\) względem prostej \\(x=1\\). \\[b)\\] \\(h(x)\\), której wykres jest symetrycznym obrazem wykresu \\(f(x)\\) względem punktu \\((0,-1)\\). Narysować wykresy wszystkich funkcji. Uzasadnić, wykonując odpowiednie obliczenia, że znalezione funkcje spełniają podane warunki.\n	t	\N	20	\N	PP	
231	-1	3	Wykazać, że dla dowolnego \\(n\\geq2\\) liczba \\(\\frac{1}{4}100^{n}+4\\cdot 10^{n}+16\\) jest kwadratem liczby naturalnej i jest podzielna przez 81.\n	t	\N	20	\N	PP	
360	-1	6	Wyznaczyć równanie zbioru wszystkich środków tych cięciw paraboli \\(y=x^{2}\\), które zaczynają się w punkcie \\(A(1,1)\\). Rozwiązanie zilustrować rysunkiem.\n	t	\N	30	\N	PR	
233	-1	5	Znaleźć równanie stycznej 1 do paraboli \\(y=x^{2}\\) równoległej do prostej \\(y=2x-3\\). Wyznaczyć punkt, w którym styczna do tej paraboli jest prostopadła do znalezionej prostej \\(l\\). Sporządzić rysunek.\n	t	\N	20	\N	PP	
234	-1	6	Rozwiązać układ równań \\begin{array}{l} x^{2}+y^{2}=8 \\frac{1}{x}+\\frac{1}{y}=1 \\end{array} i podać jego interpretację geometryczną.\n	t	\N	20	\N	PP	
235	-1	1	Niech \\(f(x)=\\frac{x-1}{x+2}\\). Podać i uzasadnić wzór funkcji, której wykres jest obrazem symetrycznym wykresu funkcji \\(f(x)\\) względem prostej \\(x=2\\). Sporządzić wykresy obu funkcji w jednym układzie współrzędnych.\n	t	\N	20	\N	PR	
236	-1	2	Stosując zasadę indukcji matematycznej, udowodnić prawdziwość wzoru \\(\\left(\\begin{array}{l} 2 2 \\end{array}\\right)+\\left(\\begin{array}{l} 4 2 \\end{array}\\right)+\\cdots+\\left(\\begin{array}{l}2n2\\end{array}\\right)=\\frac{n(n+1)(4n1)}{6}\\) dla \\(n\\geq1\\).\n	t	\N	20	\N	PR	
237	-1	3	Wykorzystując metody rachunku różniczkowego znaleźć zbiór wartości funkcji \\(f(x)=x^{3}-3x^{2}-9x+3\\) na przedziale \\([-1,4]\\). Wyznaczyć przedziały o długości 1, w których znajdują się miejsca zerowe tej funkcji i sporządzić jej wykres.\n	t	\N	20	\N	PR	
238	-1	4	Znaleźć równanie stycznej 1 do wykresu funkcji \\(f(x)=\\frac{2}{x}+x^{2}\\) w punkcie przecięcia z prostą \\(y=x\\). Wyznaczyć wszystkie styczne równolegle do znalezionej prostej \\(l\\).\n	t	\N	20	\N	PR	
239	-1	5	Narysować wykres funkcji \\(f(x)=1+\\frac{\\sin{x}}{1+\\sin{x}}+(\\frac{\\sin{x}}{1+\\sin{x}})^{2}+(\\frac{\\sin{x}}{1+\\sin{x}})^{3}+(\\frac{\\sin{x}}{1+\\sin{x}})^{4}+\\ldots\\), gdzie prawa strona jest suma wszystkich wyrazów nieskończonego ciągu geometrycznego. Rozwiązać nierówność \\(f(x)>\\sqrt{3}\\cos{x}\\).\n	t	\N	20	\N	PR	
240	-1	6	Wyznaczyć liczbę rozwiązań układu równań \\begin{array}{l} x^{2}+y^{2}=2y, y=x^{2}-p. \\end{array} w zależności od parametru \\(p\\). Podać interpretacje geometryczną układu.\n	t	\N	20	\N	PR	
241	-1	1	Narysuj staranny wykres funkcji \\(f(x)=|\\sin{x}|\\cos{x}\\) i rozwiąż nierówność \\(|f(x)|\\leq \\frac{1}{4}\\).\n	t	\N	21	\N	PP	
242	-1	2	Wyznacz dziedzinę funkcji \\(f(x)=\\log_{2}(\\frac{3x-5}{x-2}+1)\\) i sprawdź dla jakich argumentów funkcja ta przyjmuje wartości dodatnie.\n	t	\N	21	\N	PP	
243	-1	3	W trójkącie dane są długości dwóch boków \\(a\\) i \\(b\\). Oblicz długość trzeciego boku, wiedząc, że suma wysokości poprowadzonych do boków \\(a\\) i \\(b\\) jest równa trzeciej wysokości.\n	t	\N	21	\N	PP	
245	-1	5	Na krzywej o równaniu \\(y=\\sqrt{2x}\\) znajdź miejsce, które położone jest najbliżej punktu \\(P(3,0)\\). Sporządź rysunek.\n	t	\N	21	\N	PP	
246	-1	6	Dla jakich wartości parametru \\(m\\) pierwiastkiem wielomianu \\(w(x)=2x^{3}-7x^{2}-(m^{2}-12)x+m^{2}+m-6\\) jest \\(x=3\\)? Dla znalezionych wartości \\(m\\) wyznacz pozostałe pierwiastki \\(w(x)\\).\n	t	\N	21	\N	PP	
247	-1	1	Dany jest trójkąt o wierzchołkach \\(A(-1,3)\\), \\(B(-4,-1)\\), i \\(C(3,0)\\). Znajdź kąt pomiędzy wysokością tego trójkąta poprowadzoną z wierzchołka \\(A\\) i bokiem \\(AC\\). Oblicz pole tego trójkąta.\n	t	\N	21	\N	PR	
249	-1	3	Zaznacz na płaszczyźnie zbiór punktów, których współrzędne spełniają nierówność \\(\\log_{y}(\\log_{x}y)>0\\).\n	t	\N	21	\N	PR	
250	-1	4	Reszta z dzielenia wielomianu \\(w(x)=x^{4}+ax^{3}+(b+2)x^{2}+bx+a-3\\) przez trójmian \\(x^{2}+2x-8\\) wynosi \\(-5x+40\\). Wyznacz wartość parametrów \\(a\\) i \\(b\\) oraz rozwiąż nierówność \\(w(x-1)\\geq w(x+1)\\).\n	t	\N	21	\N	PR	
251	-1	5	Dany jest trapez \\(ABCD\\) o podstawach \\(AB\\) i \\(CD\\), w którym \\(\\angle ABC=90^{\\mathrm{o}}\\). Dwusieczna kąta \\(BAD\\) przecina odcinek \\(BC\\) w punkcie \\(P\\). Niech \\(Q\\) będzie rzutem prostopadłym punktu \\(P\\) na prostą \\(AD\\). Wykaż, że jeżeli pole czworokąta \\(APCD\\) jest równe polu trójkąta \\(ABP\\), to \\(|PC|=|DQ|\\).\n	t	\N	21	\N	PR	
252	-1	6	Boisko do gry w piłkę ręczną jest prostokątem o długości 40m i szerokości 20m. Bramki mają szerokość 3m i stoją dokładnie na środku linii bramkowej (krótszego boku prostokąta). Z jakiego punktu linii bocznej (dłuższego boku prostokąta) widać bramkę pod największym możliwym kątem?\n	t	\N	21	\N	PR	
253	-1	1	Rozwiąż równanie \\(\\sin2x=\\cos^{4}\\frac{x}{2}-sin^{4}\\frac{x}{2}\\).\n	t	\N	22	\N	PP	
254	-1	2	Rozwiąż nierówność \\(\\sqrt{4-x}\\leq x+8\\).\n	t	\N	22	\N	PP	
255	-1	3	W ciągu geometrycznym \\((a_{n})\\) zachodzą równości: \\(a_{4}-a_{2}=18\\) oraz \\(a_{5}-a_{3}=36\\). Wyznacz \\(a_{3}\\).\n	t	\N	22	\N	PP	
256	-1	4	Dla jakich wartości parametru \\(m\\) rozwiązaniem układu \\begin{array}{l} 2x+3y=4 4x+my=2m \\end{array} jest para liczb dodatnich?\n	t	\N	22	\N	PP	
257	-1	5	Przekrój poprzeczny dwuspadowego dachu pewnego budynku jest czworokątem \\(ABCD\\), w którym kąt \\(DAB\\) jest kątem prostym, \\(|AB|=9m\\), a obie (nierówne) połacie dachu, czyli odcinki \\(BC\\) i \\(CD\\), są nachylone pod kątem \\(40^{\\mathrm{o}}\\) do poziomu (odcinka \\(AB\\)). Oblicz łączną długość (tzn. \\(|BC|+|CD|\\)) obu połaci dachu.\n	t	\N	22	\N	PP	
258	-1	6	Wykaż, że miara kąta ostrego w rombie wynosi \\(30^{\\mathrm{o}}\\) wtedy i tylko wtedy, gdy długość jego boku jest równa średniej geometrycznej jego przekątnych.\n	t	\N	22	\N	PP	
259	-1	1	Rozwiąż równanie \\(tgxtg(x+1)=1\\).\n	t	\N	22	\N	PR	
260	-1	2	Rozwiąż nierówność \\(2-3x>\\sqrt{\\frac{x+4}{1-x}}\\).\n	t	\N	22	\N	PR	
261	-1	3	Huragan znad Oceanu Atlantyckiego zbliża się do wybrzeża Florydy. Jeżeli jego centrum znajdzie się w odległości mniejszej niż 60 km od centrum Miami, to miasto dozna poważnych zniszczeń. Meteorolog modeluje centrum miasta jako ustalony punkt o współrzędnych \\((240, 200)\\), gdzie jednostką układu współrzędnych jest kilometr. Przyjmuje natomiast, że centrum huraganu porusza się po prostej o równaniu \\(y=kx+20\\). Dla jakich wartości parametru \\(k\\) miasto nie dozna poważnych zniszczeń?\n	t	\N	22	\N	PR	
262	-1	4	Zbadaj liczbę rozwiązań równania \\(\\frac{x^2+1}{a^{2}x-2a}-\\frac{1}{2-ax}=\\frac{x}{a}\\) w zależności od parametru \\(a\\neq0\\).\n	t	\N	22	\N	PR	
263	-1	5	Pole rombu jest równe \\(S\\), a suma długości jego przekątnych wynosi \\(m\\). Wyznacz długość jego boku oraz cosinus kąta ostrego. Jakie warunki muszą spełniać parametry \\(m\\) i \\(S\\) żeby zadanie miało rozwiązanie?\n	t	\N	22	\N	PR	
264	-1	6	Dany jest niestały ciąg arytmetyczny \\((a_{n})\\) taki, że iloraz \\(\\frac{a_{1}+a_{2}+\\ldots+a_{n}}{a_{n+1}+a_{n+2}+\\ldots+a_{2n}}\\) jest liczbą stałą \\(C\\). Wyznacz wartość tej stalej oraz różnicę tego ciągu, jeśli wiadomo, że jego pierwszym wyrazem jest \\(a_{1}=p\\).\n	t	\N	22	\N	PR	
248	-1	2	Narysuj wykres funkcji \\(f(x)=\\sin^{2}x-\\cos2x\\) i rozwiąż nierówność \\(f(x)\\geq-\\frac{1}{4}\\).\n	t	\N	21	\N	PR	Funkcje trygonometryczne
265	-1	1	Niemieckie przepisy drogowe wymagają zachowania bezpiecznego odstępu między poruszającymi się w tym samym kierunku pojazdami. Zalecane jest przy tym zachowanie zasady,,połowa licznika jeżeli dwa pojazdy jadą z prędkością \\(x\\) km/h, to odstęp między nimi powinien wynosić przynajmniej \\(x/2\\) metrów. Jaki odstęp czasowy powinien zatem dzielić te dwa pojazdy? Przyjmując, że dla samochodu jadącego z prędkością \\(v\\) m/s droga hamowania wynosi \\(s_{h}=\\frac{v^{2}}{2a}\\) metrów (gdzie \\(a\\) jest stałym współczynnikiem hamowania), sprawdź przy jakiej prędkości \\(x\\) km/h dojdzie do wypadku, jeżeli oba pojazdy jechały z minimalnym zalecanym odstępem, pierwszy zatrzymał się nagle (przyjmij \\(a=10\\)), a drugi zaczął hamować jedną sekundę później i z siłą taka, że \\(a=7\\).\n	t	\N	23	\N	PP	
266	-1	2	Jakimi kątami mogą być \\(\\alpha\\) i \\(2\\alpha\\), jeżeli wiadomo, że \\(\\alpha\\) jest kątem ostrym oraz \\(\\sin\\alpha+\\cos\\alpha=\\frac{\\sqrt{6}}{2}\\).\n	t	\N	23	\N	PP	
267	-1	3	Rozważmy funkcję \\(f(x)=x^{2}-(a+2)x+3(a-1)\\). Dla jakich wartości parametru \\(a\\): \\[(i)\\] cały wykres \\(f(x)\\) leży ponad prostą \\(y=-1\\)? \\[(ii)\\] oba miejsca zerowe funkcji \\(f(x)\\) są większe od 2?\n	t	\N	23	\N	PP	
268	-1	4	Rozwiąż nierówność \\(x\\leq1+\\sqrt{2+x}\\).\n	t	\N	23	\N	PP	
269	-1	5	Narysuj starannie zbiór \\(A\\cap B\\), gdzie \\(A=\\{(x,y):2|x|+|y|\\leq 2\\}\\), \\(B=\\{(x,y):y^{2}-y<2\\}\\) i oblicz jego pole.\n	t	\N	23	\N	PP	
270	-1	6	Jednym z wierzchołków kwadratu jest \\(A(1,-3)\\), a jedna z jego przekątnych zawiera się w prostej \\(y=-2x+2\\). Wyznaczyć współrzędne pozostałych wierzchołków kwadratu i równanie okręgu wpisanego w ten kwadrat.\n	t	\N	23	\N	PP	
271	-1	1	Wyznacz kąty \\(\\alpha\\) i \\(2\\alpha\\) wiedząc, iż \\(\\alpha\\) jest kątem rozwartym takim, że \\(tg\\alpha+ctg\\alpha=-2\\sqrt{2}\\).\n	t	\N	23	\N	PR	
272	-1	2	Rozwiąż równanie \\(x=\\sqrt{5+\\sqrt{3+x^{2}}}\\). Nie używając kalkulatora zbadaj, czy jego rozwiązanie jest liczbą większą niż 3.\n	t	\N	23	\N	PR	
273	-1	3	Udowodnij, że jeżeli dwa trójkąty prostokątne mają równe obwody i długości przeciwprostokątnych, to są przystające.\n	t	\N	23	\N	PR	
274	-1	4	Narysuj starannie zbiór \\(A\\cap B\\), gdzie \\(A=\\{(x,y):x^{2}-8|x|+y^{2}-8|y|+16\\geq0,|x|\\leq 4,|y|\\leq 4\\}\\), \\(B=\\{(x,y):x^{2}+y^{2}>16(3-2\\sqrt{2})\\}\\) i oblicz jego pole.\n	t	\N	23	\N	PR	
275	-1	5	Dla jakich wartości parametrów \\(p\\) i \\(q\\) do zbioru rozwiązań równania \\(x^{3}-3px^{2}+(q+4)x=0\\), należą zarówno \\(p\\) jak i \\(q\\)?\n	t	\N	23	\N	PR	
276	-1	6	Napisz równanie prostej \\(k\\) stycznej do okręgu \\(x^{2}-4x+y^{2}+2y=0\\) w punkcie \\(P(3,1)\\). Następnie wyznacz równania wszystkich prostych stycznych do tego okręgu, które tworzą z prostą \\(k\\) kąt \\(45^{\\mathrm{o}}\\).\n	t	\N	23	\N	PR	
277	-1	1	Punkty \\(K\\) i \\(L\\) są środkami boków \\(AB\\) i \\(CD\\) czworokąta \\(ABCD\\). Wykaż, że \\(\\vec{KL}=\\frac{1}{2}(\\vec{AD}+\\vec{BC})\\). Wykonaj rysunek.\n	t	\N	24	\N	PP	
278	-1	2	W pewnym ciągu geometrycznym każdy (z wyjątkiem pierwszego) wyraz jest różnicą wyrazu następnego i poprzedniego. Znajdź iloraz tego ciągu.\n	t	\N	24	\N	PP	
279	-1	3	Rozwiąż nierówność \\([\\log_{0,2}(x-1)]^{2}>4\\).\n	t	\N	24	\N	PP	
280	-1	4	Rozwiąż równanie \\(\\sin^{2}x+\\frac{1}{2}\\sin2x=1\\).\n	t	\N	24	\N	PP	
281	-1	5	Statek płynie prosto w kierunku klifu. Kąt elewacji (kąt utworzony przez linię Poziomą i odcinek łączący obserwatora na statku ze szczytem klifu) wynosi początkowo \\(\\alpha\\), ale po przepłynięciu przez statek \\(d\\) metrów wzrasta do \\(\\beta\\). Wyznacz wysokość klifu. Wykonaj obliczenia dla wartości \\(\\alpha=10^{\\mathrm{o}}\\), \\(\\beta=15^{\\mathrm{o}}\\), \\(d=50\\).\n	t	\N	24	\N	PP	
282	-1	6	Obliczyć pole części wspólnej trzech kół o promieniach \\(r\\) w środkach ą wierzchołkach trójkąta równobocznego o boku \\(r\\sqrt{2}\\).\n	t	\N	24	\N	PP	
283	-1	1	Znajdź taki ciąg arytmetyczny, w którym suma pierwszych \\(n\\) wyrazów równa jest \\(n^{2}\\) dla wszystkich \\(n\\in \\mathbb{N}\\).\n	t	\N	24	\N	PR	
284	-1	2	W sześciokącie foremnym \\(ABCDEF\\) punkty \\(M\\) i \\(N\\) są środkami boków \\(CD\\) i \\(DE\\). Wyznacz kat między wektorami \\(\\vec{AM}\\) i \\(\\vec{BN}\\).\n	t	\N	24	\N	PR	
285	-1	3	Rozwiąż nierówność \\(\\log_{2x}(x^{2}-5x+6)<1\\).\n	t	\N	24	\N	PR	
286	-1	4	Rozwiąż równanie \\(\\cos2x-3\\cos{x}=4\\cos^{2}\\frac{x}{2}\\).\n	t	\N	24	\N	PR	
287	-1	5	Znajdź najmniejszą wartość ilorazu pola powierzchni bocznej stożka i pola powierzchni kuli wpisanej w ten stożek oraz kąt rozwarcia stożka realizujący tę wartość najmniejszą.\n	t	\N	24	\N	PR	
288	-1	6	Na dachu budynku stoi antena, której wysokość chcemy wyznaczyć nie wchodząc na górę. Urządzenie pomiarowe ustawione w pewnej odległości od budynku zmierzyło kąty między pionem a odcinkiem łączącym punkt pomiaru ze szczytem anteny oraz między pionem a odcinkiem łączącym punkt pomiaru z podstawą anteny. Otrzymano kąty \\(a_{1}\\) i \\(b_{1}\\) odpowiednio. Następnie przesunięto urządzenie o \\(d\\) metrów w kierunku budynku bez zmiany wysokości punktu pomiarowego i ponowiono pomiary, otrzymując kąty \\(a_{2}\\) i \\(b_{2}\\). Podaj wzór na wysokość anteny i wykonaj obliczenia dla kątów \\(a_{1}=53^{\\mathrm{o}}\\), \\(\\beta_{1}=55^{\\mathrm{o}}\\), \\(a_{2}=51^{\\mathrm{o}}\\), \\(\\beta_{2}=53.04^{\\mathrm{o}}\\), oraz \\(d=5m\\).\n	t	\N	24	\N	PR	
289	-1	1	Andrzej przebiegł maraton, pokonując drugą połowę trasy 10% wolniej od pierwszej. Bernard, biegnąc początkowo w tempie narzuconym przez Andrzeja, w połowie czasu biegu zwolnił o 10%. Ustal, który z biegaczy pierwszy przekroczył linię mety.\n	t	\N	25	\N	PP	
290	-1	2	Niech \\(p\\) będzie liczbą pierwszą, \\(p\\geq7\\). Uzasadnij, że liczba \\(p^{2}-49\\) jest podzielna przez 24.\n	t	\N	25	\N	PP	
291	-1	3	Rozwiąż równanie \\(12\\cos^{2}3x\\cdot \\sin^{2}2x+\\sin^{2}3x=4\\sin^{2}3x\\cdot \\sin^{2}2x+3\\cos^{2}3x\\).\n	t	\N	25	\N	PP	
292	-1	4	Wyznacz wszystkie argumenty \\(x\\), dla których funkcja \\(f(x)=\\log_{3}(x^{2}-x)-log_{9}(x^{2}+x-2)\\) przyjmuje wartości dodatnie.\n	t	\N	25	\N	PP	
293	-1	5	Przekątna rombu o obwodzie 12 jest zawarta w prostej \\(x-2y=0\\), a punkt \\(A(1,3)\\) jest jednym z jego wierzchołków. Wyznaczyć współrzędne pozostałych wierzchołków tego rombu i obliczyć jego pole. Wykonać staranny rysunek.\n	t	\N	25	\N	PP	
294	-1	6	Narysuj wykres funkcji \\(f(x)=\\sin^{2}x+\\cos^{2}x+\\sin^{4}x+\\cos^{4}x+\\sin^{6}x+\\cos^{6}x\\). Znajdź wszystkie liczby z przedziału \\([0,2\\pi]\\) spełniające nierówność \\(8f(x)>19\\). Zastosuj wzory \\(\\sin2\\alpha=2\\sin\\alpha\\cdot \\cos\\alpha\\) oraz \\(\\cos2\\alpha=\\cos^{2}\\alpha-\\sin^{2}\\alpha\\).\n	t	\N	25	\N	PP	
295	-1	1	Na nowym osiedlu wybudowano sześć budynków. Każdy zostanie pomalowany na jeden z trzech kolorów, a każdy kolor zostanie wykorzystany co najmniej raz. Ustal, na ile sposobów można na pomalować te budynki.\n	t	\N	25	\N	PR	
296	-1	2	Zbadaj, dla jakich argumentów x funkcja \\(f(x)=7^{x^{4}}\\cdot 49^{x}\\cdot 5^{2x^{3}+x^{2}}-5^{x^{4}-2}\\cdot 25^{x+1}\\cdot 49^{x^{3}+\\frac{1}{2}x^{2}}\\) przyjmuje wartości dodatnie.\n	t	\N	25	\N	PR	
297	-1	3	Rozwiąż równanie \\(tg^{2}x=(4tg^{2}x+3tgx-1)(1-tgx+tg^{2}x-tg^{3}x+\\ldots\\)).\n	t	\N	25	\N	PR	
298	-1	4	Wskaz wszystkie wartości \\(x\\), dla których suma nieskończonego ciągu geometrycznego \\(S(x)=2^{-2\\sin3x}+2^{-4\\sin3x}+2^{-6\\sin3x}+\\cdots+2^{-2n\\sin3x}+\\ldots\\) nie przekracza jedności.\n	t	\N	25	\N	PR	
299	-1	5	Rozwiąż nierówność logarytmiczną \\(\\log_{x+1}(x^{3}-x)\\geq\\log_{x+1}(x+2)+1\\).\n	t	\N	25	\N	PR	
300	-1	6	Boki \\(\\triangle ABC\\) zawarte są w prostych \\(y=4\\), \\(y=1-mx\\) oraz \\(y=2(x-m)\\). Wyznacz wszystkie wymierne wartości parametru \\(m\\), dla których pole rozważanego trójkąta wynosi \\(|\\triangle ABC|=12\\). Dla każdej wyznaczonej wartości \\(m\\) wykonaj odpowiedni rysunek.\n	t	\N	25	\N	PR	
301	-1	1	Cztery cyfry 0 i pięć cyfr 1 ustawiono w przypadkowej kolejności. Obliczyć prawdopodobieństwo tego, że na obu końcach powstałego ciągu znalazły się jednakowe cyfry.\n	t	\N	26	\N	PP	
302	-1	2	Drugi wyraz pewnego ciągu geometrycznego wynosi 8, a ósmy 2. Obliczyć siedemnasty wyraz tego ciągu oraz sumę piętnastu wyrazów, poczynając od wyrazu trzeciego. Wynik zapisać w najprostszej postaci.\n	t	\N	26	\N	PP	
303	-1	3	Rozwiązać nierówność \\(\\sqrt{2^{x-2}-2}\\leq 2^{x-1}-5\\).\n	t	\N	26	\N	PP	
304	-1	4	Dana jest funkcja \\(f(x)=\\frac{\\sqrt{2-x-x^{2}}}{\\sqrt{1-x^{2}}}\\). Znaleźć wszystkie wartości parametru rzeczywistego \\(a\\), dla których równanie \\(f(x)=2^{a}\\) posiada rozwiązanie. Sporządzić wykres funkcji \\(f(x)\\).\n	t	\N	26	\N	PP	
305	-1	5	Romb o boku \\(a\\) i kącie ostrym \\(\\alpha\\) zgięto wzdłuż prostej łączącej środki przeciwległych boków, tak aby obie części rombu były wzajemnie prostopadle. Obliczyć odległość wierzchołków katów ostrych oraz cosinus kąta pomiędzy połowami krótszej przekątnej w zgiętym rombie.\n	t	\N	26	\N	PP	
306	-1	6	Długości boków trapezu opisanego na okręgu są liczbami naturalnymi i są kolejnymi wyrazami ciągu arytmetycznego. Obwód trapezu wynosi 24. Obliczyć pole oraz dłuższą przekątna trapezu.\n	t	\N	26	\N	PP	
307	-1	1	Spośród 12 pączków, leżących na półmisku, 6 było nadziewanych, 6 lukrowanych, a 4 nie miały nadzienia ani nie były lukrowane. Franek zjadł dwa losowo wybrane pączki. Obliczyć prawdopodobieństwo, że jadł zarówno pączka lukrowanego jak i pączka z nadzieniem.\n	t	\N	26	\N	PR	
308	-1	2	Na krzywej o równaniu \\(y=\\sqrt{4-x}\\), \\(x\\geq 0\\), znaleźć punkt \\(P\\), tak aby odcinek łączący \\(P\\) z początkiem układu współrzędnych, przy obrocie wokół osi \\(Ox\\), zakreślił powierzchnię o największym polu. Sporządzić rysunek.\n	t	\N	26	\N	PR	
309	-1	3	Wyznaczyć punkty przecięcia się wykresu funkcji \\(f(x)=\\frac{3x-7}{2x-2}\\) z wykresem jej pochodnej \\(f'(x)\\). Korzystając ze wzoru \\(tg(\\alpha-\\beta)=\\frac{tg\\alpha-tg\\beta}{1+tg\\alpha tg\\beta}\\), obliczyć tangensy katów, pod którymi przecinają się te wykresy. Rozwiązanie zilustrować odpowiednim rysunkiem.\n	t	\N	26	\N	PR	
310	-1	4	Stosując zasadę indukcji matematycznej, udowodnić nierówność \\(2\\sqrt{n}-\\frac{3}{2}<1+\\frac{1}{\\sqrt{2}}+\\frac{1}{\\sqrt{3}}+…+\\frac{1}{\\sqrt{n}}\\leq 2\\sqrt{n}-1\\), \\(n\\geq1\\). Dla jakich \\(n\\) nierówność ta pozwala na oszacowanie występującej w niej sumy z błędem względnym mniejszym niż 1%.\n	t	\N	26	\N	PR	
311	-1	5	Z punktu \\(P\\) widać okrąg o środku \\(O\\) i promieniu \\(r\\) pod kątem \\(2\\alpha\\). Prosta \\(PO\\) przecina okrąg w punktach \\(A\\) i \\(C\\), a styczne do okręgu, poprowadzone z punktu \\(P\\), przechodzą przez punkty \\(B\\) i \\(D\\) na okręgu. Obliczyć promień okręgu wpisanego w czworokąt \\(ABCD\\) oraz odległość środków obu okręgów.\n	t	\N	26	\N	PR	
312	-1	6	Podstawą ostrosłupa jest romb o boku 5. Spodek wysokości ostrosłupa leży w środku podstawy, a krawędzie boczne mają długości 6 i 7. Obliczyć objętość ostrosłupa oraz cosinus kąta nachylenia ściany bocznej do podstawy.\n	t	\N	26	\N	PR	
313	-1	1	Narysować wykres funkcji \\(f(x)=2\\cos{x}-|\\cos{x}|\\) i rozwiązać nierówność \\(f(x)<-\\frac{3}{2}\\).\n	t	\N	27	\N	PP	
314	-1	2	Znaleźć punkt należący do paraboli \\(y^{2}=4x\\), którego odległość od punktu \\(A(3,0)\\) jest najmniejsza.\n	t	\N	27	\N	PP	
315	-1	3	Dany jest punkt \\(A(2,1)\\) oraz dwie proste: \\(p\\): \\(x+y+2=0\\), q: \\(x-2y-4=0\\). Znaleźć taki punkt \\(B\\) na prostej \\(q\\), żeby środek odcinka \\(AB\\) leżał na prostej \\(p\\). Sporządzić rysunek.\n	t	\N	27	\N	PP	
316	-1	4	Logarytmy liczb 1, \\(3^{x}-2\\), \\(3^{x}+4\\) tworzą ciąg arytmetyczny (w podanej kolejności). Obliczyć \\(x\\).\n	t	\N	27	\N	PP	
317	-1	5	Kolejne środki boków czworokąta wypukłego \\(ABCD\\) połączono odcinkami otrzymując czworokąt \\(EFGH\\). Jaka figurą jest czworokąt \\(EFGH\\)? Odpowiedź uzasadnić. Obliczyć pole czworokąta \\(ABCD\\), wiedząc, że pole czworokąta \\(EFGH\\) jest równe 5.\n	t	\N	27	\N	PP	
318	-1	6	Rozwiązać nierówność \\(f(x)\\leq \\frac{4}{f(x)}\\), gdzie \\(f(x)=-\\frac{4}{3}x^{2}+2x+\\frac{4}{3}\\).\n	t	\N	27	\N	PP	
319	-1	1	Narysować wykres funkcji \\(f(x)=2\\cos^{2}x-\\sin(2x-\\frac{\\pi}{2})\\) i rozwiązać nierówność \\(|f(x)|<2\\).\n	t	\N	27	\N	PR	
320	-1	2	Znaleźć punkt należący do paraboli \\(y^{2}=2x\\), którego odległość od prostej \\(x-2y+6=0\\) jest najmniejsza.\n	t	\N	27	\N	PR	
321	-1	3	Wielomian \\(w(x)=x^{4}+ax^{3}+bx^{2}+cx+d\\) jest podzielny przez trójmian \\(x^{2}-x-2\\), a jego wykres jest symetryczny względem osi \\(0y\\). Wyznaczyć wartości parametrów \\(a\\), \\(b\\), \\(c\\), \\(d\\) i rozwiązać nierówność \\(w(x+1)\\leq w(x-2)\\).\n	t	\N	27	\N	PR	
322	-1	4	Rozwiązać nierówność \\(\\log{x}+\\log^{3}x+\\log^{5}x+…\\leq 2\\sqrt{5}\\).\n	t	\N	27	\N	PR	
323	-1	5	Punkt \\(S\\) jest środkiem boku \\(AB\\) w trójkącie \\(ABC\\). Ponadto \\(AC\\neq BC\\) oraz \\(\\angle BAC+\\angle SCB=90^{\\mathrm{o}}\\) Niech \\(D\\) będzie punktem przecięcia symetralnej \\(AB\\) z prostą \\(AC\\). Udowodnić, że na czworokącie SBDC można na opisać okrąg. Dlaczego musimy założyć, że \\(AC\\neq BC\\)?\n	t	\N	27	\N	PR	
324	-1	6	Wyznaczyć równanie zbioru wszystkich środków tych cięciw paraboli \\(y=x^{2}\\), które przechodzą przez punkt \\(A(0,2)\\).\n	t	\N	27	\N	PR	
325	-1	1	Rozwiązać nierówność \\(x-1>\\sqrt{x^{2}-3}\\).\n	t	\N	28	\N	PP	
326	-1	2	Rozwiązać równanie \\(\\frac{1}{\\sin2x}+\\frac{1}{\\sin{x}}=0\\).\n	t	\N	28	\N	PP	
327	-1	3	Narysować zbiór \\(\\{(x,y):-1\\leq \\log_{\\frac{1}{2}}|x|+\\log_{2}|y|\\leq 1,|x|+|y|\\leq 3\\}\\) i obliczyć jego pole.\n	t	\N	28	\N	PP	
328	-1	4	Na prostej \\(l:2x-y-1=0\\) wyznaczyć punkty, z których odcinek o końcach \\(A(0,1)\\) oraz \\(B(0,3)\\) jest widoczny pod kątem \\(45^{\\mathrm{o}}\\).\n	t	\N	28	\N	PP	
329	-1	5	W obszar ograniczony wykresem funkcji kwadratowej i osią \\(Ox\\) wpisano prostokąt o polu 24, którego jeden z boków zawarty jest w osi \\(Ox\\), a dwa wierzchołki leżą na paraboli. Odległość między miejscami zerowymi funkcji wynosi 10. Wyznaczyć wzór tej funkcji, wiedząc, że wierzchołek paraboli leży na osi \\(Oy\\) i jeden z boków prostokąta ma długość 6. Rozwiązanie zilustrować odpowiednim rysunkiem.\n	t	\N	28	\N	PP	
330	-1	6	W ostrosłupie, którego podstawą jest romb o boku \\(a\\), jedna z krawędzi bocznych również ma długość \\(a\\) i jest prostopadła do podstawy. Wszystkie pozostałe krawędzie boczne są równe. Obliczyć objętość, pole powierzchni całkowitej ostrosłupa oraz sinus kąta nachylenia do podstawy jego pochyłych ścian bocznych.\n	t	\N	28	\N	PP	
331	-1	1	Wyznaczyć dziedzinę funkcji \\(f(x)=\\log_{2}(\\sqrt{x-1-\\sqrt{x^{2}-3x-4}}-1)\\).\n	t	\N	28	\N	PR	
332	-1	2	Rozwiązać równanie \\(\\sin^{4}x+\\cos^{4}x=\\sin{x}\\cos{x}\\).\n	t	\N	28	\N	PR	
333	-1	3	Narysować zbiór \\(\\{(x,y):|x|+|y|\\leq 6,|y|\\leq 2^{|x|},|y|\\geq\\log_{2}|x|\\}\\) i napisać równania jego osi symetrii. Podać odpowiednie uzasadnienie.\n	t	\N	28	\N	PR	
334	-1	4	Niech \\(f(x)=\\frac{2x-1}{x-2}\\), \\(g(x)=(\\sqrt{2})^{\\log_{2}(2x-1)^{2}+4\\log_{\\frac{1}{2}}\\sqrt{2-x}}\\). Narysować wykres funkcji \\(h(x)=\\max\\{f(x),g(x)\\}\\). Czy można podać wzór funkcji \\(h(x)\\), wykorzystując jedynie \\(f(x)\\)?\n	t	\N	28	\N	PR	
335	-1	5	Punkt \\(A(1,1)\\) jest wierzchołkiem rombu o polu 10. Przekątna \\(AC\\) rombu jest równoległa do wektora \\(\\vec{v}=[1\\), 2\\(]\\). Wyznaczyć współrzędne pozostałych wierzchołków rombu, wiedząc, że jeden z nich leży na prostej \\(y=x-2\\).\n	t	\N	28	\N	PR	
336	-1	6	W ostrosłupie, którego podstawą jest romb o boku \\(a\\), jedna z krawędzi bocznych również ma długość \\(a\\) i jest prostopadła do podstawy. Wszystkie pozostałe krawędzie boczne są równe. Wyznaczyć cosinusy kątów płaskich przy wierzchołku każdej ściany bocznej ostrosłupa oraz cosinusy katów między jego ścianami bocznymi.\n	t	\N	28	\N	PR	
337	-1	1	Niech \\(\\alpha\\) będzie kątem ostrym takim, że \\(\\sin\\alpha=\\sqrt{15}\\cos\\alpha\\). Wyznaczyć wszystkie wartości funkcji trygonometrycznych kątów \\(\\alpha\\) oraz \\(2\\alpha\\).\n	t	\N	29	\N	PP	
338	-1	2	Rozwiązać nierówność \\(x\\geq2+\\sqrt{10-3x}\\).\n	t	\N	29	\N	PP	
339	-1	3	Wykres trójmianu kwadratowego \\(f(x)=ax^{2}+bx+c\\) jest symetryczny względem prostej \\(x=3\\), a resztą z jego dzielenia przez wielomian \\(x-2\\) jest -1. Wiadomo też, że \\(f(0)=3\\). Znaleźć wartości współczynników \\(a\\), \\(b\\), \\(c\\) i rozwiązać nierówność \\(\\frac{1}{f(x)}\\geq\\frac{1}{3}\\).\n	t	\N	29	\N	PP	
340	-1	4	W ciągu arytmetycznym, w którym trzeci wyraz jest odwrotnością pierwszego, suma pierwszych ośmiu wyrazów wynosi 25. Obliczyć sumę pierwszych 10 wyrazów o numerach nieparzystych.\n	t	\N	29	\N	PP	
341	-1	5	Pole trapezu równoramiennego, opisanego na okręgu o promieniu 1, wynosi 5. Obliczyć pole czworokąta, którego wierzchołkami są punkty styczności okręgu i trapezu.\n	t	\N	29	\N	PP	
342	-1	6	Na szczycie góry, na którą wchodzi Agata po stoku o kacie nachylenia \\(\\beta\\), stoi krowa o wysokości 150 cm. Dziewczynka widzi ją pod kątem \\(\\alpha\\), przy czym przyjmujemy tutaj dla uproszczenia, że punkt obserwacji znajduje się na poziomie drogi. Na jakiej wysokości nad poziomem morza stoi Agata, jeżeli szczyt jest na wysokości 1520 m n.p.m? Podać wzór i następnie wykonać obliczenia dla \\(\\beta=43^{\\mathrm{o}}\\), \\(\\alpha=2^{\\mathrm{o}}\\).\n	t	\N	29	\N	PP	
343	-1	-1	W punktach \\(A(0,0)\\), \\(B(4,0)\\) i \\(C(0,4)\\) ustawione są trzy znaczniki. Sensory robota pozwalają ustalić, że z miejsca, w którym znajduje się on obecnie odcinek AB widać pod kątem \\(\\alpha=90^{\\mathrm{o}}\\), a odcinek AC pod kątem \\(\\beta=60^{\\mathrm{o}}\\). Ustalić położenie robota w układzie współrzędnych.\n	t	\N	29	\N	PR	
344	-1	1	W nieskończonym ciągu geometrycznym, którego suma równa jest 4, trzeci wyraz jest odwrotnością pierwszego. Wyznaczyć pierwszy wyraz i sumę wszystkich wyrazów 0 numerach parzystych.\n	t	\N	29	\N	PR	
345	-1	2	Narysować wykres funkcji \\(f(x)=\\frac{\\sin{x}}{\\sqrt{1+tg^{2}x}}\\) i rozwiązać nierówność \\(f(x)\\geq\\frac{1}{4}\\).\n	t	\N	29	\N	PR	
346	-1	3	Rozwiązać nierówność \\(\\sqrt{\\frac{4x-2}{x+4}}\\leq \\frac{2}{x-1}-1\\).\n	t	\N	29	\N	PR	
347	-1	4	Reszta z dzielenia wielomianu \\(w(x)=ax^{5}+bx^{2}+c\\) przez \\(p(x)=x^{3}-x^{2}-2x\\) jest wielomian \\(r(x)=11x^{2}+12x+1\\). Wyznaczyć wartości współczynników \\(a\\), \\(b\\), \\(c\\) oraz rozwiązać nierówność \\(w(x)\\geq(x+1)^{2}\\).\n	t	\N	29	\N	PR	
348	-1	5	Wyznaczyć pole trójkąta równobocznego, którego wierzchołki leżą na trzech różnych prostych równoległych, z których środkowa jest oddalona od skrajnych o \\(a\\) i \\(b\\).\n	t	\N	29	\N	PR	
349	-1	1	Znaleźć największą wartość funkcji \\(f(x)=\\frac{2}{\\sqrt{4x^{2}-12x+11}}\\) i rozwiązać nierówność \\(f(x)\\geq1\\).\n	t	\N	30	\N	PP	
350	-1	2	Rozwiązać równanie \\((1+\\cos4x)\\sin2x=\\cos^{2}2x\\).\n	t	\N	30	\N	PP	
351	-1	3	Rozwiązać równanie \\(\\log_{\\sqrt{5}}(4^{x}-6)-\\log_{\\sqrt{5}}(2^{x}-2)=2\\).\n	t	\N	30	\N	PP	
352	-1	4	Stosunek długości przekątnych rombu jest równy 5:12. Obliczyć stosunek pola rombu do do pola koła wpisanego w ten romb.\n	t	\N	30	\N	PP	
353	-1	5	Dane są punkty \\(A(1,1)\\) i \\(B(7,4)\\). Na paraboli \\(y=x^{2}+x+3\\) znaleźć taki punkt \\(C\\), żeby pole trójkąta \\(ABC\\) było najmniejsze. Wykonać rysunek.\n	t	\N	30	\N	PP	
354	-1	6	Ramiona trójkąta równoramiennego zawarte są w prostych o równaniach \\(8x-y+17=0\\) oraz \\(4x+7y-59=0\\), a jego podstawa przechodzi przez punkt \\(P(0,2)\\). Wyznaczyć równanie prostej zawierającej podstawę i obliczyć pole tego trójkąta.\n	t	\N	30	\N	PP	
355	-1	1	Dla jakich wartości parametru \\(m\\) równanie \\(x^{2}-2(m-4)x+m^{2}+5m+6=0\\) ma dwa różne pierwiastki rzeczywiste, których suma odwrotności jest dodatnia?\n	t	\N	30	\N	PR	
356	-1	2	Rozwiązać równanie \\(\\frac{1}{\\sin^{2}2x}+tgx-ctgx=2\\).\n	t	\N	30	\N	PR	
357	-1	3	Rozwiązać układ równań \\(?\\).\n	t	\N	30	\N	PR	
358	-1	4	Dany jest trójkąt \\(ABC\\), w którym \\(\\angle ACB=\\frac{2\\pi}{3}\\). Dwusieczna kąta \\(ACB\\) przecina prostą przechodzącą przez punkt \\(A\\) i równoległa do boku \\(BC\\) w punkcie \\(P\\), a prostą przechodzącą przez punkt \\(B\\) i równoległa do boku \\(AC\\) w punkcie \\(Q\\). Udowodnić, że \\(AQ=BP\\).\n	t	\N	30	\N	PR	
359	-1	5	Wyznaczyć stosunek promienia okręgu wpisanego w romb \\(ABCD\\) o kącie ostrym \\(\\alpha=\\angle DAB\\) do promienia okręgu opisanego na trójkącie \\(ABD\\). Sprawdzić dla jakiego kata \\(\\alpha\\) stosunek ten jest największy.\n	t	\N	30	\N	PR	
641	-1	5	Wiedząc, że 1 i 3 są pierwiastkami równania \\(x^{3}+mx^{2}+23x+n=0\\), oblicz \\(m\\), \\(n\\) i wyznacz trzeci pierwiastek równania.\n	t	\N	54	\N	PP	
361	-1	1	Wykaż, że dla dowolnych liczb \\(a\\), \\(b\\) różnych od zera, posiadających ten sam znak, prawdziwa jest nierówność \\(\\frac{a}{b}+\\frac{b}{a}> \\frac{8}{5}\\).\n	t	\N	31	\N	PP	
362	-1	2	Wyznacz \\(tg\\alpha\\), wiedząc, że \\(\\alpha\\) jest kątem ostrym spełniającym równanie \\(\\frac{2\\sin\\alpha+3\\cos\\alpha}{\\cos\\alpha}=2ctg\\alpha\\).\n	t	\N	31	\N	PP	
363	-1	3	Spośród 10 białych i 2 czarnych kul losujemy bez zwracania \\(m\\) kul. Jaka jest najmniejsza liczba \\(m\\), dla której prawdopodobieństwo, że wśród wylosowanych kul jest przynajmniej jedna czarna, przekracza \\(\\frac{1}{2}\\)?\n	t	\N	31	\N	PP	
364	-1	4	Wielomian \\(W(x)=2x^{3}+px^{2}+qx-2\\) ma współczynniki całkowite i pierwiastek całkowity, a reszta z jego dzielenia przez dwumian \\(x-2\\) jest równa 10. Dla jakich x przyjmuje on wartości dodatnie?\n	t	\N	31	\N	PP	
365	-1	5	Odcinek o końcach \\(A(1,0)\\) i \\(B(2,1)\\) jest podstawą trójkąta równoramiennego, którego trzeci wierzchołek leży na prostej \\(y=2x+1\\). Podaj równania prostych zawierających ramiona tego trójkąta i oblicz jego pole.\n	t	\N	31	\N	PP	
366	-1	6	Na bokach \\(AC\\) i \\(BC\\) trójkąta równoramiennego \\(ABC\\) obrano punkty \\(M\\) i \\(N\\), których rzutami prostokątnymi na podstawę \\(AB\\) są punkty \\(S\\), \\(T\\). Wykaż, że \\(|AB|=2|ST|\\) wtedy i tylko wtedy, gdy \\(|AM|=|CN|\\).\n	t	\N	31	\N	PP	
367	-1	1	Wykaż, że dla dowolnych liczb rzeczywistych \\(a\\), \\(b\\) równość \\(a^{3}-2b^{3}=ab(a+b)\\) zachodzi wtedy i tylko wtedy, gdy \\(a=2b\\).\n	t	\N	31	\N	PR	
368	-1	2	Rozwiąż równanie \\(\\cos{x}-\\sin{x}=\\frac{\\cos{2x}}{\\sin{2x}+1}\\).\n	t	\N	31	\N	PR	
369	-1	3	Liczba dwuelementowych podzbiorów zbioru \\(A\\) jest 3 razy większa niż liczba dwuelementowych podzbiorów zbioru \\(B\\). Liczba dwuelementowych podzbiorów zbioru \\(A\\) nie zawierających ustalonego elementu \\(a\\in A\\) jest sumą liczby dwuelementowych podzbiorów zbioru \\(B\\) i liczby dwuelementowych podzbiorów zbioru \\(B\\), do którego dodano jeden element. Ile elementów ma każdy z tych zbiorów? Ile każdy z tych zbiorów ma podzbiorów trzyelementowych?\n	t	\N	31	\N	PR	
370	-1	4	Reszta z dzielenia wielomianu \\(W(x)=x^{4}+x^{3}+px^{2}+qx+2\\) przez \\((x^{2}+1)\\) jest równa \\((-2x+6)\\). Rozwiąż nierówność \\(W(x)>0\\).\n	t	\N	31	\N	PR	
371	-1	5	Dwa boki trójkąta zawierają się w prostych \\(2x-y=0\\) i \\(x-2y=0\\), a proste zawierające jego wysokości przecinają się w punkcie \\(S(5,-2)\\). Wyznacz wierzchołki trójkąta i oblicz jego pole.\n	t	\N	31	\N	PR	
372	-1	6	Wyznacz równanie krzywej będącej zbiorem środków okręgów, które są styczne do prostej \\(x=2\\) i do okręgu \\(x^{2}+2x+y^{2}-2y+1=0\\).\n	t	\N	31	\N	PR	
373	-1	1	Suma wszystkich krawędzi prostopadłościanu o podstawie kwadratowej wynosi 16 cm. Jakie są wymiary tego prostopadłościanu, który ma największe pole powierzchni całkowitej?\n	t	\N	32	\N	PP	
374	-1	2	Sporządź wykres funkcji \\(f(x)=|x^{2}-4|-2x\\) oraz wyznacz liczbę pierwiastków równania \\(f(x)=m\\) w zależności od parametru \\(m\\).\n	t	\N	32	\N	PP	
375	-1	3	Ze zbioru trzech elementów \\(\\{a,b,c\\}\\) pobrano ze zwracaniem próbkę o liczności 9 elementów. Oblicz prawdopodobieństwo zdarzenia, że w tej próbie każdy element wystąpi dokładnie trzy razy.\n	t	\N	32	\N	PP	
376	-1	4	Sześciu przyjaciół \\(A\\), \\(B\\), \\(C\\), \\(D\\), \\(E\\), \\(F\\) zajmuje sześć kolejnych miejsc w jednym rzędzie sali kinowej. Na ile sposobów mogą usiąść, aby: \\[a)\\] osoby \\(A\\), \\(B\\), \\(C\\) siedziały jedna obok drugiej (w dowolnej kolejności)? \\[b)\\] żadne dwie z osób \\(A\\), \\(B\\), \\(C\\) nie siedziały obok siebie?\n	t	\N	32	\N	PP	
377	-1	5	Wyznacz współrzędne wierzchołków trójkąta \\(ABC\\), którego boki zawierają się w prostych: \\(y=2\\), \\(2x-y+10=0\\), \\(4x+3y=0\\). Następnie wyznacz współrzędne wierzchołków trójkąta, który jest obrazem trójkąta \\(ABC\\) w jednokładności o środku \\(O(0,0)\\) i skali -2. Oblicz pole trójkąta \\(ABC\\) i jego obrazu w tym przekształceniu.\n	t	\N	32	\N	PP	
378	-1	6	Trójkąt równoboczny \\(ABC\\) o boku 1 dzielimy na cztery przystające trójkąty, łqcząc środki jego boków. Usuwamy środkowy trójkąt (krok 1). To samo robimy z każ dym z trzech pozostałych trójkątów (krok 2). Proces ten wykonujemy \\(n\\) razy. Jaka jest suma pól usuniętych trójkątów po trzech krokach? Ile kroków wystarczy wykonać, aby suma pól usuniętych trójkątów była większa niż \\(3/4\\) pola wyjściowego trójkąta?\n	t	\N	32	\N	PP	
379	-1	1	Ile jest czterocyfrowych kodów PIN, w których: \\[a)\\] żadna cyfra się nie powtarza? \\[b)\\] któraś z cyfr się powtarza? Ile kodów jest więcej: tych, w których żadna cyfra się nie powtarza, czy tych, w których któraś z cyfr się powtarza?\n	t	\N	32	\N	PR	
380	-1	2	Pięciu wioślarzy \\(A\\), \\(B\\), \\(C\\), \\(D\\), \\(E\\) płynie łodzią, na której znajduje się pięć poprzecznych ławek dwuosobowych. Wioślarze \\(A\\), \\(B\\), \\(C\\) mogą usiąść tylko przy prawej burcie, natomiast wioślarze \\(D\\) i \\(E\\) tylko przy lewej. Jakie jest prawdopodobieństwo zdarzenia, że miejsca obok wioślarzy \\(D\\) i \\(E\\) będą zajęte?\n	t	\N	32	\N	PR	
381	-1	3	Znajdź współrzędne wierzchołka \\(C\\) trójkąta równoramiennego \\(ABC\\), gdzie \\(A(2,0)\\), \\(B(0,2)\\), wiedząc, że środkowe \\(AD\\) i \\(BE\\) przecinają się pod kątem prostym.\n	t	\N	32	\N	PR	
382	-1	4	W prostokątnym układzie współrzędnych dane są punkty \\(A(a,0)\\) i \\(B(b,0)\\), gdzie \\(0<a<b\\). Znajdź punkt \\(C(0,c)\\), gdzie \\(c>0\\), dla którego miara kąta \\(\\angle ACB\\) jest największa.\n	t	\N	32	\N	PR	
383	-1	5	Wyznacz wszystkie styczne do wykresu funkcji \\(f(x)=\\frac{x-1}{x+1}\\) równolegle do prostej \\(x-2y=0\\) i oblicz pole wielokąta, którego wierzchołkami są punkty przecięcia otrzymanych prostych z osiami układu. Wykonaj staranny rysunek.\n	t	\N	32	\N	PR	
384	-1	6	Kwadrat \\(ABCD\\) o boku \\(a\\) dzielimy na dziewięć przystających kwadratów, dzieląc każdy z boków kwadratu na trzy równe części i usuwamy środkowy kwadrat (krok 1). Następnie to samo robimy w pozostałych ośmiu kwadratach (krok 2). Proces ten powtarzany jest nieskończenie wiele razy. Jaka jest suma pól kwadratów usuniętych w \\(n\\) krokach? Ile kroków wystarczy wykonać, aby suma pól usuniętych kwadratów była większa niż połowa pola wyjściowego kwadratu? Jaka jest suma pól wszystkich usuniętych kwadratów (po nieskończenie wielu krokach)?\n	t	\N	32	\N	PR	
385	-1	1	Dwaj kolarze jeżdżą po torze w kształcie okręgu ze stałymi prędkościami. Jeżeli startują z tego samego punktu i jadą w tę samą stronę, to szybszy z nich pierwszy raz ponownie zrówna się z wolniejszym, wyprzedzając go o jedno okrążenie, po przejechaniu dokładnie 7 okrążeń. Ilu okrążeń potrzebuje szybszy kolarz żeby dogonić kolegę, jeżeli startują z przeciwległych stron toru (tzn. odcinek łączący punkty ich startu jest średnicą koła)?\n	t	\N	33	\N	PP	
420	-1	6	Określ dziedzinę, wyznacz przedziały monotoniczności oraz wszystkie lokalne ekstrema funkcji \\(f(x)=\\frac{(x+1)^{2}}{x(x-2)}\\). Sporządź jej staranny wykres.\n	t	\N	35	\N	PR	
386	-1	2	Liczby o 16% mniejsza i o 43% większa od ułamka okresowego 0, (75) są pierwiastkami trójmianu kwadratowego o współczynnikach całkowitych względnie pierwszych. Obliczyć resztę z dzielenia tego trójmianu przez dwumian \\((x-1)\\).\n	t	\N	33	\N	PP	
387	-1	3	Rozwiązać równanie \\(\\sin{x}+\\cos{x}=\\frac{1}{\\sin{x}}\\).\n	t	\N	33	\N	PP	
388	-1	4	Rozwiązać nierówność \\(\\frac{\\log_{2}(10-x^{2})}{\\log_{2}(4-x)}>2\\).\n	t	\N	33	\N	PP	
389	-1	5	Dwa okręgi o promieniach \\(r\\) i \\(R\\) styczne zewnętrznie w punkcie \\(C\\), są styczne do prostej \\(k\\) w punktach \\(A\\) i \\(B\\). Wyznaczyć kąt \\(\\angle ACB\\) i promień okręgu opisanego na trójkącie \\(ABC\\).\n	t	\N	33	\N	PP	
390	-1	6	Dane są punkty \\(A(2,-2)\\) i \\(B(8,1)\\). Na paraboli \\(y=x^{2}-x\\) znaleźć taki punkt \\(C\\), żeby pole trójkąta \\(ABC\\) było najmniejsze. Wykonać rysunek.\n	t	\N	33	\N	PP	
391	-1	1	Czy wieża zbudowana z sześciennych klocków o objętościach 1, 3, 9, 27, zmieści się na półce o wysokości \\(\\frac{15}{2}\\)? Odpowiedź uzasadnić nie stosując obliczeń przybliżonych.\n	t	\N	33	\N	PR	
392	-1	2	Rozwiązać równanie \\(\\cos2x=(\\sqrt{3}-1)\\sin{x}(\\cos{x}+\\sin{x})\\).\n	t	\N	33	\N	PR	
393	-1	3	Sporządzić staranny wykres funkcji \\(f(x)=|2^{-|x|+1}-1|-\\frac{1}{2}\\). Opisać sposób postępowania. Rozwiązać nierówność \\(f(x)>0\\).\n	t	\N	33	\N	PR	
394	-1	4	Rozwiązać nierówność \\(\\log_{2}x+\\log_{2}^{3}x+\\log_{2}^{5}x+…<\\frac{20}{9}\\).\n	t	\N	33	\N	PR	
395	-1	5	Pod jakim kątem przecinają się okręgi o równaniach \\((x-6)^{2}+y^{2}=9\\), \\(x^{2}+(y+4)^{2}=25\\) (kątem miedzy dwoma okręgami nazywamy kąt między stycznymi w punkcie przecięcia)? Znaleźć równanie okręgu, którego środek leży na prostej \\(2x-y=0\\), i który przecina każdy z danych okręgów pod kątem prostym.\n	t	\N	33	\N	PR	
396	-1	6	Boisko do gry w football amerykański ma kształt prostokąta o długości \\(a\\) i szerokości \\(b<a\\). Na środku krótszych boków stoją bramki o szerokości \\(d<b\\). Z którego miejsca linii bocznej boiska (czyli dłuższego boku prostokąta) widać bramkę pod największym możliwym kątem? Wyrazić odpowiedź za pomocą wzoru zawierającego symbole \\(a\\), \\(b\\), \\(d\\), a następnie wykonać obliczenia dla wartości \\(a=110m\\), \\(b=49m\\), \\(d=5m\\).\n	t	\N	33	\N	PR	
397	-1	1	Rozwiązać nierówność \\(2x-2>\\sqrt{7-4x}\\).\n	t	\N	34	\N	PP	
398	-1	2	Dla jakich wartości parametru \\(m\\) pierwiastkiem wielomianu \\(w(x)=2x^{3}-x^{2}-(m^{2}-2)x+m-1\\) jest \\(x=2\\)? Dla znalezionych wartości \\(m\\) wyznaczyć pozostałe pierwiastki \\(w(x)\\).\n	t	\N	34	\N	PP	
399	-1	3	Narysować staranny wykres funkcji \\(f(x)=|\\sin{x}|\\cos{x}-\\frac{1}{4}\\) i rozwiązać nierówność \\(f(x)\\le-\\frac{1}{2}\\).\n	t	\N	34	\N	PP	
400	-1	4	Rozwiązać równanie \\(4^{x+\\sqrt{x^{2}-2}}-5\\cdot 2^{x-1+\\sqrt{x^{2}-2}}=6\\).\n	t	\N	34	\N	PP	
401	-1	5	W trójkącie równoramiennym \\(ABC\\) o podstawie \\(AB\\) dane są \\(A(2,-1)\\) oraz \\(B(-1,3)\\). Środkowe poprowadzone z \\(A\\) i z \\(B\\) są prostopadłe. Znaleźć współrzędne punktu \\(C\\) oraz obliczyć pole i obwód tego trójkąta.\n	t	\N	34	\N	PP	
402	-1	6	W okrąg o promieniu \\(R\\) wpisano trzy jednakowe okręgi wzajemnie styczne w punktach \\(A\\), \\(B\\), \\(C\\) i styczne do danego okręgu. Obliczyć pole obszaru ograniczonego mniejszymi fukami \\(AB\\), \\(BC\\) i \\(CA\\).\n	t	\N	34	\N	PP	
403	-1	1	Rozwiązać nierówność \\(\\sqrt{2x^{2}-x}<5-4x\\).\n	t	\N	34	\N	PR	
404	-1	2	Rozwiązać układ równań \\begin{array}{l} xy=400 x^{\\log y}=16 \\end{array}.\n	t	\N	34	\N	PR	
405	-1	3	Narysować staranny wykres funkcji \\(f(x)=|\\sin{x}|-\\cos{x}\\), wyznaczyć jej zbiór wartości oraz rozwiązać nierówność \\(\\frac{1}{f(x)}\\geq1\\).\n	t	\N	34	\N	PR	
406	-1	4	Reszta z dzielenia wielomianu \\(w(x)=x^{4}+ax^{3}-bx^{2}+bx\\) przez trójmian \\(x^{2}-9\\) wynosi \\(-5x+45\\). Wyznaczyć wartości parametrów \\(a\\) i \\(b\\) oraz rozwiązać nierówność \\(w(x-1)\\geq w(x+1)\\).\n	t	\N	34	\N	PR	
407	-1	5	Dany jest punkt \\(A(2,1)\\). Wyznaczyć i narysować zbiór tych wszystkich punktów \\(C\\), dla których czworokąt \\(ABCD\\) jest prostokątem takim, że punkty \\(B\\) i \\(D) leżą na osiach układu współrzędnych i nie nalezą do tego samego boku prostokąta. Wykonać rysunek.\n	t	\N	34	\N	PR	
408	-1	6	Nad sześcianem o krawędzi \\(a\\) stojącym na płaszczyźnie umieszczono punktowe źródło światła na wysokości \\(b>a\\) (rzut prostopadły punktu, w którym jest źródło światła na tę płaszczyznę, zawiera się w podstawie sześcianu). Obliczyć pole obszaru jaki zajmuje cień sześcianu łącznie z jego podstawą na tej płaszczyźnie.\n	t	\N	34	\N	PR	
409	-1	1	W szufladzie znajduje się 6 różnych par rękawiczek. Oblicz prawdopodobieństwo, że wśród 5 losowo wybranych rękawic jest co najmniej jedna para.\n	t	\N	35	\N	PP	
410	-1	2	Wyznacz dziedzinę i zbadaj, dla jakich argumentów funkcja \\(f(x)=\\log_{\\sqrt{3}}(x+3)-\\log_{3}(9-x^{2})\\) przyjmuje wartości ujemne.\n	t	\N	35	\N	PP	
411	-1	3	Wśród prostokątów wpisanych w okrąg o promieniu \\(R\\) bez użycia metod rachunku różniczkowego wskaz ten, którego pole jest największe.\n	t	\N	35	\N	PP	
412	-1	4	Rozwiąż nierówność \\(4^{x^{3}-x+2}\\cdot 5^{2x-3x^{2}}-2^{4-3x^{2}}\\cdot 25^{x^{3}}\\geq0\\).\n	t	\N	35	\N	PP	
413	-1	5	Powierzchnia boczna stożka po rozcięciu jest wycinkiem koła o kącie \\(216^{\\mathrm{o}}\\). Obwód podstawy stożka wynosi \\(6\\pi\\). Oblicz objętość kuli wpisanej w ten stożek.\n	t	\N	35	\N	PP	
414	-1	6	Narysuj wykres funkcji \\(f(x)=-1+2^{1-|1-x|}\\) i precyzyjnie opisz zastosowaną metodę jego konstrukcji. Na podstawie rysunku wskaż przedziały monotoniczności funkcji oraz zbiór jej wartości.\n	t	\N	35	\N	PP	
415	-1	1	Developer chce pomalować każde z 11 pięter nowo wybudowanego wieżowca na jeden z 3 kolorów występujących w jego logo, przy czym każdy kolor ma zostać wykorzystany co najmniej jeden raz. Obliczyć prawdopodobieństwo, że dwaj niezależni graficy, którym zlecono zaprojektowanie kolorystyki budynku, przedstawią ten sam projekt. Przyjąć, że wybór przez nich każdego takiego układu kolorów jest jednakowo prawdopodobny.\n	t	\N	35	\N	PR	
416	-1	2	Rozwiąż równanie \\(8x^{3}=1+6x\\), stosując podstawienie \\(x=\\cos\\alpha\\).\n	t	\N	35	\N	PR	
417	-1	3	Określ dziedzinę i zbadaj, dla jakich argumentów funkcja \\(f(x)=\\log_{x^{2}-1}(x^{2}-2x)-\\log_{x^{2}-1}(2-\\frac{4}{x})\\) przyjmuje wartości nieujemne.\n	t	\N	35	\N	PR	
418	-1	4	Rozwiąż nierówność \\(1+tg^{2}2x-tg^{4}2x+tg^{6}2x-\\ldots\\leq 3\\sin2x-\\sin^{2}2x\\).\n	t	\N	35	\N	PR	
419	-1	5	Wśród prostopadłościanów o podstawie kwadratu wpisanych w kulę o promieniu \\(R\\) wskaz ten, którego objętość jest największa.\n	t	\N	35	\N	PR	
422	-1	2	Pokazać, że dla każdej wartości parametru \\(\\alpha\\in [0,2\\pi]\\), dla której istnieje rozwiązanie równania \\(x^{2}-2\\cos\\alpha\\cdot x+\\sin^{2}\\alpha=0\\) suma kwadratów jego pierwiastków jest równa przynajmniej 1.\n	t	\N	36	\N	PP	
423	-1	3	W zależności od parametru rzeczywistego \\(k\\) przedyskutować liczbę rozwiązań układu równań \\(?\\). Sporządzić ilustrację graficzną układu dla kilku charakterystycznych \\(k\\).\n	t	\N	36	\N	PP	
424	-1	4	Przekątna \\(BD\\) równoległoboku \\(ABCD\\) jest prostopadła do boku \\(AD\\), a kat ostry tego równoległoboku jest równy kątowi między jego przekątnymi. Wyznaczyć stosunek długości przekątnych. Sporządzić rysunek.\n	t	\N	36	\N	PP	
425	-1	5	Wyznaczyć zbiór punktów, z których odcinek o końcach \\(A(2,0)\\) i \\(B(1,\\sqrt{2})\\) jest widoczny pod kątem \\(30^{\\mathrm{o}}\\). Sporządzić rysunek.\n	t	\N	36	\N	PP	
426	-1	6	Podstawą graniastosłupa prostego o wszystkich krawędziach równych \\(a\\), jest romb o kącie ostrym \\(\\alpha\\). Graniastosłup przecięto płaszczyzną przechodzącą przez dłuższą przekątną \\(AC\\) podstawy dolnej i przeciwległy wierzchołek podstawy górnej. Wyznaczyć cosinus kąta nachylenia tej płaszczyzny do płaszczyzny podstawy i pole otrzymanego przekroju. Sporządzić rysunek.\n	t	\N	36	\N	PP	
427	-1	1	Rozwiązać równanie \\((\\frac{1}{x})^{2-3\\log_{2}x}=\\frac{1}{2}x^{1+\\log_{x}2}\\).\n	t	\N	36	\N	PR	
428	-1	2	Dla jakich wartości parametru \\(m\\) równanie \\(x^{3}+(m-2)x^{2}+(2-m-m^{2})x-(1-m^{2})=0\\) ma trzy różne pierwiastki, których suma kwadratów nie przekracza 5?\n	t	\N	36	\N	PR	
429	-1	3	Czworokąt wypukły \\(ABCD\\), w którym \\(AB=1\\), \\(BC=2\\), \\(CD=4\\), \\(DA=3\\) jest wpisany w okrąg. Obliczyć promień \\(R\\) tego okręgu. Sprawdzić, czy w czworokąt ten można wpisać okrąg. Jeżeli tak, to obliczyć promień \\(r\\) tego okręgu. Sporządzić rysunek.\n	t	\N	36	\N	PR	
430	-1	4	Podstawa graniastosłupa prostego o wszystkich krawędziach równych jest romb o kącie ostrym \\(\\frac{\\pi}{3}\\). Graniastosłup ten przecięto dwiema płaszczyznami: płaszczyzną przechodzącą przez bok \\(AB\\) podstawy dolnej i wierzchołek \\(C'\\) oraz płaszczyzną przechodzącą przez bok \\(AD\\) podstawy dolnej i ten sam wierzchołek \\(C'\\). Wyznaczyć kąt dwuścienny między tymi płaszczyznami oraz stosunek objętości brył, na jakie został podzielony graniastosłup. Sporządzić rysunek.\n	t	\N	36	\N	PR	
431	-1	5	W zależności od parametru rzeczywistego \\(p\\) przedyskutować liczbę rozwiązań układu równań \\begin{array}{ll} x^{4}+y^{4}+2x^{2}y^{2}-4x^{2} &=0, x^{2}+y^{2}-2\\sqrt{3}y &=p \\end{array} Sporządzić ilustrację graficzną układu dla kilku charakterystycznych \\(p\\).\n	t	\N	36	\N	PR	
432	-1	6	Wykorzystując wzór Newtona i obliczając pochodną wielomianu \\(w(x)=(1-x)^{n}\\), wykazać, że dla dowolnego \\(n\\in 1\\mathrm{N}\\), \\(n\\geq2\\) zachodzi równość \\(\\left(\\begin{array}{l}n1\\end{array}\\right)-2\\left(\\begin{array}{l}n2\\end{array}\\right)+3\\left(\\begin{array}{l}n3\\end{array}\\right)-4\\left(\\begin{array}{l}n4\\end{array}\\right)+\\ldots+(-1)^{n-1}n\\left(\\begin{array}{l}nn\\end{array}\\right)=0\\) Wywnioskować stąd, że jeżeli liczby \\(a_{1}\\), \\(a_{2}\\), \\(\\ldots\\), an, \\(a_{n+1}\\) tworzą ciąg arytmetyczny, to dla dowolnego \\(n\\in 1\\mathrm{N}\\) zachodzi równość \\(a_{1}-\\left(\\begin{array}{l}n1\\end{array}\\right)a_{2}+\\left(\\begin{array}{l}n2\\end{array}\\right)a_{3}-\\left(\\begin{array}{l}n3\\end{array}\\right)a_{4}+\\ldots+(-1)^{n}\\left(\\begin{array}{l}nn\\end{array}\\right)a_{n+1}=0\\).\n	t	\N	36	\N	PR	
433	-1	1	Prawdopodobieństwo, że w dowolnie wybranym przedziale pociągu relacji Warszawa - Wrocław podróżny znajdzie co najmniej jedno wolne miejsce wynosi \\(\\frac{1}{2}\\). Podróżny szuka pierwszego wolnego miejsca, zaglądając do każdego kolejnego przedziału. Oblicz prawdopodobieństwo zdarzenia, że liczba odwiedzonych przez niego przedziałów nie przekroczy 4.\n	t	\N	37	\N	PP	
434	-1	2	Rozwiąż nierówność wykładniczą \\(2^{x^{3}}\\cdot 9^{2x-1}<3^{x^{3}-2}\\cdot 4^{2x}\\).\n	t	\N	37	\N	PP	
435	-1	3	W trójkącie równoramiennym \\(\\triangle ABC\\) o ramionach \\(AC\\) i \\(BC\\) kąt przy podstawie \\(AB\\) ma miarę \\(\\alpha\\). Na boku \\(AC\\) umieszczono punkt \\(D\\) w taki sposób, że trójkąty \\(\\triangle ABC\\) i \\(\\triangle ABD\\) są podobne. Wyznacz skalę podobieństwa tych trójkątów oraz warunki rozwiązalności zadania. Oblicz stosunek pól tych trójkątów oraz stosunek objętości stożków powstałych przez obrót tych trójkątów wokół ich osi symetrii.\n	t	\N	37	\N	PP	
436	-1	4	Wyznacz wszystkie możliwe wartości kąta ostrego \\(\\alpha\\) jeżeli wiadomo, że \\(tg2\\alpha+ctg2\\alpha=-\\frac{4\\sqrt{3}}{3}\\).\n	t	\N	37	\N	PP	
437	-1	5	Niech \\(x\\in [0,2\\pi]\\). Rozwiąż nierówność \\(\\sin^{5}x+\\cos^{5}x\\geq\\sin^{4}x\\cdot \\cosx+\\cos^{4}x\\cdot \\sinx\\).\n	t	\N	37	\N	PP	
438	-1	6	Wyznacz wszystkie argumenty x, dla których funkcja \\(f(x)=\\log_{2}(x+2)-2\\log_{4}\\sqrt{x^{3}+8}\\) przyjmuje wartości niedodatnie.\n	t	\N	37	\N	PP	
439	-1	1	Rzucamy cztery razy jednorodną kostką do gry. Oblicz prawdopodobieństwo, że suma wyrzuconych oczek przekroczy 12, jeśli wiadomo, że suma oczek wyrzuconych w dwóch pierwszych rzutach wynosi 8.\n	t	\N	37	\N	PR	
440	-1	2	Rozwiąż równanie trygonometryczne \\(\\frac{\\sin{2x}\\cdot\\sin{x}-\\cos{2x}\\cdot\\cos{x}}{\\cos{2x}\\cdot\\sin{x}-\\sin{2x}\\cdot\\cos{x}}=1\\).\n	t	\N	37	\N	PR	
441	-1	3	Rozwiąż równanie \\(5^{tg^{2}x-1}+5^{3-tg^{2}x}=26\\).\n	t	\N	37	\N	PR	
442	-1	4	Rozwiąż nierówność logarytmiczną \\(1+\\log_{x-1}x<\\log_{x-1}(x+6)\\).\n	t	\N	37	\N	PR	
443	-1	5	Wyznacz dziedzinę i miejsca zerowe funkcji \\(f(x)=\\log_{\\sin(-x)}(4\\sinx\\cdot \\cosx-1)\\).\n	t	\N	37	\N	PR	
444	-1	6	W trójkącie równoramiennym \\(\\triangle ABC\\), którego podstawa \\(AB\\) ma długość 4, miara kąta pomiędzy ramionami \\(AC\\) i \\(BC\\) wynosi \\(30^{\\mathrm{o}}\\). Oblicz objętość bryły powstałej przez obrót tego trójkąta względem jednego z jego ramion.\n	t	\N	37	\N	PR	
445	-1	1	Grupa przyjaciół postanowiła kupić wspólnie ciekawą grę komputerową za 1920 złotych. Gdy zgłosiło się jeszcze czterech chętnych do korzystania z tego oprogramowania, okazało się, że, przy równym podziale kosztów, każdy będzie mógł zapłacić 80 złotych mniej. Ile osób będzie korzystało z tej gry i ile każdy z nich musi za nią zapłacić?\n	t	\N	38	\N	PP	
446	-1	2	Liczby \\(a\\), \\(b\\), \\(c\\) dają przy dzieleniu przez 7 reszty (odpowiednio) - 1, 2, 3. Wykaż, że suma kwadratów tych liczb jest podzielna przez 7.\n	t	\N	38	\N	PP	
447	-1	3	Dla jakiego parametru \\(m\\) pierwiastkiem równania \\(x^{2}+(2m+1)x+m+4=0\\) jest liczba \\((-2)\\)? Dla znalezionego \\(m\\) wyznacz drugi pierwiastek tego równania i sprawdź, dla jakich argumentów otrzymana funkcja kwadratowa \\(f(x)=x^{2}+(2m+1)x+m+4\\) spełnia nierówność \\(2f(x)>1+\\sqrt{2}\\).\n	t	\N	38	\N	PP	
448	-1	4	Oblicz wartość wyrazeń \\(\\alpha=\\frac{\\sin45^{\\mathrm{o}}\\cos15^{\\mathrm{o}}-\\cos45^{\\mathrm{o}}\\sin15^{\\mathrm{o}}}{\\sin^{2}20^{\\mathrm{o}}+\\sin^{2}70^{\\mathrm{o}}}\\), \\(\\beta=\\frac{\\sin75^{\\mathrm{o}}\\cos15^{\\mathrm{o}}-\\cos75^{\\mathrm{o}}\\sin 15^{\\mathrm{o}}}{\\sin20^{\\mathrm{o}}\\cos70^{\\mathrm{o}}+\\cos20^{\\mathrm{o}}\\sin70^{\\mathrm{o}}}\\). Wyznacz stosunek promieni okręgów wpisanego i opisanego na trójkącie prostokątnym, którego przyprostokątne mają długości \\(a\\) i \\(b\\).\n	t	\N	38	\N	PP	
449	-1	5	Punkty \\(A(1,0)\\), \\(B(5,2)\\), \\(C(3,3)\\) są trzema kolejnymi wierzchołkami trapezu prostokątnego, w którym \\(AB||CD\\). Wyznacz współrzędne wierzchołka \\(D\\) oraz równania przekątnych trapezu. W jakim stosunku każda z tych przekątnych dzieli pole trapezu?\n	t	\N	38	\N	PP	
450	-1	6	Krawędź boczna ostrosłupa prawidłowego trójkątnego jest dwa razy dłuższa niż krawędź podstawy. Oblicz objętość ostrosłupa i cosinus kąta nachylenia ściany bocznej do podstawy, wiedząc, że suma długości wszystkich jego krawędzi jest równa 18.\n	t	\N	38	\N	PP	
451	-1	1	Dla jakich wartości parametru \\(a\\) równanie \\(4-|x-1|=(a+2)^{2}\\) ma dwa różne rozwiązania?\n	t	\N	38	\N	PR	
452	-1	2	Wykorzystując dwumian Newtona, uzasadnij, że liczba \\(11^{2k}-9^{2k}\\) jest podzielna przez 100 dla dowolnej liczby naturalnej \\(k\\) podzielnej przez 5.\n	t	\N	38	\N	PR	
453	-1	3	Wykaż, że w dowolnym trójkącie prostokątnym wartość bezwzględna różnicy tangensów kątów ostrych jest dwa razy większa niż wartość bezwzględna tangensa kąta, jaki tworzą wysokość i środkowa poprowadzone z wierzchołka kąta prostego.\n	t	\N	38	\N	PR	
454	-1	4	Dany jest trapez prostokątny o podstawach długości \\(a\\) i \\(b\\) oraz wysokości \\(2h\\). Wykaż, że jeżeli \\(h^{2}=ab\\), to dłuższe ramię trapezu jest równe \\(a+b\\), a okrąg, którego jest ono średnicą, jest styczny do drugiego ramienia.\n	t	\N	38	\N	PR	
455	-1	5	Narysuj wykres funkcji \\(f(x)=1-\\frac{x}{x+2}+(\\frac{x}{x+2})^{2}-(\\frac{x}{x+2})^{3}+\\ldots\\) która jest sumą nieskończonego szeregu geometrycznego i wyznacz równanie prostej stycznej do wykresu prostopadłej do prostej \\(2x-y=0\\). Sporządź staranny rysunek.\n	t	\N	38	\N	PR	
456	-1	6	Podstawą ostrosłupa jest trapez o obwodzie 32, którego jedna podstawa jest trzy razy dłuższa niż druga. Wszystkie krawędzie boczne ostrosłupa są nachylone do podstawy pod kątem \\(60^{\\mathrm{o}}\\). Oblicz objętość ostrosłupa, wiedząc, że w jego podstawę można wpisać okrąg.\n	t	\N	38	\N	PR	
457	-1	1	Czy suma długości przekątnych kwadratów o polach 10 i \\(\\frac{21}{2}\\) jest większa od długości Przekątnej kwadratu o polu \\(\\frac{81}{2}\\)? Odpowiedź uzasadnić nie używając kalkulatora.\n	t	\N	39	\N	PP	
458	-1	2	Grupa słuchaczy wykładu z algebry liczy 261 osób. Egzamin podstawowy zdała pewna (dodatnia) ilość osób. Po egzaminie poprawkowym liczba osób, które zdały, powiększyła się o 5, 6%. Ile osób zdało egzamin podstawowy (wskazówka: pamiętaj, że ilość osób, które zdały egzamin jest liczbą całkowitą)?\n	t	\N	39	\N	PP	
459	-1	3	Hasło do pewnego systemu komputerowego ma składać się z dokładnie 2 liter (do wyboru z 26 małych i 26 dużych liter alfabetu) oraz z przynajmniej 2 i co najwyżej 4 cyfr (od 0 do 9). Zarówno litery jak i liczby mogą się powtarzać. Ile jest różnych haseł spełniających te warunki?\n	t	\N	39	\N	PP	
460	-1	4	Rozwiązać nierówność \\(x+1\\geq\\sqrt{5-x}\\).\n	t	\N	39	\N	PP	
461	-1	5	Suma 21 pierwszych wyrazów pewnego ciągu arytmetycznego wynosi zero a iloczyn dwunastego i trzynastego wyrazu równy jest 8. Dla jakich liczb \\(n\\) suma \\(n\\) pierwszych wyrazów tego ciągu jest mniejsza od 9?\n	t	\N	39	\N	PP	
462	-1	6	Marcin stoi nad brzegiem morza i obserwuje odpływający statek. \\[a)\\] Jak daleko będzie statek od (oczu) Marcina w momencie, w którym zniknie on za horyzontem (Marcin przestanie go widzieć)? \\[b)\\] Na jak wysoką wieżę musi on wejść, żeby jeszcze widzieć statek będący w odległości 10 km od niego? Przyjąć, że Ziemia jest kulą o promieniu 6371 km a oczy Marcina znajdują się na wysokości 170 cm.\n	t	\N	39	\N	PP	
463	-1	1	Ułożono dwie wieże z sześciennych klocków. Pierwszą z trzech klocków o objętości 72, 8 oraz \\(3 cm^{3}\\), a drugą z czterech jednakowych klocków o objętości \\(8 cm^{3}\\) Która z nich jest wyższa? Odpowiedź uzasadnić nie używając kalkulatora.\n	t	\N	39	\N	PR	
464	-1	2	Kod do sejfu w willi pana Bogackiego jest pięciocyfrowy. Jego córka, korzystając z chwilowej nieobecności taty, próbuje go otworzyć. Wie jednak tylko, że kod ułożony jest z dokładnie trzech różnych cyfr i nie występują w nim cyfry 1,4 i 9. Ile jest różnych kodów spełniających te warunki?\n	t	\N	39	\N	PR	
465	-1	3	Rozwiązać nierówność \\(x-1>\\sqrt{4-\\frac{6}{x}}\\).\n	t	\N	39	\N	PR	
466	-1	4	W jednej szklance znajduje się woda, a w drugiej dokładnie taka sama ilość wina. Z pierwszej szklanki przelano jedną łyżkę wody do szklanki z winem i dokładnie wymieszano. Następnie przelano jedną łyżkę powstałej mieszaniny z powrotem do pierwszej szklanki. Sprawdzić czy po tych zabiegach jest więcej wody w winie czy wina w wodzie.\n	t	\N	39	\N	PR	
467	-1	5	Trzy liczby tworzą ciąg geometryczny. Ich suma równa jest 13, a suma ich odwrotności wynosi \\(\\frac{13}{9}\\). Znaleźć te liczby.\n	t	\N	39	\N	PR	
468	-1	6	Bocian stoi na słupie o wysokości 5 metrów. Magda, której oczy znajdują się na wysokości 160 cm nad ziemią, stoi 10,2 metra od tego słupa i widzi bociana pod kątem 6 stopni. Jak wysoki jest bocian? Podać wynik z dokładnością do 1 cm. W razie potrzeby odpowiednią funkcję trygonometryczną kąta \\(6^{\\mathrm{o}}\\) przybliżyć za pomocą tablic matematycznych lub kalkulatora.\n	t	\N	39	\N	PR	
469	-1	1	Rozwiąż nierówność \\(x^{5}+x^{4}-8x^{2}+16\\geq8x^{3}-16x\\).\n	t	\N	40	\N	PP	
470	-1	2	W przedziale \\([\\pi,2\\pi]\\) rozwiąż równanie \\(\\frac{\\sin3x}{\\cos6x}=1\\).\n	t	\N	40	\N	PP	
471	-1	3	Dane są trzy wektory ã\\(=(1\\), 1\\()\\), \\(\\vec{b}=(2,-1)\\), \\(\\vec{c}=(5,2)\\). Dobierz takie liczby \\(p\\), q, aby z wektorów \\(p\\vec{a}\\), \\(q\\vec{b}\\), \\(\\vec{c}\\) można było zbudować trójkąt.\n	t	\N	40	\N	PP	
472	-1	4	W przedziale \\([0,\\pi]\\) narysuj wykres funkcji \\(f(x)=\\frac{1}{|tgx+ctgx|}+\\sin2x\\), i rozwiąż nierówność \\(f(x)<\\frac{3}{4}\\).\n	t	\N	40	\N	PP	
473	-1	5	Na okręgu \\(x^{2}-2x+y^{2}+4y-4=0\\) wyznacz punkt, którego odległość od prostej \\(x-3y+6=0\\) jest najmniejsza.\n	t	\N	40	\N	PP	
474	-1	6	Przekątna rombu o polu 9 zawarta jest w prostej \\(x-2y+3=0\\), a jednym z jego wierzchołków jest punkt \\(A(2,-2)\\). Wyznacz współrzędne pozostałych wierzchołków tego rombu.\n	t	\N	40	\N	PP	
475	-1	1	Resztą z dzielenia wielomianu \\(w(x)=x^{4}+px^{3}-3x^{2}+qx-14\\) przez \\(x^{2}-x-2\\) jest \\(4x-28\\). Wyznacz współczynniki \\(p\\), \\(q\\) i rozwiaż nierówność \\(w(x)\\geq0\\).\n	t	\N	40	\N	PR	
478	-1	4	Znajdź kąt między wektorami \\(\\vec{a}\\) i \\(\\vec{b}\\) wiedząc, że wektor \\(5\\vec{a}-4\\vec{b}\\) jest prostopadły do wektora \\(2\\vec{a}+4\\vec{b}\\), wektor \\(\\vec{a}-5\\vec{b}\\) jest prostopadły do wektora \\(6\\vec{a}-2\\vec{b}\\).\n	t	\N	40	\N	PR	
479	-1	5	Z wierzchołka O paraboli \\(y^{2}=2x\\) poprowadzono dwie proste wzajemnie prostopadłe i przecinające parabolę w punktach \\(P\\) i \\(Q\\). Wyznacz zbiór punktów płaszczyzny utworzony przez środki ciężkości trójkątów \\(OPQ\\). Sporządź rysunek.\n	t	\N	40	\N	PR	
480	-1	6	W trójkącie o wierzchołkach \\(A(-6,-7)\\), \\(B(8,-9)\\), \\(C(0,10)\\) punkt \\(P\\) jest środkiem boku \\(BC\\), a punkt \\(S\\) jest punktem przecięcia środkowej poprowadzonej z wierzchołka \\(A\\) oraz wysokości opuszczonej na bok \\(AB\\). Oblicz pole trójkąta \\(CSP\\) oraz znajdź równanie okręgu opisanego na nim.\n	t	\N	40	\N	PR	
481	-1	1	Rozwiązać równanie \\(tgx-\\sin{x}=\\frac{1-\\cos{x}}{2\\cos{x}}\\).\n	t	\N	41	\N	PP	
482	-1	2	Narysować wykres funkcji \\(f(x)=2\\sin{x}+|\\sin{x}|\\) i rozwiązać nierówność \\(|f(x)|\\leq \\frac{3\\sqrt{3}}{2}\\).\n	t	\N	41	\N	PP	
483	-1	3	Odcinek \\(CD\\) jest obrazem odcinka o końcach \\(A(1,1)\\) i \\(B(2,0)\\) w jednokładności o środku \\(S(1,-1)\\) i skali \\(k=-2\\). Obliczyć pole czworokąta \\(ABCD\\). Sporządzić rysunek.\n	t	\N	41	\N	PP	
484	-1	4	Wielomian \\(W(x)=x^{3}+ax^{2}+bx+c\\) jest podzielny przez dwumian \\(x+1\\), a jego wykres jest symetryczny względem punktu \\((0,0)\\). Wyznaczyć \\(a\\), \\(b\\), \\(c\\) i rozwiązać nierówność \\((x-1)W(x+2)-(x-2)W(x+1)\\leq 0\\).\n	t	\N	41	\N	PP	
485	-1	5	Punkty \\(A(1,1)\\), \\(B(0,3)\\) są kolejnymi wierzchołkami rombu \\(ABCD\\). Wyznaczyć pozostałe wierzchołki, wiedząc, że jeden z nich leży na prostej \\(x-y-2=0\\). Sporządzić rysunek.\n	t	\N	41	\N	PP	
486	-1	6	W trójkąt równoramienny wpisano okrąg o promieniu \\(r\\). Wyznaczyć pole trójkąta, jeżeli środek okręgu opisanego na tym trójkącie leży na okręgu wpisanym w ten trójkąt. Ile rozwiązań ma to zadanie? Sporządzić rysunek.\n	t	\N	41	\N	PP	
487	-1	1	Narysować wykres funkcji \\(f(x)=\\cos2x-\\sin^{2}x\\) i rozwiązać nierówność \\(f(x)\\geq\\frac{1}{4}\\).\n	t	\N	41	\N	PR	
488	-1	2	Obliczyć pole trójkąta \\(ABC\\) o wierzchołkach \\(A(3,6)\\), \\(B(1,0)\\), wiedząc, że wysokości przecinają się w punkcie \\((4, 4)\\). Sporządzić rysunek.\n	t	\N	41	\N	PR	
489	-1	3	Dla jakiego kąta ostrego \\(\\alpha\\) zachodzi równość \\(\\log_{\\sin\\alpha}(2\\cos^{2}\\alpha+\\sin\\alpha\\cos\\alpha-1)=2\\)?\n	t	\N	41	\N	PR	
490	-1	4	Dla jakiego parametru \\(p\\) wielomian \\(W(x)=x^{3}+px^{2}+11x-6\\) ma trzy pierwiastki, z których jeden jest średnią arytmetyczną pozostałych? Znaleźć wielomian o powyższej własności, którego wszystkie pierwiastki są wymierne.\n	t	\N	41	\N	PR	
491	-1	5	Wyznaczyć równania wszystkich prostych stycznych do każdej z parabol \\(y=(x+1)^{2}\\) oraz \\(y=-(x-3)^{2}-2\\). Sporządzić rysunek.\n	t	\N	41	\N	PR	
492	-1	6	W trójkącie równoramiennym \\(ABC\\) sinus kąta przy wierzchołku \\(C\\) jest równy 3/5. Pod jakim kątem przecinają się środkowe poprowadzone z wierzchołków podstawy \\(AB\\)?\n	t	\N	41	\N	PR	
493	-1	1	Rozwiąż nierówność \\(\\frac{3x-1}{x}\\geq1+\\frac{\\sqrt{1-x}}{x}\\).\n	t	\N	42	\N	PP	
494	-1	2	W zagrodzie jest 10 zwierząt, po parze danego gatunku. Oblicz prawdopodobieństwo, że w zagrodzie zostanie choć jedno zwierzę każdego gatunku, jeśli wypuścimy z niej 4 losowo wybrane zwierzęta.\n	t	\N	42	\N	PP	
495	-1	3	Bez użycia kalkulatora porównaj liczby \\(a=\\sqrt{11-4\\sqrt{7}}\\) oraz \\(b=\\log^{2}2\\cdot \\log250+\\log^{2}5\\cdot log40\\).\n	t	\N	42	\N	PP	
496	-1	4	Wyznacz wszystkie argumenty x, dla których funkcja \\(f(x)=27^{x^{2}}\\cdot 4^{x^{2}(x-3)}\\cdot 3^{x}-6\\cdot 3^{x^{3}+2}\\cdot 2^{2x-7}\\) przyjmuje wartości dodatnie.\n	t	\N	42	\N	PP	
497	-1	5	Wyznacz skalę podobieństwa trójkąta równobocznego opisanego na okręgu do trójkąta równobocznego wpisanego w ten okrąg. Jaki jest stosunek pól tych trójkątów, a jaki stosunek objętości stożka o kącie rozwarcia \\(60^{\\mathrm{o}}\\) opisanego na kuli do objętości podobnego stożka wpisanego w tę kulę?\n	t	\N	42	\N	PP	
498	-1	6	Wśród prostokątów o ustalonej długości przekątnej \\(p\\) wskaz ten o największym polu.\n	t	\N	42	\N	PP	
499	-1	1	Rozwiąż nierówność \\(x+1+\\frac{1}{x-1}\\geq(1+\\frac{1}{x-1})\\sqrt{2-x}\\).\n	t	\N	42	\N	PR	
500	-1	2	Narysuj wykres funkcji \\(f(x)=|1+\\log_{2}\\frac{1}{|1-|x||}|\\), opisz słownie metodę jego konstrukcji oraz zbadaj, dla jakich argumentów spełniona jest nierówność \\(f(x)\\leq 1\\).\n	t	\N	42	\N	PR	
501	-1	3	Rozwiąż równanie logarytmiczne \\(\\log_{(x+2)^{2}}|x-1|=\\log_{|x-1|}\\sqrt{x+2}\\).\n	t	\N	42	\N	PR	
502	-1	4	Trzech alpinistów atakuje szczyt, wchodząc jednocześnie, niezależnie od siebie, z różnych stron góry. Prawdopodobieństwo zdobycia szczytu szlakiem północnym wynosi \\(\\frac{1}{3}\\), szlakiem zachodnim \\(-\\frac{1}{2}\\), a południowym \\(-\\frac{3}{7}\\). Oblicz prawdopodobieństwo, że atak się powiedzie (tzn. przynajmniej jeden z alpinistów zdobędzie szczyt).\n	t	\N	42	\N	PR	
503	-1	5	Oblicz tangens kąta rozwarcia stożka, dla którego kula wpisana w ten stożek zajmuje dokładnie połowę jego objętości.\n	t	\N	42	\N	PR	
504	-1	6	Wyznacz równanie linii będącej zbiorem środków wszystkich okręgów stycznych do prostej \\(y=0\\) i jednocześnie stycznych do okręgu \\(x^{2}+y^{2}=2\\). Wykonaj odpowiedni rysunek.\n	t	\N	42	\N	PR	
505	-1	1	Pewnej mroźnej zimy trzy przeziębione krasnale kupowały w aptece lekarstwa. Pierwszego męczył straszny ból gardła. Kupił więc trzy tabletki do ssania, tabletkę na kaszel i kropelkę do nosa. Zapłacił za wszystko 4 grosze. Drugiemu dokuczał uporczywy kaszel, za tę samą cenę kupił trzy tabletki na kaszel, tabletkę do ssania i kropelkę do nosa. Trzeci miał straszny katar. Poprosił więc o trzy kropelki do nosa, o tabletkę do ssania oraz o tabletkę na kaszel. A dowiedziawszy się, że ma zapłacić 2 grosze, pomyślał chwilkę, kichnął i powiedział do aptekarza:,,Pomylił się Pan!'' Uzasadnić, że krasnal miał rację.\n	t	\N	43	\N	PP	
506	-1	2	Obliczyć, ile kolejnych dodatnich liczb naturalnych podzielnych przez 3 należy dodać do siebie, aby otrzymana suma była równa liczbie \\(115a^{-1}\\), gdzie \\(a=\\frac{1}{3\\cdot 5}+\\frac{1}{5\\cdot 7}+\\frac{1}{7\\cdot 9}+\\ldots+\\frac{1}{691\\cdot 693}\\).\n	t	\N	43	\N	PP	
507	-1	3	Rozwiązać równanie \\(\\sin^{3}x(1+ctgx)+\\cos^{3}x(1+tgx)=\\sin2x+2\\sin^{2}x\\).\n	t	\N	43	\N	PP	
508	-1	4	Rzucamy pięć razy jednorodną kostką do gry. Obliczyć prawdopodobieństwo wyrzucenia sumy oczek większej od 20, jeśli wiadomo, że suma oczek wyrzuconych w trzech pierwszych rzutach wynosi 10.\n	t	\N	43	\N	PP	
509	-1	5	W trójkąt równoramienny, którego ramiona są dwa razy dłuższe od podstawy, wpisano prostokąt w taki sposób, że jeden z boków Prostokąta zawarty jest w podstawie trójkąta. Jakie powinny być wymiary tego prostokąta, aby jego pole było największe? Wyznaczyć wartość tego największego pola.\n	t	\N	43	\N	PP	
510	-1	6	Narysować w prostokątnym układzie współrzędnych wykresy funkcji \\(f(x)=-\\frac{2}{x}\\) oraz \\(g(x)=f(|x|-1)+1\\). Rozwiązać nierówność \\(g(x)\\geq f(x)\\) i zaznaczyć zbiór jej rozwiązań na osi liczbowej.\n	t	\N	43	\N	PP	
511	-1	1	Ojciec i syn obchodzą urodziny tego samego dnia. W roku 2019 podczas uroczystości urodzin zapytano jubilatów, ile maja lat. Ojciec odpowiedział:,,Jeśli wiek mego syna przemnożę przez swój wiek za 31 lat, to otrzymam rok swego urodzenia'' Syn dodał:,,A ja otrzymam rok swego urodzenia, jeśli wiek mego ojca sprzed 16 lat przemnożę przez swój wiek za 33 lata'' W którym roku urodził się każdy z jubilatów?\n	t	\N	43	\N	PR	
512	-1	2	Wyznaczyć dziedzinę naturalną funkcji \\(f(x)=\\log(3^{3x-1}-3^{2x-1}-3^{x+1}+3)\\).\n	t	\N	43	\N	PR	
513	-1	3	Rozwiązać równanie \\(4\\sin{x}\\cdot \\sin{2x}\\cdot \\sin{3x}=\\sin{4x}\\).\n	t	\N	43	\N	PR	
514	-1	4	W dwóch urnach znajdują się kule białe i czarne, przy czym w pierwszej urnie są w kule białe i 6 czarnych, a kostką drugiej jest 7 kul białych i 3 czarne. Rzucamy dwa razy jednorodną kostką do gry. Jeśli suma wyrzuconych oczek jest mniejsza niż 6, losujemy dwie kule z pierwszej urny. Jeśli suma wyrzuconych oczek jest większa niż 9, losujemy dwie kule z drugiej urny. W pozostałych przypadkach losujemy po jednej kuli z każdej urny. Obliczyć prawdopodobieństwo wylosowania dwóch kul białych.\n	t	\N	43	\N	PR	
515	-1	5	Uzasadnić, że dla każdej liczby naturalnej \\(n\\) liczba \\(n^{5}-n\\) jest podzielna przez 5. Czy prawda jest, że jest ona też podzielna przez 30?\n	t	\N	43	\N	PR	
516	-1	6	W trójkąt równoramienny, którego ramiona są długości \\(a\\), a miara kąta zawartego pomiędzy nimi wynosi \\(\\alpha\\), wpisano prostokąt w taki sposób, że jeden z boków prostokąta zawarty jest w jednym z ramion trójkąta. Jakie powinny być wymiary tego prostokąta, aby jego pole było największe? Wyznaczyć wartość tego największego pola.\n	t	\N	43	\N	PR	
517	-1	1	W pierwszej godzinie rowerzysta \\(A\\) jedzie z prędkością 25 km/h, a każdej kolejnej godzinie jedzie ze stałą prędkością mniejszą o 20% w stosunku do prędkości w poprzedniej godzinie. Natomiast rowerzysta \\(B\\) jedzie w pierwszej godzinie z prędkością 8 km/h, a w każdej kolejnej godzinie jedzie ze stałą prędkością większą o 20% w stosunku do prędkości w poprzedniej godzinie. Obaj startują równocześnie z tego samego punktu. Który z nich dotrze prędzej do celu lezącego w odległości 100 km od punktu startu? Po której godzinie jazdy odległość między nimi w zaokrągleniu do pełnych kilometrów będzie największa i ile będzie wynosić? Odpowiedzi uzasadnić bez stosowania obliczeń przybliżonych.\n	t	\N	44	\N	PP	
518	-1	2	W skarbonce jest 5 monet 5 zł i 5 monet 2 zł. Kuba wylosował ze skarbonki 6 monet. Obliczyć prawdopodobieństwo tego, że wystarczy mu pieniędzy na kupno książki w cenie 20 zł.\n	t	\N	44	\N	PP	
519	-1	3	Rozwiązać nierówność \\(2\\log_{2}(3-\\sqrt{2^{x+1}-7})>x\\).\n	t	\N	44	\N	PP	
520	-1	4	Dla jakich wartości parametru \\(m\\) liczby \\(x_{0}\\), \\(y_{0}\\), spełniające układ równań \\begin{array}{l} x+my=2 3x+2y=m \\end{array} są odpowiednio cosinusem i sinusem tego samego kąta \\(\\alpha\\in [0,\\pi]\\). Podać \\(x_{0}\\) i \\(y_{0}\\) dla znalezionych wartości parametru \\(m\\).\n	t	\N	44	\N	PP	
521	-1	5	W ostrosłupie prawidłowym trójkątnym kąt pomiędzy ścianami bocznymi wynosi \\(2\\alpha\\). Niech \\(P\\) będzie spodkiem wysokości ściany bocznej opuszczonej na krawędź boczną. Płaszczyzna równoległa do podstawy przechodząca przez \\(P\\) dzieli ostrosłup na dwie części, z których górna ma objętość \\(V\\). Obliczyć objętość oraz krawędź podstawy ostrosłupa. Podać dziedzinę kąta \\(\\alpha\\).\n	t	\N	44	\N	PP	
522	-1	6	Kąty przy podstawie \\(AB\\) trójkąta są równe \\(\\alpha\\) oraz \\(2\\alpha\\), \\(\\alpha<\\frac{\\pi}{4}\\), a środkowa boku \\(AB\\) ma długość \\(d\\). Znaleźć długości boków trójkąta. Następnie podstawić do wyniku ogólnego dane \\(d=\\sqrt{11}\\) oraz \\(\\sin\\alpha=\\frac{\\sqrt{2}}{4}\\) i wykonać obliczenia.\n	t	\N	44	\N	PP	
523	-1	1	Rozwiązać nierówność \\(\\sqrt{\\sin2x-\\cos2x+1}\\leq 2\\sin{x}\\).\n	t	\N	44	\N	PR	
524	-1	2	Ze zbioru \\(\\{1,2,…,3n\\}\\), \\(n\\geq1\\), wylosowano bez zwracania dwie liczby. Obliczyć prawdopodobieństwo tego, że suma otrzymanych liczb jest mniejsza od \\(4n\\) i co najmniej jedna z nich jest większa od \\(n\\).\n	t	\N	44	\N	PR	
525	-1	3	Stosując zasadę indukcji matematycznej, udowodnić prawdziwość wzoru \\(1^{4}+2^{4}+…+n^{4}+\\frac{1^{2}+2^{2}+…+n^{2}}{5}=\\frac{n^{2}(n+1)^{2}(2n+1)}{10}\\), \\(n\\geq1\\).\n	t	\N	44	\N	PR	
526	-1	4	Dana jest funkcja \\(f(x)=\\frac{1}{3}x^{3}-\\frac{4}{3}x\\). Styczna do wykresu tej funkcji w punkcie \\(A(1,-1)\\) przecina wykres w punkcie \\(B(x_{1},f(x_{1}))\\), a styczna do jej wykresu w punkcie \\(B\\) przecina wykres w punkcie \\(C(x_{2},f(x_{2}))\\). Znaleźć punkty \\(B\\) i \\(C\\) oraz obliczyć tangensy katów trójkąta \\(\\triangle ABC\\). Sporządzić rysunek, dobierając odpowiednie skale na obu osiach.\n	t	\N	44	\N	PR	
527	-1	5	W czworokącie \\(ABCD\\) o bokach \\(|AB|=a\\), \\(|AD|=2a\\) mamy \\(\\vec{AC}=2\\vec{AB}+\\frac{1}{2}\\vec{AD}\\) oraz \\(\\cos\\angle BCD=\\frac{1}{4}\\). Wykazać, że na tym czworokącie można opisać okrąg. Obliczyć promień tego okręgu. Sporządzić rysunek.\n	t	\N	44	\N	PR	
528	-1	6	Podstawą ostrosłupa jest trójkąt równoramienny o kącie przy wierzchołku \\(2\\alpha\\), \\(\\alpha<\\pi/4\\), i podstawie \\(2a\\). Dwie ściany boczne są przystającymi do siebie trójkątami podobnymi, ale nie przystającymi, do podstawy ostrosłupa. Znaleźć cosinus kąta płaskiego przy wierzchołku trzeciej ściany bocznej oraz objętość ostrosłupa. Narysować starannie siatkę tego ostrosłupa dla \\(\\alpha=\\frac{\\pi}{5}\\).\n	t	\N	44	\N	PR	
529	-1	1	Promień podstawy stożka obrotowego zmniejszono o 20%. O ile procent trzeba zwiększyć wysokość tego stożka, żeby jego objętość nie uległa zmianie?\n	t	\N	45	\N	PP	
530	-1	2	Dla jakich wartości parametru \\(m\\) nierówność \\(mx^{2}+(m+1)x+2m<0\\) jest spełniona dla wszystkich \\(x\\in \\mathbb{R}\\)?\n	t	\N	45	\N	PP	
531	-1	3	Określić dziedzinę i uprościć nastepujące wyrażenie: \\(?\\) Następnie obliczyć wartość tego wyrażenia dla \\(a=\\sqrt{3}+\\sqrt{2}\\) i \\( b=5-2\\sqrt{6}\\).\n	t	\N	45	\N	PP	
532	-1	4	Niech \\(f(x)=x^{2}\\). Narysować wykres funkcji \\(g(x)=|f(x+1)-4|\\) i określić liczbę rozwiązań równania \\(g(x)=m\\) w zależności od parametru \\(m\\).\n	t	\N	45	\N	PP	
533	-1	5	Obliczyć pole koła wpisanego w romb o polu 10 i kacie ostrym \\(30^{\\mathrm{o}}\\).\n	t	\N	45	\N	PP	
534	-1	6	Niech \\(A=\\{x\\in \\mathbb{R}:\\frac{3}{2x^{2}+x-6}\\geq\\frac{1}{2x-3}\\}\\) oraz \\(B=\\{x\\in \\mathbb{R}:\\sqrt{x^{2}-4x+4}< x\\}\\). Wyznaczyć i narysować na osi liczbowej zbiory \\(A\\), \\(B\\) oraz \\(A\\backslash B\\), \\(B\\backslash A\\).\n	t	\N	45	\N	PP	
535	-1	1	Pewna liczba pięciocyfrowa zaczyna się (z lewej strony) cyfrą 8. Jeśli cyfrę tę przestawimy z pierwszej pozycji na ostatnią, to otrzymamy liczbę stanowiąca 16% liczby pierwotnej. Znaleźć tę liczbę.\n	t	\N	45	\N	PR	
536	-1	2	Określić dziedzinę i uprościć następujące wyrażenie: \\(\\frac{(\\sqrt{a}+\\sqrt{b})^{2}-4b}{(a-b)(\\sqrt{\\frac{1}{b}}+3\\sqrt{\\frac{1}{a}})^{-1}}:\\frac{a+9b+6\\sqrt{ab}}{\\frac{1}{\\sqrt{b}}+\\frac{1}{\\sqrt{a}}}\\). Następnie wyznaczyć jego wartość dla \\(a=\\sqrt{4-2\\sqrt{3}}\\) i \\(b=\\sqrt{3}+1\\).\n	t	\N	45	\N	PR	
537	-1	3	Narysować wykres funkcji \\(f(x)=\\min\\{\\frac{2x}{x-1},x^{2}\\}\\). Podać wzór funkcji, której wykres jest symetryczny do wykresu funkcji \\(f(x)\\) względem początku układu współrzędnych. Określić liczbę rozwiązań równania \\(f(x)=m\\) w zależności od parametru \\(m\\).\n	t	\N	45	\N	PR	
538	-1	4	Długości boków trójkąta prostokątnego tworzą ciąg arytmetyczny o różnicy \\(p>0\\). Obliczyć stosunek promienia okręgu opisanego na tym trójkącie do promienia okręgu wpisanego w ten trójkąt.\n	t	\N	45	\N	PR	
539	-1	5	Dla jakich wartości parametru \\(m\\) suma sześcianów pierwiastków równania \\(x^{2}+(m-1)x+m=\\frac{7}{4}\\) należy do przedziału \\([-\\frac{1}{2},0\\))?\n	t	\N	45	\N	PR	
540	-1	6	Dane są zbiory \\(A=\\{(x,y)\\in \\mathbb{R}^{2}:9-4\\sqrt{2}\\leq x^{2}+y^{2}<9+4\\sqrt{2}\\}\\) oraz \\(B=\\{(x,y)\\in \\mathbb{R}^{2}:x^{2}+y^{2}<4|x|+4|y|-7\\}\\). Narysować starannie zbiór \\(A\\backslash B\\) i wyznaczyć jego pole. Zadbać o odpowiednią skalę i czytelność rysunku.\n	t	\N	45	\N	PR	
541	-1	1	Pan Kowalski założył dwie lokaty, wpłacając do banku w sumie 10120 zł. Pierwsza z nich ma oprocentowanie 12% w skali roku z półroczną kapitalizacją odsetek, a druga daje 18% zysku, przy czym odsetki są naliczane dopiero po roku. Okazało się, że na obu kontach przybyła mu taka sama kwota. Jakie sumy wpłacił na każdą z lokat i jaki osiagnął zysk? Jaki byłby zysk pana Kowalskiego, gdyby na każdą z lokat wpłacił tę samą sumę 5060 zł?\n	t	\N	46	\N	PP	
542	-1	2	Niech \\(A=\\{x\\in \\mathbb{R}:\\frac{1}{\\sqrt{5-x}}\\geq\\frac{2}{\\sqrt{x+1}}\\}\\) oraz \\(B=\\{x\\in \\mathbb{R}:|x|+|x-1|\\geq3\\}\\). Znaleźć i zaznaczyć na osi liczbowej zbiory \\(A\\), \\(B\\) oraz \\((A\\backslash B)\\cup (B\\backslash A)\\).\n	t	\N	46	\N	PP	
543	-1	3	Uprościć wyrażenie (dla tych \\(a\\), \\(b\\), dla których ma ono sens) \\(?\\). Następnie obliczyć jego wartość dla \\(a=5\\sqrt{5}\\) i \\(b=14-6\\sqrt{5}\\).\n	t	\N	46	\N	PP	
544	-1	4	Odcinek \\(AB\\) jest średnicą okręgu. Styczna w punkcie \\(A\\) i prosta, na której leży cięciwa \\(BC\\) przecinają się w punkcie \\(P\\) odległym od \\(A\\) o \\(4\\sqrt{3}\\). Wyznaczyć promień okręgu oraz długość cięciwy \\(BC\\), wiedząc, że pole trójkąta \\(ABP\\) jest równe \\(8\\sqrt{3}\\).\n	t	\N	46	\N	PP	
545	-1	5	Pole trójkąta równobocznego \\(ABX\\) zbudowanego na przeciwprostokątnej \\(AB\\) trójkąta prostokątnego \\(ABC\\) jest dwa razy większe od pola wyjściowego trójkąta. Niech \\(D\\) będzie środkiem boku \\(AB\\). Wykazać, że trójkąty \\(ABC\\) i \\(ADX\\) są przystające.\n	t	\N	46	\N	PP	
546	-1	6	Pole powierzchni bocznej stożka jest trzy razy większe niż pole jego podstawy. W stożek wpisano walec, którego dolna podstawa jest zawarta w podstawie stożka, a przekrój płaszczyzną zawierającą oś stożka jest kwadratem. Wyznaczyć stosunek objętości walca do objętości stożka.\n	t	\N	46	\N	PP	
547	-1	1	Określić dziedzinę i uprościć następujące wyrażenie \\([\\frac{y\\sqrt[3]{x}}{\\sqrt[3]{x}+\\sqrt{y}}-\\frac{x-y\\sqrt{y}}{x+y\\sqrt{y}}\\frac{y\\sqrt[3]{x^{2}}-y\\sqrt{y}\\sqrt[3]{x}+y^{2}}{\\sqrt[3]{x^{2}}-y}]:\\frac{y^{2}}{\\sqrt[3]{x}+\\sqrt{y}}\\) Następnie wyznaczyć jego wartość dla \\(x=6\\sqrt{3}-10\\) i \\(y=12-6\\sqrt{3}\\).\n	t	\N	46	\N	PR	
548	-1	2	Wyznaczyć sinus kąta przy wierzchołku \\(C\\) w trójkącie równoramiennym, w którym środkowe ramion \\(AC\\) i \\(BC\\) przecinają się pod kątem prostym.\n	t	\N	46	\N	PR	
549	-1	3	Narysować obszar \\(D=\\{(x,y):|y|\\leq x\\leq 4y^{2}\\}\\). Obliczyć pole kwadratu, którego boki są równoległe do osi układu współrzędnych, a wszystkie wierzchołki leżą na krzywej ograniczającej obszar \\(D\\).\n	t	\N	46	\N	PR	
550	-1	4	W trójkącie \\(ABC\\) dane są: \\(|BC|=a\\), \\(|AB|=c\\), \\(\\angle ABC=\\beta\\). Okrąg przechodzący przez punkty \\(B\\) i \\(C\\) przecina boki \\(AB\\) i \\(AC\\) w takich punktach \\(D\\) i \\(E\\), że pole czworokąta \\(BCDE\\) stanowi 75% pola trójkąta \\(ABC\\). Wyznaczyć obwód i pole czworokąta.\n	t	\N	46	\N	PR	
551	-1	5	Basen można na napełnić, otwierając którykolwiek z trzech zaworów. Otwarcie pierwszych dwu pozwala napełnić basen w czasie o 2 godziny dłuższym niż otwarcie drugiego i trzeciego zaworu, natomiast otwarcie zaworów pierwszego i trzeciego pozwala napełnić basen w czasie dwa razy krótszym niż otwarcie dwu pierwszych. Napełnienie basenu, gdy otwarte są wszystkie trzy zawory, trwa 2 godziny 40 minut. Ile trwa napełnienie basenu, gdy otwarty jest tylko jeden zawór?\n	t	\N	46	\N	PR	
552	-1	6	W ostrosłupie prawidłowym czworokątnym przekrój płaszczyzną przechodzącą przez wierzchołek ostrosłupa i środki dwu przeciwległych krawędzi podstawy jest trójkątem równobocznym. Ostrosłup przecięto płaszczyzną przechodzącą przez jedną z krawędzi podstawy prostopadła do przeciwległej ściany bocznej. Obliczyć stosunek objętości brył, na jakie płaszczyzna ta dzieli ostrosłup.\n	t	\N	46	\N	PR	
553	-1	1	Rodzina składa się z pięciorga dzieci i dwojga rodziców. Załóżmy, że dzieci nie mogą wyjść na spacer ani nie mogą zostać w domu bez opieki któregokolwiek z rodziców. W ilu możliwych kombinacjach dzieci mogą wyjść na spacer zakładając, że przynajmniej jedno dziecko idzie na spacer?\n	t	\N	47	\N	PP	
554	-1	2	Na bokach prostokąta o stałym obwodzie \\(4p\\) opisano na średnicach półokręgi leżące na zewnątrz prostokąta. Dla jakich wartości boków prostokąta pole figury ograniczonej krzywą złożoną z tych czterech półokręgów jest najmniejsze? Wykonać staranny rysunek.\n	t	\N	47	\N	PP	
555	-1	3	Punkty \\(A(1,3)\\), \\(B(5,1)\\), \\(C(4,4)\\) są wierzchołkami trójkąta. Obliczyć stosunek pola koła opisanego na tym trójkącie do pola koła wpisanego w ten trójkąt.\n	t	\N	47	\N	PP	
556	-1	4	Liczby \\(x_{1}\\), \\(x_{2}\\) są pierwiastkami równania \\(x^{2}-3x+A=0\\), a liczby \\(x_{3}\\), \\(x_{4}\\) pierwiastkami równania \\(x^{2}-12x+B=0\\). Wiadomo, że liczby \\(x_{1}\\), \\(x_{2}\\), \\(x_{3}\\), \\(x_{4}\\) tworzą ciąg geometryczny. Znaleźć ten ciąg oraz liczby \\(A\\) i \\(B\\).\n	t	\N	47	\N	PP	
557	-1	5	Rozwiązać układ równań: \\begin{array}{l} x^{2}+y^{2}-2x-4y+1=0, |x-1|-y=0, \\end{array} a następnie obliczyć pole obszaru, który jest rozwiązaniem układu nierówności: \\begin{array} x^{2}+y^{2}-2x-4y+1\\leq 0, |x-1|-y\\leq 0. \\end{array}. Sporządzić staranny rysunek.\n	t	\N	47	\N	PP	
558	-1	6	W graniastosłupie prawidłowym czworokątnym okrąg styczny do dwóch boków podstawy i przechodzący przez jej wierzchołek nielezący na żadnym z tych boków ma promień \\(r=2\\). Płaszczyzna przechodząca przez środki krawędzi wychodzących z jednego wierzchołka graniastosłupa tworzy z płaszczyzną jego podstawy kąt \\(45^{\\mathrm{o}}\\). Obliczyć objętość graniastosłupa.\n	t	\N	47	\N	PP	
559	-1	1	Na ile sposobów można na umieścić 6 osób w pokojach dwuosobowych przy założeniu, że pewne dwie ustalone osoby nie chcą mieszkać razem oraz że \\[a)\\] pokoje są jednakowe, a wiec ważne jest kto mieszka z kim, ale nieważne w którym pokoju	t	\N	47	\N	PR	
560	-1	2	Rozwiązać następującą nierówność \\(\\cos^{2}x+\\cos^{3}x+\\cos^{4}x+\\ldots<\\cos{x}+1\\) dla \\(x\\in [0,2\\pi]\\).\n	t	\N	47	\N	PR	
561	-1	3	Pokazać, że dla każdej wartości parametru \\(m\\) wielomian \\(w(x)=x^{3}+(2m-1)x^{2}-(3+2m)x+3\\) ma pierwiastek całkowity. Dla jakich wartości parametru \\(m\\) pierwiastki tego wielomianu tworzą ciąg arytmetyczny?\n	t	\N	47	\N	PR	
562	-1	4	Punkt \\(A\\) należy do obszaru kąta o mierze stopniowej 60. Odległości tego punktu od ramion kąta są równe \\(a\\) i \\(b\\). Wyznaczyć odległość punktu \\(A\\) od wierzchołka kąta. Następnie obliczyć tę odległość dla \\(a=2\\) i \\(b=\\sqrt{3}-1\\).\n	t	\N	47	\N	PR	
563	-1	5	Z punktu \\(A(1,1)\\) wychodzą dwie półproste prostopadłe przecinające oś \\(OX\\) układu współrzędnych. Niech \\(F\\) będzie obszarem kąta prostego wyznaczonego przez te półproste, \\(G\\) zaś zbiorem wszystkich punktów o obydwóch współrzędnych nieujemnych. Wyznaczyć położenie półprostych, dla których pole figury \\(F\\cap G\\) jest najmniejsze.\n	t	\N	47	\N	PR	
564	-1	6	Znaleźć najmniejszą możliwą objętość stożka opisanego na walcu, którego przekrojem osiowym jest kwadrat o boku 2.\n	t	\N	47	\N	PR	
565	-1	1	W urnie znajduje się 9 kul ponumerowanych od 1 do 9. Losujemy bez zwracania 4 kule i dodajemy ich numery. Ile jest możliwych wyników losowania, w których suma wylosowanych numerów jest parzysta, a ile wyników losowania prowadzi do uzyskania liczby nieparzystej?\n	t	\N	48	\N	PP	
566	-1	2	Narysuj na płaszczyźnie krzywą \\(y=|2^{|x-1|}-2|\\) i starannie opisz metodę jej konstrukcji.\n	t	\N	48	\N	PP	
567	-1	3	Wyznacz dziedzinę funkcji \\(f(x)=\\sqrt{\\log_{\\frac{1}{2}}(2x-1)-2\\log_{2}\\frac{1}{x-2}}\\).\n	t	\N	48	\N	PP	
568	-1	4	Rozwiąż równanie \\((\\frac{9}{4})^{x}(\\frac{8}{27})^{x-2}\\log(27-x)-3\\log_{\\frac{1}{10}}\\frac{1}{\\sqrt{27-x}}=0\\).\n	t	\N	48	\N	PP	
569	-1	5	Narysuj w układzie współrzędnych zbiór \\(A=\\{(x,y)\\in \\mathbb{R}^{2}:\\sqrt{(x^{2}-y)^{2}}+1<(|x|+1)^{2}\\}\\).\n	t	\N	48	\N	PP	
570	-1	6	Wśród walców wpisanych w kulę o promieniu \\(R\\) wskaz ten o największym polu powierzchni bocznej. Podaj jego wymiary oraz stosunek pola jego powierzchni całkowitej do pola powierzchni kuli.\n	t	\N	48	\N	PP	
571	-1	1	W finale pewnego konkursu bierze udział 10 osób. Prowadzący wybiera losowo jedną z nich i zadaje jej pytanie finałowe. Obliczyć prawdopodobieństwo, że zapytana osoba udzieli poprawnej odpowiedzi, jeśli wiadomo, że \\(k\\)-ty finalista odpowie poprawnie na pytanie finałowe z prawdopodobieństwem \\(\\frac{1}{2^{k}}\\), gdzie \\(k\\in \\{1,\\ldots,10\\}\\).\n	t	\N	48	\N	PR	
572	-1	2	Rozwiąż równanie \\(\\mathrm{x}^{\\log_{3}x-1}=9\\).\n	t	\N	48	\N	PR	
573	-1	3	Zbadaj, dla jakich argumentów \\(x\\) funkcja \\(f(x)=(2-x)^{\\frac{3x-4}{2-x}}-1\\) przyjmuje wartości ujemne.\n	t	\N	48	\N	PR	
574	-1	4	Podaj dziedzinę i narysuj wykres funkcji \\(f(x)=2|\\log_{2}\\sqrt{|x-1|-1}|\\). Starannie opisz metodę jego konstrukcji. Rozwiąż równanie \\(f(x)=2\\).\n	t	\N	48	\N	PR	
575	-1	5	Narysuj na płaszczyźnie zbiór \\(A=\\{(x,y)\\in \\mathbb{R}^{2}\\): \\(\\log_{|x|}(\\log_{y+1}(|x|+1))\\leq 0\\}\\).\n	t	\N	48	\N	PR	
576	-1	6	Wśród prostopadłościanów wpisanych w kulę o promieniu \\(R\\), których przekątna tworzy kąt \\(\\alpha\\) z jedną ze ścian, wskaz ten o największej objętości. Podaj jego wymiary oraz stosunek jego objętości do objętości kuli. Jaki procent objętości kuli stanowi objętość prostopadłościanu dla kąta \\(\\alpha=45^{\\mathrm{o}}\\)? Wynik podać z dokładnością do jednego promila.\n	t	\N	48	\N	PR	
577	-1	1	Wykaż, że różnica kwadratów dwóch liczb nieparzystych jest podzielna przez 8.\n	t	\N	49	\N	PP	
578	-1	2	Określ dziedzinę wyrażenia \\(w(x,y)=[\\frac{\\sqrt{x}+\\sqrt{y}}{\\sqrt{x}-\\sqrt{y}}-\\frac{4\\sqrt{x}\\sqrt{y}}{x-y}]:[\\frac{1}{\\sqrt{x}+\\sqrt{y}}-\\frac{1}{x-y}]\\). Sprowadź je do najprostszej postaci i oblicz \\(w(3+2\\sqrt{2},3-2\\sqrt{2})\\).\n	t	\N	49	\N	PP	
579	-1	3	Dwie drużyny harcerskie postanowiły zebrać dla ogrodu zoologicznego określoną ilość żołędzi. Pierwsza z nich rozpoczęła pracę półtora dnia wcześniej. W ciągu siedmiu następnych dni pracowały razem i zebrały zaplanowaną ilość żołędzi. Gdyby każda z drużyn pracowała oddzielnie, to druga wykonałaby całą pracę o 3 dni wcześniej od pierwszej. Ile dni potrzebuje każda z drużyn na zebranie tej ilości żołędzi?\n	t	\N	49	\N	PP	
580	-1	4	Wyznacz wartości wszystkich funkcji trygonometrycznych kata ostrego \\(\\alpha\\), wiedząc, że spełnione jest równanie \\(\\frac{2\\sin\\alpha+3\\cos\\alpha}{\\cos\\alpha}=2ctg\\alpha\\).\n	t	\N	49	\N	PP	
581	-1	5	Funkcja liniowa \\(f(x)=ax+b\\) spełnia warunek \\(f(5)-f(3)=4\\). Wyznacz jej wzór, wiedząc, że pole obszaru ograniczonego wykresami funkcji \\(g(x)=a|x|-b\\) oraz \\(h(x)=-a|x|+b\\) jest równe 16. Sporządź rysunek.\n	t	\N	49	\N	PP	
582	-1	6	Niech \\(A=\\{(x,y):|x|\\leq 2,|y|\\leq 2\\}\\) oraz \\(B_{p}=\\{(x,y):|x|+|y|\\leq p\\}\\) dla \\(p>2\\). Narysuj w jednym układzie współrzędnych zbiory \\(A\\) i \\(B_{3}\\). Oblicz pole zbiorów \\(A\\cap B_{3}\\) i \\(A\\cup B_{3}\\). Dla jakiego \\(p\\) zbiór \\(A\\cap B_{p}\\) jest wielokątem foremnym?\n	t	\N	49	\N	PP	
583	-1	1	Wykaż, że jeżeli \\(p\\) jest liczbą pierwszą większą niż 3, to jej czwarta potęga pomniejszona o 1 jest wielokrotnością 48.\n	t	\N	49	\N	PR	
584	-1	2	Określ dziedzinę wyrażenia: \\(w(x,y)=(\\frac{\\sqrt[6]{y}}{\\sqrt{y}-\\sqrt[6]{x^{3}y^{2}}}-\\frac{x}{\\sqrt{xy}-x\\sqrt[3]{y}})[\\frac{1}{\\sqrt{x}-\\sqrt{y}}(\\sqrt[6]{x^{5}}-\\frac{y}{\\sqrt[6]{x}})-\\frac{x-y}{\\sqrt[3]{x^{2}}+\\sqrt[6]{x}\\sqrt{y}}]\\) i sprowadź je do najprostszej postaci. Oblicz \\(w(7+5\\sqrt{2},-7+5\\sqrt{2})\\). Wskazówka: Oblicz najpierw \\((\\sqrt{2}+1)^{3}\\).\n	t	\N	49	\N	PR	
585	-1	3	Trzech informatyków podjęło się naprawy awarii dużego systemu komputerowego. Z wcześniejszych doświadczeń wiadomo, że pierwszy z nich potrzebowałby na realizację tego zlecenia 4 godziny więcej niż drugi, a trzeci pracowałby nad nim dwa razy krócej niż pierwszy. W jakim czasie wykonałby to zadanie każdy z informatyków, jeżeli wiadomo, że, pracując razem, naprawili awarię w ciągu 2 godzin i 40 minut?\n	t	\N	49	\N	PR	
586	-1	4	Wyznacz wartości wszystkich funkcji trygonometrycznych kąta \\(\\alpha\\in (\\frac{\\pi}{2},\\pi)\\), wiedząc, że spełnione jest równanie \\(3\\cos\\alpha-\\frac{1}{\\cos\\alpha}=\\sin\\alpha\\).\n	t	\N	49	\N	PR	
587	-1	5	Dla jakich wartości parametru rzeczywistego \\(m\\) wielomian \\(w(x)=2x^{3}-(2+m)x^{2}+(2m+2)x-m-2\\) ma trzy parami różne pierwiastki rzeczywiste \\(x_{1}\\), \\(x_{2}\\), \\(x_{3}\\), których suma odwrotności jest nieujemna? Sporządź wykres funkcji \\(f(m)=\\frac{1}{x_{1}}+\\frac{1}{x_{2}}+\\frac{1}{x_{3}}\\).\n	t	\N	49	\N	PR	
588	-1	6	Niech \\(A=\\{(x,y):\\sqrt{3}|x|+|y|\\leq \\sqrt{3}\\}\\), \\(B=\\{(x,y):(|x|-1)^{2}+y^{2}\\leq 1\\}\\) oraz \\(C=\\{(x,y):x^{2}+(|y|-\\sqrt{3})^{2}\\leq 1\\}\\). Narysuj w jednym układzie współrzędnych zbiory \\(A\\), \\(B\\) i \\(C\\). Oblicz pole zbioru \\(A\\backslash (B\\cup C)\\).\n	t	\N	49	\N	PR	
589	-1	1	W pierwszym naczyniu było \\(a\\) litrów \\(p\\)-procentowego kwasu siarkowego, w drugim natomiast \\(b\\) litrów \\(q\\)-procentowego kwasu siarkowego. Z każdego z naczyń odlano czwartą część objętości roztworu, a następnie roztwór odlany z drugiego naczynia wlano do pierwszego, a odlany z pierwszego wlano do drugiego naczynia. Okazało się, że po wymieszaniu stężenia roztworów w obu naczyniach były równe. Wyznacz stosunek stężeń wyjściowych roztworów.\n	t	\N	50	\N	PP	
590	-1	2	Uprość następujące wyrażenie, określiwszy uprzednio jego dziedzinę: \\(\\frac{1}{\\sqrt[6]{x^{3}y^{2}}-\\sqrt[6]{y^{5}}}(\\sqrt[3]{x^{2}}-\\frac{y}{\\sqrt[3]{x}})+\\frac{1}{\\sqrt{x}+\\sqrt{y}}:\\frac{\\sqrt[3]{xy}}{x-y}\\). Oblicz wartość tego wyrażenia, przyjmując \\(x=3+2\\sqrt{2}\\) i \\(y=1+\\sqrt{2}\\).\n	t	\N	50	\N	PP	
591	-1	3	Narysuj wykres funkcji \\(f(x)=(\\sinx+\\frac{1}{2}\\cosx)^{2}+(\\frac{1}{2}\\sinx+\\cosx)^{2}\\). Wyznacz zbiór jej wartości i rozwiąż nierówność \\(f(x)\\geq\\frac{5}{4}\\).\n	t	\N	50	\N	PP	
592	-1	4	Niech \\(A=\\{(x,y)\\in \\mathbb{R}^{2}:|x|\\leq 2,|y|\\leq 2\\}\\) oraz \\(B=\\{(x,y)\\in \\mathbb{R}^{2}:|xy|\\leq |x|+1\\}\\). Zaznacz na płaszczyźnie zbiory \\(A\\backslash B\\) oraz \\(A\\backslash (A\\backslash B)\\).\n	t	\N	50	\N	PP	
593	-1	5	W kwadrat wpisano trójkąt równoboczny w taki sposób, że jeden z jego wierzchołków jest w wierzchołku kwadratu, a dwa pozostałe leżą na przeciwległych bokach kwadratu. Wyznacz stosunek pola trójkąta do pola kwadratu.\n	t	\N	50	\N	PP	
594	-1	6	W ostrosłupie prawidłowym trójkątnym podstawa ma długość \\(a\\), a krawędź boczna jest do niej nachylona pod kątem \\(\\alpha\\). Oblicz objętość i pole powierzchni bocznej bryły.\n	t	\N	50	\N	PP	
595	-1	1	W pierwszym naczyniu było \\(a\\) litrów \\(p\\)-procentowego kwasu siarkowego, w drugim natomiast \\(b\\) litrów \\(q\\)-procentowego kwasu siarkowego. Z obu naczyń odlano równe objętości roztworów, a następnie roztwór odlany z drugiego naczynia wlano do pierwszego, a odlany z pierwszego wlano do drugiego naczynia. Okazało się, że po wymieszaniu stężenia roztworów w obu naczyniach były równe. Jakie ilości roztworów odlano z każdego z naczyń?\n	t	\N	50	\N	PR	
596	-1	2	Uprość wyrażenie (dla tych x, y, dla których ma ono sens) \\((\\frac{1}{\\sqrt[3]{x}-\\sqrt[3]{y}}-\\frac{3\\sqrt[3]{xy}}{x-y}-\\frac{\\sqrt[3]{y}-\\sqrt[3]{x}}{\\sqrt[3]{x^{2}}+\\sqrt[3]{xy}+\\sqrt[3]{y^{2}}})\\frac{x-y}{4\\sqrt[3]{xy}}\\). Następnie oblicz jego wartość dla \\(x=5\\sqrt{2}-7\\) i \\(y=5\\sqrt{2}+7\\).\n	t	\N	50	\N	PR	
597	-1	3	Narysuj wykres funkcji \\(f(x)=\\sin^{2}x+\\sinx\\cosx\\). Wyznacz zbiór jej wartości i rozwiąż nierówność \\(f(x)\\geq1\\).\n	t	\N	50	\N	PR	
598	-1	4	Niech \\(A=\\{(x,y)\\in \\mathbb{R}^{2}:|x-1|+|y-1|\\leq 3\\}\\) oraz \\(B=\\{(x,y)\\in \\mathbb{R}^{2}:|x-y|\\leq |x+y|\\}\\). Zaznacz na płaszczyźnie zbiór \\(A\\cap B\\) i oblicz jego pole.\n	t	\N	50	\N	PR	
599	-1	5	W romb \\(ABCD\\) o boku \\(a\\) i kącie ostrym \\(\\alpha\\) wpisano trójkąt \\(APQ\\) tak, że punkt \\(P\\) na boku \\(BC\\) a punkt \\(Q\\) na boku \\(DC\\), przy czym \\(|PC|=|DQ|=x\\). Dla jakiego \\(x\\) pole trójkąta jest najmniejsze?\n	t	\N	50	\N	PR	
600	-1	6	W ostrosłupie prawidłowym trójkątnym ściana boczna jest nachylona do podstawy pod kątem \\(\\alpha\\). Wyznacz kąt między ścianami bocznymi.\n	t	\N	50	\N	PR	
601	-1	1	Udowodnić, że różnica kwadratów dwu dowolnych liczb całkowitych niepodzielnych przez 3 jest podzielna przez 3.\n	t	\N	51	\N	PP	
602	-1	2	Rozwiązać równanie w przedziale \\([0,2\\pi]\\). \\(\\sin^{2}{(\\frac{\\pi+x}{2})}-\\sin{(\\frac{\\pi-x}{2})}=1\\).\n	t	\N	51	\N	PP	
603	-1	3	Dla jakiego parametru \\(m\\) równanie \\((\\log_{2}^{2}m-1)\\cdot x^{2}+2(\\log_{2}m-1)x+2=0\\) ma tylko jedno rozwiązanie?\n	t	\N	51	\N	PP	
604	-1	4	Jedna z krawędzi bocznych ostrosłupa, którego podstawą jest kwadrat o boku \\(a\\), jest prostopadła do podstawy. Najdłuższa krawędź boczna jest nachylona do podstawy pod kątem \\(60^{\\mathrm{o}}\\). Obliczyć pole powierzchni całkowitej oraz sumę długości krawędzi ostrosłupa. Sporządzić rysunek.\n	t	\N	51	\N	PP	
605	-1	5	Jaką krzywą tworzą punkty płaszczyzny, z których odcinek o końcach \\(A(1,0)\\) i \\(B(0,1)\\) jest widoczny pod kątem \\(30^{\\mathrm{o}}\\).\n	t	\N	51	\N	PP	
606	-1	6	Narysować wykres funkcji \\(f(x)=\\frac{|x+1|-1}{|x-1|}\\) i na jego podstawie wyznaczyć przedziały jej monotoniczności oraz najmniejszą wartość w przedziale \\([-2,\\frac{1}{2}]\\).\n	t	\N	51	\N	PP	
607	-1	1	Udowodnić tożsamość \\(x^{3}+y^{3}+z^{3}-3xyz=(x+y+z)(x^{2}+y^{2}+z^{2}-xy-xz-yz)\\) i wykorzystując ją, usunąć niewymierność z mianownika ułamka \\(\\frac{1}{1+\\sqrt[3]{2}+\\sqrt[3]{4}}\\).\n	t	\N	51	\N	PR	
608	-1	2	Jaką krzywą tworzą środki wszystkich okręgów stycznych równocześnie do osi \\(Ox\\) i do okręgu \\(x^{2}+(y-1)^{2}=1\\)?\n	t	\N	51	\N	PR	
609	-1	3	Wyznaczyć wszystkie styczne do wykresu funkcji \\(f(x)=\\frac{x-3}{x-2}\\) prostopadłe do prostej \\(4x+y+1=0\\). Sporządzić staranne wykresy wszystkich rozważanych krzywych.\n	t	\N	51	\N	PR	
610	-1	4	Narysować wykres funkcji \\(f(x)=1-\\frac{2^{x}}{1-2^{x}}+(\\frac{2^{x}}{1-2^{x}})^{2}-(\\frac{2^{x}}{1-2^{x}})^{3}+(\\frac{2^{x}}{1-2^{x}})^{4}-\\ldots\\) bdcej sumą nieskończonego szeregu geometrycznego. Rozwiązać nierówność \\(f(x)>4^{x}-21\\cdot 2^{x-2}+2\\).\n	t	\N	51	\N	PR	
611	-1	5	Dla jakiego parametru \\(m\\) równanie \\((log_{4}m+1)\\cdot x^{2}+3\\log_{4}m\\cdot x+2\\log_{4}m-1=0\\) ma dwa pierwiastki \\(x_{1}\\), \\(x_{2}\\) spełniające warunki: \\(x_{1}< x_{2}\\), oraz \\(2(x_{2}^{2}-x_{1}^{2})>x_{2}^{4}-x_{1}^{4}\\)?\n	t	\N	51	\N	PR	
612	-1	6	W ostrosłupie prawidłowym trójkątnym tangens kąta nachylenia ściany bocznej do podstawy jest równy \\(2\\sqrt{3}\\). Obliczyć stosunek objętości kuli wpisanej do objętości kuli opisanej na ostrosłupie.\n	t	\N	51	\N	PR	
613	-1	1	Dwa samochody wyjechały jednocześnie z jednego miejsca i jadą w tym samym kierunku. Pierwszy jedzie z prędkością 50 km/h, a drugi z prędkością 40 km/h. Pół godziny później z tego samego miejsca i w tym samym kierunku wyruszył trzeci samochód, który dopędził pierwszy samochód o 1 godzinę i 30 minut później niż drugi. Z jaka prędkością jechał trzeci samochód?\n	t	\N	52	\N	PP	
614	-1	2	Proste \\(y=2\\), \\(y=2x+10\\) oraz \\(4x+3y=0\\) wyznaczają trójkąt \\(ABC\\). Otrzymany trójkąt przekształcono używając najpierw jednokładności o środku \\(O(0,0)\\) i skali \\(k=3\\), a następnie symetrii względem osi \\(OX\\). Wyznaczyć współrzędne obrazu oraz współrzędne obrazów jego wierzchołków. Obliczyć pole trójkąta \\(ABC\\) i jego obrazu w tym przekształceniu.\n	t	\N	52	\N	PP	
615	-1	3	Rozważmy zbiór wszystkich prostokątów wpisanych w kwadrat o boku długości \\(a\\) w taki sposób, że boki tego prostokąta są parami równoległe do przekątnych danego kwadratu. Obliczyć długości boków tego prostokąta, który ma największe pole.\n	t	\N	52	\N	PP	
616	-1	4	Podstawa trójkąta równobocznego jest średnica koła o promieniu \\(r\\). Obliczyć stosunek pola powierzchni części trójkąta lezącej na zewnątrz koła do pola powierzchni części trójkąta lezącej wewnątrz kola.\n	t	\N	52	\N	PP	
617	-1	5	W stoku pole podstawy, pole powierzchni kuli wpisanej w ten stożek i pole powierzchni bocznej stożka, tworzą ciąg arytmetyczny. Znaleźć cosinus kąta nachylenia tworzącej stożka do płaszczyzny jego podstawy.\n	t	\N	52	\N	PP	
618	-1	6	Okrąg \\(O_{1}\\) o promieniu 1 jest styczny do ramion kąta o mierze \\(\\frac{\\pi}{3}\\). Mniejszy od niego okrąg \\(O_{2}\\) jest styczny zewnętrznie do niego i obu ramion tego kąta. Procedurę kontynuujemy. Znaleźć sumę obwodów pięciu otrzymanych kolejno w ten sposób okręgów. Dla jakiego \\(n\\) suma obwodów ciągu tych okręgów jest większa od \\(\\frac{299}{100}\\pi\\)?\n	t	\N	52	\N	PP	
619	-1	1	Do punktu \\(A\\) po dwóch prostoliniowych drogach jada ze stałymi prędkościami samochód i rower. W chwili początkowej samochód, rower i punkt \\(A\\) tworzą trójkąt prostokątny. Gdy samochód przejechał 25 km trójkąt, którego dwa wierzchołki przesunęły się, stał się trójkątem równobocznym. Znaleźć odległość między samochodem a rowerem w chwili początkowej, jeśli w momencie dotarcia samochodu do punktu \\(A\\) rower miał jeszcze do przejechania 12 km.\n	t	\N	52	\N	PR	
620	-1	2	Na płaszczyźnie dane są punkty \\(A\\) i \\(B\\). Udowodnij, że złożenie symetrii środkowej względem punktu \\(A\\) z przesunięciem o wektor \\(\\vec{AB}\\) jest symetrią środkową względem środka odcinka \\(\\vec{AB}\\).\n	t	\N	52	\N	PR	
621	-1	3	Wyznaczyć największą wartość pola prostokąta, którego dwa wierzchołki leżą na paraboli \\(y=x^{2}-4x+4\\), a dwa pozostałe na cięciwie paraboli wyznaczonej przez prostą \\(y=3\\).\n	t	\N	52	\N	PR	
622	-1	4	Suma trzech początkowych wyrazów nieskończonego ciągu geometrycznego wynosi 6, \\(\\mathrm{a}\\) suma \\(S\\) wszystkich wyrazów tego ciągu równa się \\(\\frac{16}{\\mathrm{3}}\\). Dla jakich \\(n\\) naturalnych spełniona jest nierówność \\(|S-S_{n}|<\\frac{1}{96}\\)?\n	t	\N	52	\N	PR	
623	-1	5	Dwa jednakowe stożki złożono podstawami. Obliczyć objętość powstałej bryły, jeśli promień kuli wpisanej w tę bryłę wynosi \\(R\\), a punkt styczności kuli i stożka dzieli tworzącą stożka w stosunku \\(m\\) do \\(n\\)?\n	t	\N	52	\N	PR	
624	-1	6	W czworościan foremny \\(ABCD\\) o krawędzi długości \\(d\\) wpisano kulę. Prowadzimy płaszczyzny równoległe do ścian czworościanu i styczne do wpisanej kuli odcinając w ten sposób cztery przystające czworościany foremne. W każdy z nich wpisujemy kulę i postępujemy analogicznie jak z kulą wpisaną w czworościan \\(ABCD\\). Obliczyć sumę objętości wszystkich kul wpisanych w otrzymane czworościany, jeśli proces ten kontynuujemy nieskończenie wiele razy.\n	t	\N	52	\N	PR	
625	-1	1	Dla jakich kątów \\(\\alpha\\in \\langle0\\), \\(2\\pi\\rangle\\) równanie \\(2x^{2}-2(2\\cos\\alpha-1)x+2\\cos^{2}\\alpha-5\\cos\\alpha+2=0\\) ma dwa różne pierwiastki rzeczywiste?\n	t	\N	53	\N	PP	
626	-1	2	Dane są punkty \\(A(-2,0)\\), \\(B(2,4)\\) oraz \\(C(1,5)\\). Oblicz pole trapezu \\(ABCD\\), wiedząc, że punkt \\(D\\) jest jednakowo odległy od punktów \\(A\\) i \\(B\\).\n	t	\N	53	\N	PP	
627	-1	3	W trójkącie równoramiennym kąt przy podstawie ma miarę \\(30^{\\mathrm{o}}\\). Oblicz stosunek długości promienia okręgu opisanego na trójkącie do długości promienia okręgu wpisanego w trójkąt.\n	t	\N	53	\N	PP	
628	-1	4	Płaszczyzna przechodząca przez środek dolnej podstawy walca jest nachylona do podstawy pod kątem \\(\\alpha\\) i przecina górną podstawę walca wzdłuż cięciwy długości \\(a\\). Cięciwa ta odcina łuk, na którym oparty jest kąt środkowy o mierze \\(120^{\\mathrm{o}}\\). Oblicz objętość walca.\n	t	\N	53	\N	PP	
629	-1	5	Niech \\(x_{1}\\) i \\(x_{2}\\) będą pierwiastkami wielomianu \\(p(x)=x^{2}-x+a\\), a \\(x_{3}\\) i \\(x_{4}\\) - pierwiastkami wielomianu \\(q(x)=x^{2}-4x+b\\). Dla jakich \\(a\\) i \\(b\\) liczby \\(x_{1}\\), \\(x_{2}\\), \\(x_{3}\\), \\(x_{4}\\) są kolejnymi wyrazami ciągu geometrycznego?\n	t	\N	53	\N	PP	
630	-1	6	Na dwóch zewnętrznie stycznych kulach opisano stożek tak, że środki tych kul leżą na wysokości stożka. Promień mniejszej kuli jest równy \\(r\\), a stosunek objętości kul wynosi 8. Oblicz pole powierzchni bocznej stożka.\n	t	\N	53	\N	PP	
631	-1	1	Dane są proste \\(y=4x\\) i \\(y=x-2\\) oraz punkt \\(M=(1,2)\\). Wyznacz współrzędne punktów \\(A\\) i \\(B\\) leżących odpowiednio na danych prostych takich, że punkty \\(A\\), \\(B\\), \\(M\\) są współliniowe oraz \\(\\frac{|AM|}{|BM|}=\\frac{2}{3}\\).\n	t	\N	53	\N	PR	
632	-1	2	W równoległoboku o kącie ostrym \\(60^{\\mathrm{o}}\\) stosunek kwadratów długości przekątnych wynosi 1:3. Oblicz stosunek długości dwóch sąsiednich boków.\n	t	\N	53	\N	PR	
633	-1	3	Niech \\(a\\), \\(b\\), \\(c\\), \\(d\\) będą kolejnymi liczbami naturalnymi. Pokaz, że wielomian \\(w(x)=ax^{3}-\\) \\(bx^{2}-cx+d\\) ma trzy pierwiastki rzeczywiste, wśród których co najmniej jeden jest liczbą całkowitą. Dla jakich parametrów \\(a\\), \\(b\\), \\(c\\), \\(d\\) suma tych pierwiastków jest największa?\n	t	\N	53	\N	PR	
634	-1	4	Dla jakich kątów \\(\\alpha\\in \\langle0, 2\\pi\\rangle\\) spełniona jest nierówność \\(2^{\\sin^{2}x}+\\sqrt[4]{2}\\cdot 2^{\\cos^{2}x}\\leq \\sqrt{2}+\\sqrt[4]{8}\\)?\n	t	\N	53	\N	PR	
635	-1	5	W ostrosłupie prawidłowym czworokątnym o krawędzi podstawy \\(a\\) stosunek długości krawędzi podstawy do wysokości wynosi 2:3. Ostrosłup przecięto płaszczyzna przechodzącą przez krawędź podstawy i prostopadłą do przeciwległej ściany bocznej. Oblicz pole otrzymanego przekroju.\n	t	\N	53	\N	PR	
636	-1	6	Wierzchołek stożka jest środkiem kuli a brzeg podstawy stożka zawiera się w powierzchni kuli. Pole powierzchni całkowitej stożka stanowi \\(\\frac{1}{4}\\) pola powierzchni kuli. Oblicz stosunek objętości stożka do objętości kuli.\n	t	\N	53	\N	PR	
637	-1	1	Uprość wyrażenie \\(\\frac{x^{-1}-a^{-1}}{a^{-1}-b(ax)^{-1}}\\), jeśli \\(x=\\frac{1}{(a+b)^{-1}}-(\\frac{a+b}{a^{2}+b^{2}})^{-1}\\).\n	t	\N	54	\N	PP	
638	-1	2	W jakim stosunku należy zmieszać dwa roztwory cukru o stężeniach 5% oraz 23%, aby otrzymać roztwór 17%?\n	t	\N	54	\N	PP	
639	-1	3	Rozwiąż nierówność \\(x-|5x-2|<0\\).\n	t	\N	54	\N	PP	
642	-1	6	Narysuj wykres funkcji \\(f(x)=?\\). Wykorzystując wykres, wyznacz zbiór wartości funkcji \\(f(x)\\) oraz najmniejszą i największą wartość funkcji w przedziale \\([0, 4]\\).\n	t	\N	54	\N	PP	
643	-1	1	Dla jakich wartości parametru \\(a\\) równanie \\(2x^{2}-ax+a+2=0\\) ma pierwiastki spełniające warunek \\(|x_{2}-x_{1}|=1\\)?\n	t	\N	54	\N	PR	
644	-1	2	W sali ustawiono krzesła i trzyosobowe ławki, w łącznej liczbie 268. Do sali weszło 480 osób. Po zajęciu wszystkich miejsc siedzących proporcja osób stojących do siedzących okazała się większa niż \\(\\frac{39}{160}\\), ale mniejsza niż \\(\\frac{41}{160}\\). Ile ławek i ile krzeseł było w sali?\n	t	\N	54	\N	PR	
645	-1	3	Rozwiąż nierówność \\(|||||x|-1|-2|-1|-2|\\leq 3\\).\n	t	\N	54	\N	PR	
646	-1	4	Oblicz \\(x^{4}+y^{4}+z^{4}\\), jeśli \\(x+y+z=0\\) oraz \\(x^{2}+y^{2}+z^{2}=3\\).\n	t	\N	54	\N	PR	
647	-1	5	Rozwiąż układ równań \\begin{array}{l} x-|y+1|=1, x^{2}+y=10. \\end{array} Podaj jego interpretację geometryczną (narysuj starannie obie dane powyższymi równaniami krzywe).\n	t	\N	54	\N	PR	
648	-1	6	Wyznacz wartości parametru \\(p\\), dla których równanie \\((p-1)x^{4}-2(p+4)x^{2}+p=0\\) ma cztery pierwiastki różne od 0.\n	t	\N	54	\N	PR	
649	-1	1	Znaleźć miejsca zerowe i naszkicować wykres funkcji \\(f(x)=x^{2}-x-5|x|+5\\). Wyznaczyć najmniejszą i największą wartość tej funkcji na przedziale \\([-5, 5]\\).\n	t	\N	55	\N	PP	
650	-1	2	Romb o boku \\(a\\) i kącie ostrym \\(\\alpha\\) podzielono na trzy części o równych polach odcinkami mającymi wspólny początek w wierzchołku kąta ostrego i końce na bokach rombu. Obliczyć długości tych odcinków. Wykonać odpowiedni rysunek.\n	t	\N	55	\N	PP	
651	-1	3	Odcinek o końcach \\(A(-1,-1)\\) i \\(B(3,2)\\) jest podstawą trapezu. Druga podstawa jest trzy razy dłuższa i ma środek w punkcie \\(P(1,5)\\). Wyznaczyć współrzędne pozostałych wierzchołków trapezu i obliczyć jego pole.\n	t	\N	55	\N	PP	
652	-1	4	W okrąg o promieniu 1 wpisujemy trójkąt równoboczny i zakreślamy odcinki koła, które leżą na zewnątrz trójkąta. W otrzymany trójkąt wpisujemy okrąg i powtarzamy procedurę, zaznaczając za każ dym razem odcinki kolejnych kół znajdujące się poza kolejnym trójkątem. Obliczyć pole zaznaczonego obszaru po sześciu krokach, czyli po narysowaniu sześciu trójkątów.\n	t	\N	55	\N	PP	
653	-1	5	Sześcian podzielono na dwie bryły płaszczyzną przechodzącą przez krawędź podstawy. Jedna część ma 5, a druga 6 ścian. Pole powierzchni całkowitej bryły, która ma 5 ścian jest równa połowie pola powierzchni sześcianu. Wyznaczyć tangens kąta nachylenia płaszczyzny dzielącej sześcian do płaszczyzny podstawy.\n	t	\N	55	\N	PP	
654	-1	6	Rozważamy zbiór liczb całkowitych dodatnich równych co najwyżej 1800, które nie dzielą się ani przez 5 ani przez 6. Obliczyć sumę liczb z tego zbioru. Ile w tym zbiorze jest liczb parzystych, a ile nieparzystych?\n	t	\N	55	\N	PP	
655	-1	1	Punkty \\(A(2,0)\\) i \\(B(0,2)\\) są wierzchołkami podstawy trójkąta równoramiennego. Znaleźć współrzędne wierzchołka \\(C\\), wiedząc, że środkowe \\(AD\\) i \\(BE\\) są prostopadle.\n	t	\N	55	\N	PR	
656	-1	2	Trzy pierwiastki wielomianu o współczynnikach całkowitych tworzą ciąg arytmetyczny. Suma tych pierwiastków jest równa 21, a iloczyn 315. Pokazać, że wartość wielomianu w dowolnym punkcie, który jest liczbą nieparzystą, jest podzielna przez 48.\n	t	\N	55	\N	PR	
657	-1	3	W trójkącie równobocznym o boku długości \\(a\\) przeprowadzamy prostą przechodząca przez środek wysokości nachyloną do niej pod kątem \\(30^{\\mathrm{o}}\\) Odcina ona od trójkąta trapez. Obliczyć pole i obwód tego trapezu oraz objętość i pole powierzchni bryły powstałej z jego obrotu dookoła dłuższej podstawy.\n	t	\N	55	\N	PR	
658	-1	4	W trójkąt równoboczny o boku długości 1 wpisano kwadrat. Następnie w pozostałą część (nad kwadratem) znów wpisano kwadrat, itd. Jaką długość ma bok kwadratu w \\(n\\)-tym kroku? Podać wzór ciągu \\(P_{n}\\) określającego sumę pól wpisanych kwadratów po \\(n\\) krokach, a następnie obliczyć jego granicę.\n	t	\N	55	\N	PR	
659	-1	5	W okrąg o promieniu \\(r\\) wpisano trapez, którego podstawą jest średnica okręgu. Dla jakiego kąta przy podstawie pole trapezu jest największe?\n	t	\N	55	\N	PR	
660	-1	6	Znaleźć dziedzinę oraz przedziały monotoniczności funkcji \\(f(x)=1+\\frac{2x}{x^{2}-3}+(\\frac{2x}{x^{2}-3})^{2}+\\ldots\\). Naszkicować wykres tej funkcji oraz zbadać liczbę rozwiązań równania \\(f(x)=m\\) w zależności od parametru \\(m\\).\n	t	\N	55	\N	PR	
661	-1	1	W ciągu arytmetycznym suma wyrazów od drugiego do piątego wynosi 50 i jest ona równa iloczynowi wyrazu czwartego i piątego. Znajdź pierwszy wyraz i różnicę ciągu.\n	t	\N	56	\N	PP	
662	-1	2	Punkt \\(A(1,1)\\) jest wierzchołkiem trójkąta równobocznego wpisanego w okrąg o środku w punkcie \\((2,0)\\). Wyznacz współrzędne pozostałych wierzchołków trójkąta. Rozwiązanie zilustruj starannym rysunkiem.\n	t	\N	56	\N	PP	
666	-1	6	Wyznacz wszystkie liczby x z przedziału \\([0,2\\pi]\\) spełniające równanie \\(1+2\\sin{x}+2^{2}\\sin^{2}x+\\cdots+2^{n-1}\\sin^{n-1}x=\\frac{1-2^{n}\\sin^{n}x}{1-\\sqrt{2}\\sin2x}\\) dla każdej liczby naturalnej \\(n\\geq1\\).\n	t	\N	56	\N	PP	
667	-1	1	Wyznacz wszystkie liczby rzeczywiste x, dla których funkcja \\(f(x)=\\frac{x^{2}-\\sqrt{2-x}}{x-1}-x\\) przyjmuje wartości nieujemne.\n	t	\N	56	\N	PR	
668	-1	2	Rozwiąż równanie \\(1+3^{-3\\sin^{2}x}+3^{-6\\sin^{2}x}+3^{-9\\sin^{2}x}+\\cdots=\\frac{3}{3-3^{\\sin^{2}x}}\\), którego lewa strona jest sumą nieskończonego ciągu geometrycznego.\n	t	\N	56	\N	PR	
669	-1	3	Dana jest liczba \\(\\alpha\\in (0,1)\\cup (1,\\infty)\\) oraz ciąg liczbowy \\((a_{n})\\) taki, że \\(a=2^{a_{1}}\\) oraz \\(a=\\sqrt[n]{2^{a_{n}}}\\) dla każdego naturalnego \\(n\\). Wyznacz liczbę naturalną \\(m\\), dla której suma początkowych wyrazów ciągu \\((a_{n})\\) jest 5050 razy większa od pierwszego wyrazu.\n	t	\N	56	\N	PR	
670	-1	4	Drzewa rosnące przed galerią handlową zostaną przed świętami ozdobione jednobarwnymi diodami LED. Na ile sposobów można na wykonać iluminację świąteczną, jeśli wiadomo, że drzew jest 6, każde drzewo zostanie podświetlone na jeden z 3 kolorów, a każdy kolor zostanie wykorzystany co najmniej raz?\n	t	\N	56	\N	PR	
663	-1	3	W konkursie matematycznym trzy początkowe miejsca zostały przyznane Asi, Basi, Kasi, Kamilowi i Rafałowi. Ile jest możliwych rozstrzygnięć konkursu, jeżeli wiadomo, że każde z miejsc IIII zostało przyznane?\n	t	\N	56	\N	PP	Kombinatoryka
671	-1	5	Krzywa \\(\\Gamma\\) jest zbiorem punktów płaszczyzny, których odległość od punktu \\(A(-\\frac{2}{3},0)\\) jest trzy razy mniejsza od odległości od punktu \\(B(2,-8)\\). Opisz krzywą równaniem i zbadaj, dla jakich wartości rzeczywistego parametru \\(m\\) prosta \\(mx-y-3m-1=0\\) ma dokładnie 2 punkty wspólne z krzywą \\(\\Gamma\\). Rozwiązanie zilustruj rysunkiem.\n	t	\N	56	\N	PR	
56	-1	2	Spośród 20 pytań egzaminacyjnych uczeń zna odpowiedź na 12 pytań. Jakie jest prawdopodobieństwo, że uczeń zda egzamin, jeśli przyjęta jest następująca zasada: uczeń losuje dwa pytania i jeśli na oba odpowie dobrze, to egzamin jest zdany, a jeśli tylko na jedno pytanie odpowie dobrze, to losuje jeszcze jedno pytanie i musi na nie odpowiedzieć poprawnie, żeby zdać egzamin?\n	t	\N	5	\N	PR	Rachunek prawdopodobieństwa
2	-1	2	Dane są trzy wektory: \\(\\vec{a}=[1,-2]\\), \\(\\vec{b}=[-2,-1]\\), \\(\\vec{c}=[3,4]\\). Dla jakich rzeczywistych parametrów \\(t\\) i \\(s\\), wektory \\(\\vec{AB}=t\\vec{a}\\), \\(\\vec{BC}=s\\vec{b}\\) oraz \\(\\vec{CA}=\\vec{c}\\) tworzą trójkąt \\(ABC\\)? Znaleźć współrzędne środka ciężkości otrzymanego trójkąta, przyjmując \\(A(0,0)\\). Sporządzić staranny rysunek.\n	t	\N	1	\N	PP	Geometria analityczna
61	-1	1	Wyznacz miarę kąta ostrego \\(\\alpha\\), wiedząc, że \\(\\cos\\alpha+\\sin\\alpha=\\frac{1}{\\sin\\alpha}\\).\n	t	\N	6	\N	PP	Trygonometria
151	-1	1	Na ile sposobów można na wybrać 5 kart z talii 52 kart tak, aby mieć przynajmniej po jednej karcie w każdym z czterech kolorów? \\(A\\) jaka jest odpowiedź, gdy wybieramy 6 kart z talii?\n	t	\N	13	\N	PR	Kombinatoryka
244	-1	4	Niech \\(ABCDEF\\) będzie sześciokątem foremnym. Wykaż, że \\(\\vec{AB}+\\vec{AC}+\\vec{AD}+\\vec{AE}+\\vec{AF}=3\\vec{AD}\\).\n	t	\N	21	\N	PP	Planimetria
672	-1	6	Rozwiąż nierówność \\(\\sqrt{\\frac{1}{2}\\log_{2}(x^{4}-2x^{3}+x^{2})}\\geq4\\log_{4}\\sqrt{x^{2}-x}\\).\n	t	\N	56	\N	PR	
665	-1	5	Rozwiąż nierówność \\(5^{1-x^{4}}\\cdot 2^{x^{2}(x^{2}-1)}>16^{x^{2}-1}\\cdot 5^{5-5x^{2}}\\).\n	t	\N	56	\N	PP	Funkcje wykładnicze
664	-1	4	Opisz równaniem i narysuj w układzie współrzędnych zbiór punktów płaszczyzny, których odległość od punktu \\(A(-2,-1)\\) jest dwa razy większa od odległości od punktu \\(B(1,2)\\).\n	t	\N	56	\N	PP	Geometria analityczna
1	-1	1	W zawodach szachowych bierze udział pewna ilość zawodników, przy czym każdy zawodnik gra z każdym innym dokładnie raz. Ilu było zawodników, jeśli wiadomo, że rozegrano 55 partii? Ile rozegrano by partii w tych zawodach, gdyby jeden z zawodników zrezygnował z zawodów rozegrawszy cztery partie?\n	t	\N	1	\N	PP	Kombinatoryka
30	-1	6	W stożek o promieniu podstawy \\(R\\) wpisano stożek o osiem razy mniejszej objętości. Wysokość małego stożka jest zawarta w wysokości dużego stożka, jego wierzchołek jest w środku podstawy, a okrąg ograniczający podstawę małego stożka jest zawarty w powierzchni bocznej dużego stożka. Obliczyć \\(\\frac{r}{R}\\), gdzie \\(r\\) oznacza promień podstawy stożka wpisanego.\n	t	\N	3	\N	PP	Stereometria
43	-1	1	Punkty \\(A(0,1)\\), \\(B(4,3)\\) są dwoma kolejnymi wierzchołkami równoległoboku \\(ABCD\\), a \\(S(2,3)\\) punktem przecięcia przekątnych. Posługując się rachunkiem wektorowym, wyznaczyć pozostałe wierzchołki równoległoboku oraz wierzchołki równoległoboku \\(A'B'C'D'\\) otrzymanego przez obrót \\(ABCD\\) o kąt \\(90^{\\mathrm{o}}\\) wokół punktu \\((0,0)\\) w kierunku przeciwnym do ruchu wskazówek zegara. Sprawdzić, że \\(A'B'C'D'\\) jest obrazem \\(ABCD\\) w przekształceniu \\(T_{2}\\mathrm{o}O\\mathrm{o}T_{1}\\), gdzie \\(T_{1}\\) jest przesunięciem o wektor \\([0, 1]\\), O - obrotem o kąt \\(90^{o}\\) wokół punktu \\((0,0)\\) w kierunku przeciwnym do ruchu wskazówek zegara, a \\(T_{2}\\) - przesunięciem o wektor [1, 0].\n	t	\N	4	\N	PR	Geometria analityczna
52	-1	4	Wysokość rombu o boku \\(a\\) dzieli jeden z jego boków na dwie części w stosunku 1 : 2. Wyznacz długości przekątnych rombu oraz promień okręgu wpisanego w ten romb.\n	t	\N	5	\N	PP	Planimetria
41	-1	5	Punkty \\(A(0,1)\\), \\(B(4,3)\\) są dwoma kolejnymi wierzchołkami równoległoboku \\(ABCD\\), a \\(S(2,3)\\) punktem przecięcia przekątnych. Posługując się rachunkiem wektorowym, wyznaczyć pozostałe wierzchołki równoległoboku oraz wierzchołki równoległoboku otrzymanego przez obrót \\(ABCD\\) wokół punktu \\(A\\) o \\(90^{\\mathrm{o}}\\) w kierunku przeciwnym do ruchu wskazówek zegara.\n	t	\N	4	\N	PP	Geometria analityczna
71	-1	5	W trójkącie równoramiennym \\(ABC\\) kąt przy wierzchołku \\(C\\) ma miarę \\(20^{\\mathrm{o}}\\). Z wierzchołków \\(A\\) i \\(B\\) poprowadzono półproste pod kątami \\(50^{\\mathrm{o}}\\) i \\(60^{\\mathrm{o}}\\) względem podstawy, przecinające ramiona \\(AC\\) i \\(BC\\) w punktach \\(D\\) i \\(E\\) odpowiednio. Wyznacz miarę kąta \\(BDE\\). \\(WSK\\). Poprowadź półprosta z punktu \\(A\\) przecinająca odcinek \\(BD\\) w punkcie \\(G\\), a bok \\(BC\\) w takim punkcie \\(F\\), że \\(\\angle BAF=60^{\\mathrm{o}}\\) i przyjrzyj się czworokątowi \\(DGEF\\).\n	t	\N	6	\N	PR	Planimetria
83	-1	5	Odcinek o końcach \\(A(\\frac{5}{2},\\frac{\\sqrt{3}}{2})\\), \\(B(\\frac{5}{2},\\frac{3\\sqrt{3}}{2})\\) jest\n                bokiem wielokąta foremnego wpisanego w okrąg styczny do osi \\(Ox\\). Wyznacz równanie tego okręgu i\n                współrzędne pozostałych wierzchołków wielokąta. Ile rozwiązań ma to zadanie? Sporządź rysunek.\n            	t	\N	7	\N	PR	Geometria analityczna
100	-1	4	Narysuj wykres funkcji \\(f(x)=?\\). Na jego podstawie wyznacz: zbiór wartości funkcji \\(f(x)\\) oraz liczbę rozwiązań równania \\(f(x)=m\\) w zależności od parametru \\(m\\).\n	t	\N	9	\N	PP	
102	-1	6	Przekrój ostrosłupa prawidłowego czworokątnego płaszczyzną przechodzącą przez wierzchołek i przekątną jego podstawy jest trójkątem równobocznym. W ostrosłup wpisano sześcian, którego dolna podstawa jest zawarta w podstawie ostrosłupa, a wierzchołki górnej podstawy sześcianu leżą na krawędziach ostrosłupa. Oblicz stosunek objętości sześcianu do objętości ostrosłupa.\n	t	\N	9	\N	PP	Stereometria
119	-1	5	Na stożku o promieniu podstawy \\(R\\) opisano ostrosłup prawidłowy czworokątny, a w stożek ten wpisano ostrosłup prawidłowy sześciokątny. Stosunek pól powierzchni bocznych obu ostrosłupów wynosi \\(k\\). Wyznacz zakres zmienności parametru \\(k\\), a dla \\(k=\\frac{11}{8}\\) oblicz wysokość stożka i wykonać staranne rysunki rozważanych brył.\n	t	\N	10	\N	PR	Stereometria
128	-1	2	Dla jakiego rzeczywistego parametru \\(m\\) równanie \\(\\frac{m+1}{mx}-\\frac{x}{m}=1+\\frac{m}{x}\\) ma dwa pierwiastki będące sinusem i cosinusem kąta z przedziału \\((\\frac{\\pi}{2},\\pi)\\)?\n	t	\N	11	\N	PR	Funkcje trygonometryczne
129	-1	3	Dane są liczby: \\(m=\\frac{\\left(\\begin{array}{l} 6 4 \\end{array}\\right)\\left(\\begin{array}{l} 8 2 \\end{array}\\right)}{\\left(\\begin{array}{l} 7 3 \\end{array}\\right)}\\), \\(n=\\frac{(\\sqrt{2})^{-4}(\\frac{1}{4})^{-\\frac{5}{2}}\\sqrt[4]{3}}{(\\sqrt[4]{4})^{5}\\cdot \\sqrt{32}\\cdot 27^{-\\frac{1}{4}}}\\). Wyznaczyć \\(k\\) tak, by liczby \\(m\\), \\(k\\), \\(n\\) były odpowiednio: pierwszym, drugim i trzecim wyrazem ciągu geometrycznego, a następnie wyznaczyć sumę wszystkich wyrazów nieskończonego ciągu geometrycznego, którego pierwszymi trzema wyrazami są \\(m\\), \\(k\\), \\(n\\). Ile wyrazów tego ciągu należy wziąć, by ich suma przekroczyła 95% sumy wszystkich wyrazów?\n	t	\N	11	\N	PR	Ciągi
\.


--
-- Name: arkusze_edycjaegzaminu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.arkusze_edycjaegzaminu_id_seq', 1, false);


--
-- Name: arkusze_egzamin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.arkusze_egzamin_id_seq', 1, false);


--
-- Name: arkusze_organizacja_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.arkusze_organizacja_id_seq', 19, true);


--
-- Name: arkusze_plik_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.arkusze_plik_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 136, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1747, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 34, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 95, true);


--
-- Name: glowna_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.glowna_post_id_seq', 1, false);


--
-- Name: model_elementtablic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.model_elementtablic_id_seq', 1, false);


--
-- Name: model_przedmiot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.model_przedmiot_id_seq', 1, false);


--
-- Name: model_przedmiot_podstawa_programowa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.model_przedmiot_podstawa_programowa_id_seq', 1, false);


--
-- Name: model_zagadnienie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.model_zagadnienie_id_seq', 1, false);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 131, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 410, true);


--
-- Name: webscraping_odwiedzonewitryny_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.webscraping_odwiedzonewitryny_id_seq', 1, false);


--
-- Name: webscraping_zebranezasoby_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.webscraping_zebranezasoby_id_seq', 1, false);


--
-- Name: zasoby_autor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.zasoby_autor_id_seq', 1, false);


--
-- Name: zasoby_organizacja_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.zasoby_organizacja_id_seq', 19, true);


--
-- Name: zasoby_zasob_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.zasoby_zasob_id_seq', 56, true);


--
-- Name: zasoby_zrodlozadan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.zasoby_zrodlozadan_id_seq', 51, true);


--
-- Name: zbior_mathtag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.zbior_mathtag_id_seq', 60, true);


--
-- Name: zbior_rozwiazanie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.zbior_rozwiazanie_id_seq', 1, false);


--
-- Name: zbior_temat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.zbior_temat_id_seq', 108, true);


--
-- Name: zbior_zadanie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.zbior_zadanie_id_seq', 672, true);


--
-- Name: arkusze_edycjaegzaminu arkusze_edycjaegzaminu_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_edycjaegzaminu
    ADD CONSTRAINT arkusze_edycjaegzaminu_pkey PRIMARY KEY (id);


--
-- Name: arkusze_egzamin arkusze_egzamin_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_egzamin
    ADD CONSTRAINT arkusze_egzamin_pkey PRIMARY KEY (id);


--
-- Name: arkusze_organizacja arkusze_organizacja_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_organizacja
    ADD CONSTRAINT arkusze_organizacja_pkey PRIMARY KEY (id);


--
-- Name: arkusze_organizacja arkusze_organizacja_symbol_3ccea7f0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_organizacja
    ADD CONSTRAINT arkusze_organizacja_symbol_3ccea7f0_uniq UNIQUE (symbol);


--
-- Name: arkusze_plik arkusze_plik_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_plik
    ADD CONSTRAINT arkusze_plik_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: glowna_post glowna_post_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.glowna_post
    ADD CONSTRAINT glowna_post_pkey PRIMARY KEY (id);


--
-- Name: model_elementtablic model_elementtablic_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_elementtablic
    ADD CONSTRAINT model_elementtablic_pkey PRIMARY KEY (id);


--
-- Name: model_przedmiot model_przedmiot_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_przedmiot
    ADD CONSTRAINT model_przedmiot_pkey PRIMARY KEY (id);


--
-- Name: model_przedmiot_podstawa_programowa model_przedmiot_podstawa_programowa_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_przedmiot_podstawa_programowa
    ADD CONSTRAINT model_przedmiot_podstawa_programowa_pkey PRIMARY KEY (id);


--
-- Name: model_przedmiot_podstawa_programowa model_przedmiot_podstawa_przedmiot_id_zagadnienie_f1e11f11_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_przedmiot_podstawa_programowa
    ADD CONSTRAINT model_przedmiot_podstawa_przedmiot_id_zagadnienie_f1e11f11_uniq UNIQUE (przedmiot_id, zagadnienie_id);


--
-- Name: model_zagadnienie model_zagadnienie_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_zagadnienie
    ADD CONSTRAINT model_zagadnienie_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: webscraping_odwiedzonewitryny webscraping_odwiedzonewitryny_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.webscraping_odwiedzonewitryny
    ADD CONSTRAINT webscraping_odwiedzonewitryny_pkey PRIMARY KEY (id);


--
-- Name: webscraping_zebranezasoby webscraping_zebranezasoby_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.webscraping_zebranezasoby
    ADD CONSTRAINT webscraping_zebranezasoby_pkey PRIMARY KEY (id);


--
-- Name: zasoby_autor zasoby_autor_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_autor
    ADD CONSTRAINT zasoby_autor_pkey PRIMARY KEY (id);


--
-- Name: zasoby_organizacja zasoby_organizacja_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_organizacja
    ADD CONSTRAINT zasoby_organizacja_pkey PRIMARY KEY (id);


--
-- Name: zasoby_organizacja zasoby_organizacja_symbol_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_organizacja
    ADD CONSTRAINT zasoby_organizacja_symbol_key UNIQUE (symbol);


--
-- Name: zasoby_zasob zasoby_zasob_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_zasob
    ADD CONSTRAINT zasoby_zasob_pkey PRIMARY KEY (id);


--
-- Name: zasoby_zrodlozadan zasoby_zrodlozadan_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_zrodlozadan
    ADD CONSTRAINT zasoby_zrodlozadan_pkey PRIMARY KEY (id);


--
-- Name: zbior_mathtag zbior_mathtag_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_mathtag
    ADD CONSTRAINT zbior_mathtag_pkey PRIMARY KEY (id);


--
-- Name: zbior_mathtag zbior_mathtag_symbol_f610e5fd_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_mathtag
    ADD CONSTRAINT zbior_mathtag_symbol_f610e5fd_uniq UNIQUE (symbol);


--
-- Name: zbior_rozwiazanie zbior_rozwiazanie_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_rozwiazanie
    ADD CONSTRAINT zbior_rozwiazanie_pkey PRIMARY KEY (id);


--
-- Name: zbior_temat zbior_temat_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_temat
    ADD CONSTRAINT zbior_temat_pkey PRIMARY KEY (id);


--
-- Name: zbior_zadanie zbior_zadanie_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_zadanie
    ADD CONSTRAINT zbior_zadanie_pkey PRIMARY KEY (id);


--
-- Name: arkusze_edycjaegzaminu_dotyczy_id_c23691e4; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX arkusze_edycjaegzaminu_dotyczy_id_c23691e4 ON public.arkusze_edycjaegzaminu USING btree (dotyczy_id);


--
-- Name: arkusze_egzamin_rodzic_id_e789d197; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX arkusze_egzamin_rodzic_id_e789d197 ON public.arkusze_egzamin USING btree (rodzic_id);


--
-- Name: arkusze_egzamin_tworzy_id_6166073b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX arkusze_egzamin_tworzy_id_6166073b ON public.arkusze_egzamin USING btree (organizacja_id);


--
-- Name: arkusze_organizacja_symbol_3ccea7f0_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX arkusze_organizacja_symbol_3ccea7f0_like ON public.arkusze_organizacja USING btree (symbol varchar_pattern_ops);


--
-- Name: arkusze_plik_dotyczy_id_63a10795; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX arkusze_plik_dotyczy_id_63a10795 ON public.arkusze_plik USING btree (dotyczy_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: model_przedmiot_podstawa_programowa_przedmiot_id_742b9c64; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX model_przedmiot_podstawa_programowa_przedmiot_id_742b9c64 ON public.model_przedmiot_podstawa_programowa USING btree (przedmiot_id);


--
-- Name: model_przedmiot_podstawa_programowa_zagadnienie_id_39e22893; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX model_przedmiot_podstawa_programowa_zagadnienie_id_39e22893 ON public.model_przedmiot_podstawa_programowa USING btree (zagadnienie_id);


--
-- Name: model_zagadnienie_rodzic_id_21b2c1b7; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX model_zagadnienie_rodzic_id_21b2c1b7 ON public.model_zagadnienie USING btree (rodzic_id);


--
-- Name: model_zagadnienie_wiedza_id_2f88db3c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX model_zagadnienie_wiedza_id_2f88db3c ON public.model_zagadnienie USING btree (wiedza_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: webscraping_odwiedzonewitryny_zrodlo_id_c8dba5c1; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX webscraping_odwiedzonewitryny_zrodlo_id_c8dba5c1 ON public.webscraping_odwiedzonewitryny USING btree (zrodlo_id);


--
-- Name: webscraping_zebranezasoby_pochodzenie_id_216338a0; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX webscraping_zebranezasoby_pochodzenie_id_216338a0 ON public.webscraping_zebranezasoby USING btree (pochodzenie_id);


--
-- Name: zasoby_organizacja_symbol_c375265c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX zasoby_organizacja_symbol_c375265c_like ON public.zasoby_organizacja USING btree (symbol varchar_pattern_ops);


--
-- Name: zasoby_zasob_autor_id_59ad8d15; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX zasoby_zasob_autor_id_59ad8d15 ON public.zasoby_zasob USING btree (autor_id);


--
-- Name: zasoby_zasob_pochodzenie_id_6b5f01e1; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX zasoby_zasob_pochodzenie_id_6b5f01e1 ON public.zasoby_zasob USING btree (pochodzenie_id);


--
-- Name: zasoby_zrodlozadan_organizator_id_771598c4; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX zasoby_zrodlozadan_organizator_id_771598c4 ON public.zasoby_zrodlozadan USING btree (organizator_id);


--
-- Name: zbior_mathtag_symbol_f610e5fd_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX zbior_mathtag_symbol_f610e5fd_like ON public.zbior_mathtag USING btree (symbol text_pattern_ops);


--
-- Name: zbior_rozwiazanie_dotyczy_id_7825208e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX zbior_rozwiazanie_dotyczy_id_7825208e ON public.zbior_rozwiazanie USING btree (dotyczy_id);


--
-- Name: zbior_temat_rodzic_id_1e2f348d; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX zbior_temat_rodzic_id_1e2f348d ON public.zbior_temat USING btree (rodzic_id);


--
-- Name: arkusze_edycjaegzaminu arkusze_edycjaegzami_dotyczy_id_c23691e4_fk_arkusze_e; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_edycjaegzaminu
    ADD CONSTRAINT arkusze_edycjaegzami_dotyczy_id_c23691e4_fk_arkusze_e FOREIGN KEY (dotyczy_id) REFERENCES public.arkusze_egzamin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: arkusze_egzamin arkusze_egzamin_organizacja_id_acad3186_fk_arkusze_o; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_egzamin
    ADD CONSTRAINT arkusze_egzamin_organizacja_id_acad3186_fk_arkusze_o FOREIGN KEY (organizacja_id) REFERENCES public.arkusze_organizacja(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: arkusze_egzamin arkusze_egzamin_rodzic_id_e789d197_fk_arkusze_egzamin_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_egzamin
    ADD CONSTRAINT arkusze_egzamin_rodzic_id_e789d197_fk_arkusze_egzamin_id FOREIGN KEY (rodzic_id) REFERENCES public.arkusze_egzamin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: arkusze_plik arkusze_plik_dotyczy_id_63a10795_fk_arkusze_edycjaegzaminu_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.arkusze_plik
    ADD CONSTRAINT arkusze_plik_dotyczy_id_63a10795_fk_arkusze_edycjaegzaminu_id FOREIGN KEY (dotyczy_id) REFERENCES public.arkusze_edycjaegzaminu(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: model_przedmiot_podstawa_programowa model_przedmiot_pods_przedmiot_id_742b9c64_fk_model_prz; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_przedmiot_podstawa_programowa
    ADD CONSTRAINT model_przedmiot_pods_przedmiot_id_742b9c64_fk_model_prz FOREIGN KEY (przedmiot_id) REFERENCES public.model_przedmiot(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: model_przedmiot_podstawa_programowa model_przedmiot_pods_zagadnienie_id_39e22893_fk_model_zag; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_przedmiot_podstawa_programowa
    ADD CONSTRAINT model_przedmiot_pods_zagadnienie_id_39e22893_fk_model_zag FOREIGN KEY (zagadnienie_id) REFERENCES public.model_zagadnienie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: model_zagadnienie model_zagadnienie_rodzic_id_21b2c1b7_fk_model_zagadnienie_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_zagadnienie
    ADD CONSTRAINT model_zagadnienie_rodzic_id_21b2c1b7_fk_model_zagadnienie_id FOREIGN KEY (rodzic_id) REFERENCES public.model_zagadnienie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: model_zagadnienie model_zagadnienie_wiedza_id_2f88db3c_fk_model_elementtablic_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.model_zagadnienie
    ADD CONSTRAINT model_zagadnienie_wiedza_id_2f88db3c_fk_model_elementtablic_id FOREIGN KEY (wiedza_id) REFERENCES public.model_elementtablic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: webscraping_odwiedzonewitryny webscraping_odwiedzo_zrodlo_id_c8dba5c1_fk_webscrapi; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.webscraping_odwiedzonewitryny
    ADD CONSTRAINT webscraping_odwiedzo_zrodlo_id_c8dba5c1_fk_webscrapi FOREIGN KEY (zrodlo_id) REFERENCES public.webscraping_odwiedzonewitryny(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: webscraping_zebranezasoby webscraping_zebranez_pochodzenie_id_216338a0_fk_webscrapi; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.webscraping_zebranezasoby
    ADD CONSTRAINT webscraping_zebranez_pochodzenie_id_216338a0_fk_webscrapi FOREIGN KEY (pochodzenie_id) REFERENCES public.webscraping_odwiedzonewitryny(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zasoby_zasob zasoby_zasob_autor_id_59ad8d15_fk_zasoby_autor_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_zasob
    ADD CONSTRAINT zasoby_zasob_autor_id_59ad8d15_fk_zasoby_autor_id FOREIGN KEY (autor_id) REFERENCES public.zasoby_autor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zasoby_zasob zasoby_zasob_pochodzenie_id_6b5f01e1_fk_zasoby_zrodlozadan_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_zasob
    ADD CONSTRAINT zasoby_zasob_pochodzenie_id_6b5f01e1_fk_zasoby_zrodlozadan_id FOREIGN KEY (pochodzenie_id) REFERENCES public.zasoby_zrodlozadan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zasoby_zrodlozadan zasoby_zrodlozadan_organizator_id_771598c4_fk_arkusze_o; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zasoby_zrodlozadan
    ADD CONSTRAINT zasoby_zrodlozadan_organizator_id_771598c4_fk_arkusze_o FOREIGN KEY (organizator_id) REFERENCES public.arkusze_organizacja(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zbior_rozwiazanie zbior_rozwiazanie_dotyczy_id_7825208e_fk_zbior_zadanie_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_rozwiazanie
    ADD CONSTRAINT zbior_rozwiazanie_dotyczy_id_7825208e_fk_zbior_zadanie_id FOREIGN KEY (dotyczy_id) REFERENCES public.zbior_zadanie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zbior_temat zbior_temat_rodzic_id_1e2f348d_fk_zbior_temat_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.zbior_temat
    ADD CONSTRAINT zbior_temat_rodzic_id_1e2f348d_fk_zbior_temat_id FOREIGN KEY (rodzic_id) REFERENCES public.zbior_temat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

