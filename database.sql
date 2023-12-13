--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.0 (Debian 16.0-1.pgdg120+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: booking_reservations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking_reservations (
    id bigint NOT NULL,
    booking_uid uuid NOT NULL,
    hotel_uid uuid NOT NULL,
    user_uid uuid NOT NULL,
    payment_uid uuid NOT NULL,
    date_start date NOT NULL,
    date_end date NOT NULL,
    comment character varying(255) NOT NULL,
    date_create timestamp with time zone NOT NULL
);


ALTER TABLE public.booking_reservations OWNER TO postgres;

--
-- Name: booking_reservations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.booking_reservations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.booking_reservations_id_seq OWNER TO postgres;

--
-- Name: booking_reservations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.booking_reservations_id_seq OWNED BY public.booking_reservations.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: hotel_hotels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hotel_hotels (
    id bigint NOT NULL,
    hotel_uid uuid NOT NULL,
    title character varying(40) NOT NULL,
    short_text character varying(255) NOT NULL,
    photo character varying(80) NOT NULL,
    rooms integer NOT NULL,
    location character varying(80) NOT NULL,
    cost integer NOT NULL,
    cities character varying(30) NOT NULL
);


ALTER TABLE public.hotel_hotels OWNER TO postgres;

--
-- Name: hotel_hotels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hotel_hotels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hotel_hotels_id_seq OWNER TO postgres;

--
-- Name: hotel_hotels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hotel_hotels_id_seq OWNED BY public.hotel_hotels.id;


--
-- Name: loyalty_userloyalty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loyalty_userloyalty (
    id bigint NOT NULL,
    user_uid uuid NOT NULL,
    status_loyalty character varying(10) NOT NULL,
    discount integer NOT NULL,
    balance integer NOT NULL
);


ALTER TABLE public.loyalty_userloyalty OWNER TO postgres;

--
-- Name: loyalty_userloyalty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loyalty_userloyalty_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.loyalty_userloyalty_id_seq OWNER TO postgres;

--
-- Name: loyalty_userloyalty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loyalty_userloyalty_id_seq OWNED BY public.loyalty_userloyalty.id;


--
-- Name: payment_payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_payment (
    id bigint NOT NULL,
    payment_uid uuid NOT NULL,
    status character varying(10) NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.payment_payment OWNER TO postgres;

--
-- Name: payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payment_payment_id_seq OWNER TO postgres;

--
-- Name: payment_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment_payment.id;


--
-- Name: rating_commentlikes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rating_commentlikes (
    id bigint NOT NULL,
    comment_uid uuid NOT NULL,
    hotel_uid uuid NOT NULL,
    comment_text text NOT NULL,
    comment_date timestamp with time zone NOT NULL,
    comment_likes integer NOT NULL,
    comment_dislikes integer NOT NULL,
    avatar character varying(30) NOT NULL,
    username character varying(255) NOT NULL,
    user_uid uuid NOT NULL
);


ALTER TABLE public.rating_commentlikes OWNER TO postgres;

--
-- Name: rating_commentlikes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rating_commentlikes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rating_commentlikes_id_seq OWNER TO postgres;

--
-- Name: rating_commentlikes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rating_commentlikes_id_seq OWNED BY public.rating_commentlikes.id;


--
-- Name: rating_hotellikes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rating_hotellikes (
    id bigint NOT NULL,
    hotel_uid uuid NOT NULL,
    hotel_likes integer NOT NULL,
    hotel_dislikes integer NOT NULL
);


ALTER TABLE public.rating_hotellikes OWNER TO postgres;

--
-- Name: rating_hotellikes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rating_hotellikes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rating_hotellikes_id_seq OWNER TO postgres;

--
-- Name: rating_hotellikes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rating_hotellikes_id_seq OWNED BY public.rating_hotellikes.id;


--
-- Name: rating_likecomment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rating_likecomment (
    id bigint NOT NULL,
    comment_uid uuid NOT NULL,
    user_uid uuid NOT NULL,
    "like" boolean NOT NULL,
    dislike boolean NOT NULL
);


ALTER TABLE public.rating_likecomment OWNER TO postgres;

--
-- Name: rating_likecomment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rating_likecomment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rating_likecomment_id_seq OWNER TO postgres;

--
-- Name: rating_likecomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rating_likecomment_id_seq OWNED BY public.rating_likecomment.id;


--
-- Name: rating_likehotel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rating_likehotel (
    id bigint NOT NULL,
    user_uid uuid NOT NULL,
    hotel_uid uuid NOT NULL,
    "like" boolean NOT NULL,
    dislike boolean NOT NULL
);


ALTER TABLE public.rating_likehotel OWNER TO postgres;

--
-- Name: rating_likehotel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rating_likehotel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rating_likehotel_id_seq OWNER TO postgres;

--
-- Name: rating_likehotel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rating_likehotel_id_seq OWNED BY public.rating_likehotel.id;


--
-- Name: session_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.session_users (
    id bigint NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    user_uid uuid NOT NULL,
    role character varying(30) NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    avatar character varying(30) NOT NULL
);


ALTER TABLE public.session_users OWNER TO postgres;

--
-- Name: session_users_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.session_users_groups (
    id bigint NOT NULL,
    users_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.session_users_groups OWNER TO postgres;

--
-- Name: session_users_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.session_users_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.session_users_groups_id_seq OWNER TO postgres;

--
-- Name: session_users_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.session_users_groups_id_seq OWNED BY public.session_users_groups.id;


--
-- Name: session_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.session_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.session_users_id_seq OWNER TO postgres;

--
-- Name: session_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.session_users_id_seq OWNED BY public.session_users.id;


--
-- Name: session_users_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.session_users_user_permissions (
    id bigint NOT NULL,
    users_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.session_users_user_permissions OWNER TO postgres;

--
-- Name: session_users_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.session_users_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.session_users_user_permissions_id_seq OWNER TO postgres;

--
-- Name: session_users_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.session_users_user_permissions_id_seq OWNED BY public.session_users_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: booking_reservations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_reservations ALTER COLUMN id SET DEFAULT nextval('public.booking_reservations_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: hotel_hotels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_hotels ALTER COLUMN id SET DEFAULT nextval('public.hotel_hotels_id_seq'::regclass);


--
-- Name: loyalty_userloyalty id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loyalty_userloyalty ALTER COLUMN id SET DEFAULT nextval('public.loyalty_userloyalty_id_seq'::regclass);


--
-- Name: payment_payment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_payment ALTER COLUMN id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);


--
-- Name: rating_commentlikes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_commentlikes ALTER COLUMN id SET DEFAULT nextval('public.rating_commentlikes_id_seq'::regclass);


--
-- Name: rating_hotellikes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_hotellikes ALTER COLUMN id SET DEFAULT nextval('public.rating_hotellikes_id_seq'::regclass);


--
-- Name: rating_likecomment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_likecomment ALTER COLUMN id SET DEFAULT nextval('public.rating_likecomment_id_seq'::regclass);


--
-- Name: rating_likehotel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_likehotel ALTER COLUMN id SET DEFAULT nextval('public.rating_likehotel_id_seq'::regclass);


--
-- Name: session_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users ALTER COLUMN id SET DEFAULT nextval('public.session_users_id_seq'::regclass);


--
-- Name: session_users_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users_groups ALTER COLUMN id SET DEFAULT nextval('public.session_users_groups_id_seq'::regclass);


--
-- Name: session_users_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.session_users_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add reservations	7	add_reservations
26	Can change reservations	7	change_reservations
27	Can delete reservations	7	delete_reservations
28	Can view reservations	7	view_reservations
29	Can add hotels	8	add_hotels
30	Can change hotels	8	change_hotels
31	Can delete hotels	8	delete_hotels
32	Can view hotels	8	view_hotels
33	Can add user loyalty	9	add_userloyalty
34	Can change user loyalty	9	change_userloyalty
35	Can delete user loyalty	9	delete_userloyalty
36	Can view user loyalty	9	view_userloyalty
37	Can add payment	10	add_payment
38	Can change payment	10	change_payment
39	Can delete payment	10	delete_payment
40	Can view payment	10	view_payment
41	Can add like hotel	11	add_likehotel
42	Can change like hotel	11	change_likehotel
43	Can delete like hotel	11	delete_likehotel
44	Can view like hotel	11	view_likehotel
45	Can add comment likes	12	add_commentlikes
46	Can change comment likes	12	change_commentlikes
47	Can delete comment likes	12	delete_commentlikes
48	Can view comment likes	12	view_commentlikes
49	Can add hotel likes	13	add_hotellikes
50	Can change hotel likes	13	change_hotellikes
51	Can delete hotel likes	13	delete_hotellikes
52	Can view hotel likes	13	view_hotellikes
53	Can add like comment	14	add_likecomment
54	Can change like comment	14	change_likecomment
55	Can delete like comment	14	delete_likecomment
56	Can view like comment	14	view_likecomment
57	Can add user	15	add_users
58	Can change user	15	change_users
59	Can delete user	15	delete_users
60	Can view user	15	view_users
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: booking_reservations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.booking_reservations (id, booking_uid, hotel_uid, user_uid, payment_uid, date_start, date_end, comment, date_create) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	booking	reservations
8	hotel	hotels
9	loyalty	userloyalty
10	payment	payment
11	rating	likehotel
12	rating	commentlikes
13	rating	hotellikes
14	rating	likecomment
15	session	users
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-11-07 00:57:53.82489+00
2	auth	0001_initial	2023-11-07 00:57:53.903269+00
3	admin	0001_initial	2023-11-07 00:57:53.924846+00
4	admin	0002_logentry_remove_auto_add	2023-11-07 00:57:53.932637+00
5	admin	0003_logentry_add_action_flag_choices	2023-11-07 00:57:53.940325+00
6	contenttypes	0002_remove_content_type_name	2023-11-07 00:57:53.954948+00
7	auth	0002_alter_permission_name_max_length	2023-11-07 00:57:53.963827+00
8	auth	0003_alter_user_email_max_length	2023-11-07 00:57:53.97131+00
9	auth	0004_alter_user_username_opts	2023-11-07 00:57:53.978366+00
10	auth	0005_alter_user_last_login_null	2023-11-07 00:57:53.986189+00
11	auth	0006_require_contenttypes_0002	2023-11-07 00:57:53.988544+00
12	auth	0007_alter_validators_add_error_messages	2023-11-07 00:57:53.995926+00
13	auth	0008_alter_user_username_max_length	2023-11-07 00:57:54.007497+00
14	auth	0009_alter_user_last_name_max_length	2023-11-07 00:57:54.015255+00
15	auth	0010_alter_group_name_max_length	2023-11-07 00:57:54.023894+00
16	auth	0011_update_proxy_permissions	2023-11-07 00:57:54.032353+00
17	auth	0012_alter_user_first_name_max_length	2023-11-07 00:57:54.039792+00
18	booking	0001_initial	2023-11-07 00:57:54.05085+00
19	booking	0002_reservations_date_create	2023-11-07 00:57:54.054808+00
20	booking	0003_alter_reservations_date_create	2023-11-07 00:57:54.066092+00
21	sessions	0001_initial	2023-11-07 00:57:54.080432+00
22	hotel	0001_initial	2023-11-07 00:57:58.979+00
23	hotel	0002_hotels_location	2023-11-07 00:57:58.984175+00
24	hotel	0003_alter_hotels_short_text	2023-11-07 00:57:58.988138+00
25	hotel	0004_hotels_cost	2023-11-07 00:57:58.992275+00
26	hotel	0005_hotels_cities	2023-11-07 00:57:58.999792+00
27	hotel	0006_alter_hotels_photo	2023-11-07 00:57:59.010479+00
28	hotel	0007_alter_hotels_title	2023-11-07 00:57:59.014641+00
29	loyalty	0001_initial	2023-11-07 00:58:00.63096+00
30	loyalty	0002_rename_status_userloyalty_status_loyalty	2023-11-07 00:58:00.635115+00
31	loyalty	0003_userloyalty_balance	2023-11-07 00:58:00.63959+00
32	payment	0001_initial	2023-11-07 00:58:02.247488+00
33	rating	0001_initial	2023-11-07 00:58:03.844021+00
34	rating	0002_delete_hotellikes	2023-11-07 00:58:03.847848+00
35	rating	0003_commentlikes_hotellikes_likecomment	2023-11-07 00:58:03.870069+00
36	rating	0004_auto_20210627_2159	2023-11-07 00:58:03.878156+00
37	rating	0005_alter_commentlikes_avatar	2023-11-07 00:58:03.88166+00
38	rating	0006_commentlikes_user_uid	2023-11-07 00:58:03.885709+00
39	session	0001_initial	2023-11-07 01:05:47.588216+00
40	session	0002_users_ava	2023-11-07 01:05:47.597711+00
41	session	0003_rename_ava_users_avatar	2023-11-07 01:05:47.605238+00
42	session	0004_alter_users_avatar	2023-11-07 01:05:47.612254+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: hotel_hotels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hotel_hotels (id, hotel_uid, title, short_text, photo, rooms, location, cost, cities) FROM stdin;
\.


--
-- Data for Name: loyalty_userloyalty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loyalty_userloyalty (id, user_uid, status_loyalty, discount, balance) FROM stdin;
\.


--
-- Data for Name: payment_payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_payment (id, payment_uid, status, price) FROM stdin;
\.


--
-- Data for Name: rating_commentlikes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rating_commentlikes (id, comment_uid, hotel_uid, comment_text, comment_date, comment_likes, comment_dislikes, avatar, username, user_uid) FROM stdin;
\.


--
-- Data for Name: rating_hotellikes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rating_hotellikes (id, hotel_uid, hotel_likes, hotel_dislikes) FROM stdin;
\.


--
-- Data for Name: rating_likecomment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rating_likecomment (id, comment_uid, user_uid, "like", dislike) FROM stdin;
\.


--
-- Data for Name: rating_likehotel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rating_likehotel (id, user_uid, hotel_uid, "like", dislike) FROM stdin;
\.


--
-- Data for Name: session_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.session_users (id, last_login, is_superuser, first_name, last_name, is_staff, is_active, date_joined, user_uid, role, name, email, password, username, avatar) FROM stdin;
\.


--
-- Data for Name: session_users_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.session_users_groups (id, users_id, group_id) FROM stdin;
\.


--
-- Data for Name: session_users_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.session_users_user_permissions (id, users_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: booking_reservations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.booking_reservations_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 42, true);


--
-- Name: hotel_hotels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hotel_hotels_id_seq', 1, false);


--
-- Name: loyalty_userloyalty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loyalty_userloyalty_id_seq', 1, false);


--
-- Name: payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_payment_id_seq', 1, false);


--
-- Name: rating_commentlikes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rating_commentlikes_id_seq', 1, false);


--
-- Name: rating_hotellikes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rating_hotellikes_id_seq', 1, false);


--
-- Name: rating_likecomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rating_likecomment_id_seq', 1, false);


--
-- Name: rating_likehotel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rating_likehotel_id_seq', 1, false);


--
-- Name: session_users_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.session_users_groups_id_seq', 1, false);


--
-- Name: session_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.session_users_id_seq', 1, false);


--
-- Name: session_users_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.session_users_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: booking_reservations booking_reservations_booking_uid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_reservations
    ADD CONSTRAINT booking_reservations_booking_uid_key UNIQUE (booking_uid);


--
-- Name: booking_reservations booking_reservations_payment_uid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_reservations
    ADD CONSTRAINT booking_reservations_payment_uid_key UNIQUE (payment_uid);


--
-- Name: booking_reservations booking_reservations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_reservations
    ADD CONSTRAINT booking_reservations_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: hotel_hotels hotel_hotels_hotel_uid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_hotels
    ADD CONSTRAINT hotel_hotels_hotel_uid_key UNIQUE (hotel_uid);


--
-- Name: hotel_hotels hotel_hotels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_hotels
    ADD CONSTRAINT hotel_hotels_pkey PRIMARY KEY (id);


--
-- Name: loyalty_userloyalty loyalty_userloyalty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loyalty_userloyalty
    ADD CONSTRAINT loyalty_userloyalty_pkey PRIMARY KEY (id);


--
-- Name: loyalty_userloyalty loyalty_userloyalty_user_uid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loyalty_userloyalty
    ADD CONSTRAINT loyalty_userloyalty_user_uid_key UNIQUE (user_uid);


--
-- Name: payment_payment payment_payment_payment_uid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_payment
    ADD CONSTRAINT payment_payment_payment_uid_key UNIQUE (payment_uid);


--
-- Name: payment_payment payment_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_payment
    ADD CONSTRAINT payment_payment_pkey PRIMARY KEY (id);


--
-- Name: rating_commentlikes rating_commentlikes_comment_uid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_commentlikes
    ADD CONSTRAINT rating_commentlikes_comment_uid_key UNIQUE (comment_uid);


--
-- Name: rating_commentlikes rating_commentlikes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_commentlikes
    ADD CONSTRAINT rating_commentlikes_pkey PRIMARY KEY (id);


--
-- Name: rating_hotellikes rating_hotellikes_hotel_uid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_hotellikes
    ADD CONSTRAINT rating_hotellikes_hotel_uid_key UNIQUE (hotel_uid);


--
-- Name: rating_hotellikes rating_hotellikes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_hotellikes
    ADD CONSTRAINT rating_hotellikes_pkey PRIMARY KEY (id);


--
-- Name: rating_likecomment rating_likecomment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_likecomment
    ADD CONSTRAINT rating_likecomment_pkey PRIMARY KEY (id);


--
-- Name: rating_likehotel rating_likehotel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating_likehotel
    ADD CONSTRAINT rating_likehotel_pkey PRIMARY KEY (id);


--
-- Name: session_users session_users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users
    ADD CONSTRAINT session_users_email_key UNIQUE (email);


--
-- Name: session_users_groups session_users_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users_groups
    ADD CONSTRAINT session_users_groups_pkey PRIMARY KEY (id);


--
-- Name: session_users_groups session_users_groups_users_id_group_id_018569f0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users_groups
    ADD CONSTRAINT session_users_groups_users_id_group_id_018569f0_uniq UNIQUE (users_id, group_id);


--
-- Name: session_users session_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users
    ADD CONSTRAINT session_users_pkey PRIMARY KEY (id);


--
-- Name: session_users_user_permissions session_users_user_permi_users_id_permission_id_113471e4_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users_user_permissions
    ADD CONSTRAINT session_users_user_permi_users_id_permission_id_113471e4_uniq UNIQUE (users_id, permission_id);


--
-- Name: session_users_user_permissions session_users_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users_user_permissions
    ADD CONSTRAINT session_users_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: session_users session_users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users
    ADD CONSTRAINT session_users_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: session_users_email_98b593f3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX session_users_email_98b593f3_like ON public.session_users USING btree (email varchar_pattern_ops);


--
-- Name: session_users_groups_group_id_b715e23c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX session_users_groups_group_id_b715e23c ON public.session_users_groups USING btree (group_id);


--
-- Name: session_users_groups_users_id_96999bb7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX session_users_groups_users_id_96999bb7 ON public.session_users_groups USING btree (users_id);


--
-- Name: session_users_user_permissions_permission_id_b51b9196; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX session_users_user_permissions_permission_id_b51b9196 ON public.session_users_user_permissions USING btree (permission_id);


--
-- Name: session_users_user_permissions_users_id_3459aebb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX session_users_user_permissions_users_id_3459aebb ON public.session_users_user_permissions USING btree (users_id);


--
-- Name: session_users_username_3e9ca27c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX session_users_username_3e9ca27c_like ON public.session_users USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: session_users_groups session_users_groups_group_id_b715e23c_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users_groups
    ADD CONSTRAINT session_users_groups_group_id_b715e23c_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: session_users_groups session_users_groups_users_id_96999bb7_fk_session_users_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users_groups
    ADD CONSTRAINT session_users_groups_users_id_96999bb7_fk_session_users_id FOREIGN KEY (users_id) REFERENCES public.session_users(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: session_users_user_permissions session_users_user_p_permission_id_b51b9196_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users_user_permissions
    ADD CONSTRAINT session_users_user_p_permission_id_b51b9196_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: session_users_user_permissions session_users_user_p_users_id_3459aebb_fk_session_u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session_users_user_permissions
    ADD CONSTRAINT session_users_user_p_users_id_3459aebb_fk_session_u FOREIGN KEY (users_id) REFERENCES public.session_users(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

