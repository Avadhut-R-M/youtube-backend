--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO randomtwo;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: randomtwo
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO randomtwo;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: randomtwo
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO randomtwo;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: randomtwo
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO randomtwo;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: randomtwo
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO randomtwo;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: randomtwo
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO randomtwo;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: randomtwo
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id uuid NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO randomtwo;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: randomtwo
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO randomtwo;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: randomtwo
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO randomtwo;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: randomtwo
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO randomtwo;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: randomtwo
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO randomtwo;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: randomtwo
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO randomtwo;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: randomtwo
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO randomtwo;

--
-- Name: youtube_api_comment; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.youtube_api_comment (
    id uuid NOT NULL,
    text character varying(500),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_id uuid NOT NULL,
    video_id uuid NOT NULL
);


ALTER TABLE public.youtube_api_comment OWNER TO randomtwo;

--
-- Name: youtube_api_subscription; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.youtube_api_subscription (
    id uuid NOT NULL,
    subscriber uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "subscribeTo_id" uuid NOT NULL
);


ALTER TABLE public.youtube_api_subscription OWNER TO randomtwo;

--
-- Name: youtube_api_user; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.youtube_api_user (
    last_login timestamp with time zone,
    id uuid NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    avatar character varying(300) NOT NULL,
    cover character varying(300) NOT NULL,
    "channelDescription" character varying(500),
    "isAdmin" boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    is_admin boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL
);


ALTER TABLE public.youtube_api_user OWNER TO randomtwo;

--
-- Name: youtube_api_video; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.youtube_api_video (
    id uuid NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(500) NOT NULL,
    url character varying(300) NOT NULL,
    thumbnail character varying(300) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "User_id" uuid NOT NULL
);


ALTER TABLE public.youtube_api_video OWNER TO randomtwo;

--
-- Name: youtube_api_videolike; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.youtube_api_videolike (
    id uuid NOT NULL,
    "like" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_id uuid NOT NULL,
    video_id uuid NOT NULL
);


ALTER TABLE public.youtube_api_videolike OWNER TO randomtwo;

--
-- Name: youtube_api_view; Type: TABLE; Schema: public; Owner: randomtwo
--

CREATE TABLE public.youtube_api_view (
    id uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_id uuid NOT NULL,
    video_id uuid NOT NULL
);


ALTER TABLE public.youtube_api_view OWNER TO randomtwo;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: randomtwo
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add video	7	add_video
26	Can change video	7	change_video
27	Can delete video	7	delete_video
28	Can view video	7	view_video
29	Can add view	8	add_view
30	Can change view	8	change_view
31	Can delete view	8	delete_view
32	Can view view	8	view_view
33	Can add video like	9	add_videolike
34	Can change video like	9	change_videolike
35	Can delete video like	9	delete_videolike
36	Can view video like	9	view_videolike
37	Can add subscription	10	add_subscription
38	Can change subscription	10	change_subscription
39	Can delete subscription	10	delete_subscription
40	Can view subscription	10	view_subscription
41	Can add comment	11	add_comment
42	Can change comment	11	change_comment
43	Can delete comment	11	delete_comment
44	Can view comment	11	view_comment
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	youtube_api	user
7	youtube_api	video
8	youtube_api	view
9	youtube_api	videolike
10	youtube_api	subscription
11	youtube_api	comment
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	youtube_api	0001_initial	2021-01-13 22:34:35.084007+05:30
2	contenttypes	0001_initial	2021-01-13 22:34:35.457197+05:30
3	admin	0001_initial	2021-01-13 22:34:35.536368+05:30
4	admin	0002_logentry_remove_auto_add	2021-01-13 22:34:35.642562+05:30
5	admin	0003_logentry_add_action_flag_choices	2021-01-13 22:34:35.661075+05:30
6	contenttypes	0002_remove_content_type_name	2021-01-13 22:34:35.700253+05:30
7	auth	0001_initial	2021-01-13 22:34:35.94355+05:30
8	auth	0002_alter_permission_name_max_length	2021-01-13 22:34:36.173423+05:30
9	auth	0003_alter_user_email_max_length	2021-01-13 22:34:36.1931+05:30
10	auth	0004_alter_user_username_opts	2021-01-13 22:34:36.215296+05:30
11	auth	0005_alter_user_last_login_null	2021-01-13 22:34:36.238201+05:30
12	auth	0006_require_contenttypes_0002	2021-01-13 22:34:36.251154+05:30
13	auth	0007_alter_validators_add_error_messages	2021-01-13 22:34:36.270216+05:30
14	auth	0008_alter_user_username_max_length	2021-01-13 22:34:36.294507+05:30
15	auth	0009_alter_user_last_name_max_length	2021-01-13 22:34:36.315586+05:30
16	auth	0010_alter_group_name_max_length	2021-01-13 22:34:36.33817+05:30
17	auth	0011_update_proxy_permissions	2021-01-13 22:34:36.368983+05:30
18	sessions	0001_initial	2021-01-13 22:34:36.46415+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: youtube_api_comment; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.youtube_api_comment (id, text, "createdAt", "updatedAt", user_id, video_id) FROM stdin;
4aeccae0-0c25-4174-ae80-b034607f0bbe	very nice song	2021-01-13 22:48:28.594868+05:30	2021-01-13 22:48:28.594895+05:30	6efeadae-defd-4034-b51c-474889646805	3bb9f095-4627-487c-a6da-ed0569bbfe35
e6814be1-3054-43f5-9865-083e3cc84b54	childhood memories :heart:  i still watch this	2021-01-13 23:01:21.008671+05:30	2021-01-13 23:01:21.008703+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	38e03cb3-532f-4d62-ab02-549b56fc67c8
fbb3f3bc-a8c6-404d-86d9-3a42d656817b	When you realize this not a trailer but an epilogue.	2021-01-13 23:26:32.574337+05:30	2021-01-13 23:26:32.574367+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
632ff0d3-e0fa-4227-8b69-08aa4634d30d	I'm only here to know the sticker placement!!\nEdit: He doesn't talk about it. LOL	2021-01-13 23:33:46.949885+05:30	2021-01-13 23:33:46.949917+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	880627b7-3bbf-4f18-9ae6-1bf826517d04
430213dd-30c6-49ba-adf7-f5a0fba77212	and i have failed you	2021-01-13 23:38:02.922414+05:30	2021-01-13 23:38:02.922441+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	880627b7-3bbf-4f18-9ae6-1bf826517d04
99cc1b21-59c8-4b58-965b-64c452dad9eb	The AMD version was so good, the sticker placement somehow doesn't matter :P\n\n(OK OK I'm also disappointed)	2021-01-13 23:51:07.270035+05:30	2021-01-13 23:51:07.270062+05:30	6efeadae-defd-4034-b51c-474889646805	880627b7-3bbf-4f18-9ae6-1bf826517d04
9d5a3079-e582-4e1e-9710-09420493fc81	my favourite dish	2021-01-13 23:52:07.214741+05:30	2021-01-13 23:52:07.214796+05:30	6efeadae-defd-4034-b51c-474889646805	197f920c-2255-49e5-9b7a-5951b1dbcfb2
88fb656d-0c99-4c20-a823-d7c0ef33ce85	One of my favourite cartoon...used to watch a lot	2021-01-13 23:52:39.51206+05:30	2021-01-13 23:52:39.512119+05:30	6efeadae-defd-4034-b51c-474889646805	8bd97fc2-79f4-4d02-83d3-7f3a3c4542b6
476c4e44-1d24-4a1b-800d-4ab8fba22f12	I have Ryzen 7 RTX 2060 model. The Ryzen, RTX and 144Hz stickers are stuck in a column just beside the O15 Logo. (Between trackpad and the logo)	2021-01-13 23:54:02.589379+05:30	2021-01-13 23:54:02.589419+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	880627b7-3bbf-4f18-9ae6-1bf826517d04
\.


--
-- Data for Name: youtube_api_subscription; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.youtube_api_subscription (id, subscriber, "createdAt", "updatedAt", "subscribeTo_id") FROM stdin;
fb9236d5-6014-4647-962d-cc0ff186c0ed	91db5936-b825-4aeb-b8ee-b8f2e722ced1	2021-01-13 22:50:42.202599+05:30	2021-01-13 22:50:42.202633+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79
76e5c007-433d-45a9-8e0a-0bf07a547a48	91db5936-b825-4aeb-b8ee-b8f2e722ced1	2021-01-13 22:50:43.577901+05:30	2021-01-13 22:50:43.577939+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45
406213af-46e3-486a-987f-e1308dfd9424	91db5936-b825-4aeb-b8ee-b8f2e722ced1	2021-01-13 22:50:46.900926+05:30	2021-01-13 22:50:46.900966+05:30	6efeadae-defd-4034-b51c-474889646805
c77efd7f-66ff-46cc-ae1b-4c79a8be53eb	ee808fa5-24ef-4af6-b970-8803d82b2f45	2021-01-13 22:52:28.050353+05:30	2021-01-13 22:52:28.050386+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1
f4f47479-21ee-40b6-859c-19c1a5cfd8b4	bec1860a-b6e4-4f9e-bd99-6ae144958b79	2021-01-13 23:33:51.473763+05:30	2021-01-13 23:33:51.473793+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45
93778c9a-654d-499d-95c1-b39cf262965d	bec1860a-b6e4-4f9e-bd99-6ae144958b79	2021-01-13 23:34:07.51936+05:30	2021-01-13 23:34:07.51939+05:30	6efeadae-defd-4034-b51c-474889646805
8f2a202b-2eb0-470c-b745-481b1cbe48aa	ee808fa5-24ef-4af6-b970-8803d82b2f45	2021-01-13 23:34:50.081417+05:30	2021-01-13 23:34:50.08146+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79
0f5cdd59-25e9-4fb2-95fb-ea88bfe71d63	6efeadae-defd-4034-b51c-474889646805	2021-01-13 23:50:27.268486+05:30	2021-01-13 23:50:27.268532+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45
9a296034-16b9-4aa5-b128-cef2b5db2bc1	6efeadae-defd-4034-b51c-474889646805	2021-01-13 23:50:28.962094+05:30	2021-01-13 23:50:28.962122+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1
\.


--
-- Data for Name: youtube_api_user; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.youtube_api_user (last_login, id, firstname, lastname, username, email, password, avatar, cover, "channelDescription", "isAdmin", "createdAt", "updatedAt", is_admin, is_staff, is_active, is_superuser) FROM stdin;
\N	ee808fa5-24ef-4af6-b970-8803d82b2f45	mukund	krishnamurthy	mukund k	mukund@gmail.com	pbkdf2_sha256$150000$sVHYRzfmhiIZ$T9b9B1BochDPIwkq6hkTIKri/LdXk7X7SjLLjhHxtoo=	https://res.cloudinary.com/douy56nkf/image/upload/v1594060920/defaults/txxeacnh3vanuhsemfc8.png	https://res.cloudinary.com/douy56nkf/image/upload/v1594060919/defaults/xcdnczly5nuwpibolagv.png	\N	t	2021-01-13 22:39:39.063407+05:30	2021-01-13 22:39:39.063434+05:30	f	f	t	f
\N	bec1860a-b6e4-4f9e-bd99-6ae144958b79	pranav	sonawane	pranav	pranav@gmail.com	pbkdf2_sha256$150000$mKRbTWNmvm4B$SC79OjGecEXSlgugHIOJTvscJYliTCxLrTkLOIZh5p8=	https://res.cloudinary.com/capstonegroup4/image/upload/v1610557872/aujcxdbonsntdlqzpazl.png	https://res.cloudinary.com/douy56nkf/image/upload/v1594060919/defaults/xcdnczly5nuwpibolagv.png	My name is Pranav Sonawane	t	2021-01-13 22:40:02.147949+05:30	2021-01-13 22:40:02.147981+05:30	f	f	t	f
\N	6efeadae-defd-4034-b51c-474889646805	christo	joseph	christo	christo@gmail.com	pbkdf2_sha256$150000$mggCWl7wI2A3$EH5fPXnqeWC0j3ZS8Q7IX3g8pObFzAe1PLoyptBv+Tw=	https://res.cloudinary.com/capstonegroup4/image/upload/v1610558136/iqmiribl1gcizj91afss.png	https://res.cloudinary.com/douy56nkf/image/upload/v1594060919/defaults/xcdnczly5nuwpibolagv.png	My name is christo joseph	t	2021-01-13 22:39:03.032448+05:30	2021-01-13 22:39:03.032474+05:30	f	f	t	f
\N	91db5936-b825-4aeb-b8ee-b8f2e722ced1	avadhut	more	avadhut	avadhut@gmail.com	pbkdf2_sha256$150000$lX17IuXLQQhP$j7/lYeO8KgmUKsiUd+JdfpaE2lRZ0wP0gBaETqNFtMM=	https://res.cloudinary.com/capstonegroup4/image/upload/v1610558465/aswh7dffabzgqqmcmlhp.png	https://res.cloudinary.com/douy56nkf/image/upload/v1594060919/defaults/xcdnczly5nuwpibolagv.png	my name is avadhut more	t	2021-01-13 22:36:22.116019+05:30	2021-01-13 22:36:22.116046+05:30	f	f	t	f
\.


--
-- Data for Name: youtube_api_video; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.youtube_api_video (id, title, description, url, thumbnail, "createdAt", "updatedAt", "User_id") FROM stdin;
3bb9f095-4627-487c-a6da-ed0569bbfe35	Namo Namo | Kedarnath | Sushant Rajput | Sara Ali Khan | Amit Trivedi | Amitabh B	Directed by Abhishek Kapoor \nProduced by Ronnie Screwvala & Pragya Kapoor \nCo-Produced by Abhishek Kapoor & Abhishek Nayyar \nStory: Abhishek Kapoor & Kanika Dhillon \nScreenplay & Dialogue: Kanika Dhillon \nMusic: Amit Trivedi \nDOP: Tushar Kanti Ray 	https://res.cloudinary.com/capstonegroup4/video/upload/v1610557940/g49kzr0h4xenpivolwbn.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610557940/g49kzr0h4xenpivolwbn.jpg	2021-01-13 22:44:00.914263+05:30	2021-01-13 22:44:00.91429+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79
24123e44-3211-4cce-9da7-c96a772886c3	What is Django Capable of? | Companies That Use It	Django is a very powerful framework run on python used by some of the biggest tech companies. Here are few websites that use django and some of the frameworks capabilities.	https://res.cloudinary.com/capstonegroup4/video/upload/v1610558183/jvsbjniqi6hbygty29zs.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610558183/jvsbjniqi6hbygty29zs.jpg	2021-01-13 22:47:10.70616+05:30	2021-01-13 22:47:10.706192+05:30	6efeadae-defd-4034-b51c-474889646805
38e03cb3-532f-4d62-ab02-549b56fc67c8	Shinchan In Hindi New Episode 2021 / Shinchan Cartoon Latest Episode #Shinchanhindi Ep50	shin-chan,shinchan in hindi,shinchan in tamil,shinchan cartoon.	https://res.cloudinary.com/capstonegroup4/video/upload/v1610558369/kbgcrd8derxeh4qjcyvw.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610558369/kbgcrd8derxeh4qjcyvw.jpg	2021-01-13 22:50:10.496515+05:30	2021-01-13 22:50:10.496547+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1
c70eb491-9549-4fc9-bbb9-ebbc29542aa0	Top 10 Technologies To Learn In 2021 | Trending Technologies In 2021	This "Top 10 Technologies to learn in 2021" video will introduce you to all the top 10 popular and trending technologies in the market in 2021. These are the trending technologies that you need to watch out for in order to make a successful career in the year of 2021. Take the first step towards a successful career now!	https://res.cloudinary.com/capstonegroup4/video/upload/v1610558615/itntjfjgkmxyqxtwy1dq.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610558615/itntjfjgkmxyqxtwy1dq.jpg	2021-01-13 22:57:13.434511+05:30	2021-01-13 22:57:13.434541+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45
d91d8591-cbb1-4374-9833-4cab2b6e97f2	शिवतांडव स्तोत्रम 	Title - Shiv Tandav Stotram\nSinger - Shankar Mahadevan\nComposer - Shailesh Dani\nLyrics - Traditional\nLanguage - Sanskrit\nLabel - Times Music Spirituial	https://res.cloudinary.com/capstonegroup4/video/upload/v1610558925/osq3u4ggd4aorm4h0wqt.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610558925/osq3u4ggd4aorm4h0wqt.jpg	2021-01-13 22:59:16.67112+05:30	2021-01-13 22:59:16.671151+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79
9227e6fc-7e6b-4a5a-a356-872f1c94ff1a	Baghtos Kay Mujra Kar with Lyrics | Marathi Songs | Shivaji Maharaj Songs | Siddharth Mahadevan	Presenting amazing Shivaji Maharaj Marathi Songs 'The Promise - Baghtos Kay Mujra Kar! Title Track' now with lyrics. From the Marathi Movie 'Baghtos Kay Mujra Kar! बघतोस काय मुजरा कर'. Song beautifully sung by Siddharth Mahadevan. Click play & enjoy.	https://res.cloudinary.com/capstonegroup4/video/upload/v1610558994/rpw1busmwd9hewtznzsa.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610558994/rpw1busmwd9hewtznzsa.jpg	2021-01-13 23:00:18.728193+05:30	2021-01-13 23:00:18.728224+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79
8b8a5adf-6f27-4196-9d75-82edf8d99d23	The bug that poops candy	Aphids can reproduce incredibly fast: they can make 20 new generations within a single season. And that means lots of poop. Some aphid populations can produce hundreds of kilograms of poop per acre— making them some of the most prolific poopers on the planet. We know this poop as the sweet, syrupy liquid called honeydew. George Zaidan explores the wonderfully weird life of an aphid.	https://res.cloudinary.com/capstonegroup4/video/upload/v1610559156/suleaw4gdmasgxvrizhc.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610559156/suleaw4gdmasgxvrizhc.jpg	2021-01-13 23:02:58.457401+05:30	2021-01-13 23:02:58.457441+05:30	6efeadae-defd-4034-b51c-474889646805
c820d7dd-06e2-40b8-b8c4-d42f86f40c9e	"A Night to Remember" Launch Cinematic - The Witcher III: Wild Hunt	Feast your eyes on a gripping portrayal what The Witcher 3: Wild Hunt is all about and step into the shoes of professional monster hunter Geralt of Rivia in this launch cinematic.	https://res.cloudinary.com/capstonegroup4/video/upload/v1610559242/qpag4d338x7j2fpxca5s.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610559242/qpag4d338x7j2fpxca5s.jpg	2021-01-13 23:05:02.123777+05:30	2021-01-13 23:05:02.123805+05:30	6efeadae-defd-4034-b51c-474889646805
7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d	Shinchan in hindi new Episode 2020 	Shinchan in hindi new Episode 2020 / Shinchan Cartoon  latest Episode #Sinchanhindi	https://res.cloudinary.com/capstonegroup4/video/upload/v1610559553/ypgmek8b30oxqzpxymka.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610559553/ypgmek8b30oxqzpxymka.jpg	2021-01-13 23:09:32.969771+05:30	2021-01-13 23:09:32.9698+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1
8bd97fc2-79f4-4d02-83d3-7f3a3c4542b6	Samurai Jack Theme Song 	Refresh your childhood memories	https://res.cloudinary.com/capstonegroup4/video/upload/v1610560426/umsasdp0mngigsumguu2.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610560426/umsasdp0mngigsumguu2.jpg	2021-01-13 23:24:39.285806+05:30	2021-01-13 23:24:39.285861+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1
880627b7-3bbf-4f18-9ae6-1bf826517d04	HP Omen 15 (AMD) Review - It's So Good!	Review of the HP Omen 15 AMD model. I also compared it to the Intel version and the Lenovo Legion 5. Watch for the full review!	https://res.cloudinary.com/capstonegroup4/video/upload/v1610560744/zooszpydt2bvlx5arnvb.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610560744/zooszpydt2bvlx5arnvb.jpg	2021-01-13 23:29:43.178714+05:30	2021-01-13 23:29:43.178768+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45
197f920c-2255-49e5-9b7a-5951b1dbcfb2	Chicken Dum Biryani Recipe | Hyderabadi Chicken Biryani | Chef pranavv | Your Food Lab	\nJoin us Here \n\nFacebook - https://goo.gl/rxrqsq\nInstagram - https://goo.gl/rK6wFS \nTwitter  -  https://goo.gl/lDfrrQ\n\nFollow Chef Sanjyot Keer Here\n\nFacebook - https://goo.gl/8zcF6N\nInstagram - https://goo.gl/ayTNLP\nTwitter - https://goo.gl/lDfrrQ\n	https://res.cloudinary.com/capstonegroup4/video/upload/v1610560934/yo6f3uhyfv7ajytu26jn.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610560934/yo6f3uhyfv7ajytu26jn.jpg	2021-01-13 23:32:49.266279+05:30	2021-01-13 23:32:49.266333+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79
87180132-eb74-4e0e-b105-c4e087ac448c	Docker vs Kubernetes vs Docker Swarm | Comparison in 5 mins	What is the difference between Docker and Kubernetes? And Kubernetes or Docker Swarm?\nIn my video "Docker vs Kubernetes vs Docker Swarm" I compare both Docker and Kubernetes and Kubernetes vs Docker Swarm	https://res.cloudinary.com/capstonegroup4/video/upload/v1610561178/mk65bgoxgjocfxj9ajtu.mp4	https://res.cloudinary.com/capstonegroup4/video/upload/v1610561178/mk65bgoxgjocfxj9ajtu.jpg	2021-01-13 23:36:57.798256+05:30	2021-01-13 23:36:57.79831+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45
\.


--
-- Data for Name: youtube_api_videolike; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.youtube_api_videolike (id, "like", "createdAt", "updatedAt", user_id, video_id) FROM stdin;
e99be63c-34df-4e9e-9f6c-bfa269835297	1	2021-01-13 22:48:38.829074+05:30	2021-01-13 22:48:38.829108+05:30	6efeadae-defd-4034-b51c-474889646805	3bb9f095-4627-487c-a6da-ed0569bbfe35
722d906e-4717-45a6-8a1b-f418ffcaeb7d	1	2021-01-13 22:57:31.315991+05:30	2021-01-13 22:57:31.316039+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	38e03cb3-532f-4d62-ab02-549b56fc67c8
76ef9031-d69e-478d-bd4f-2ab0a09ba19a	1	2021-01-13 22:57:37.673613+05:30	2021-01-13 22:57:37.673642+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	24123e44-3211-4cce-9da7-c96a772886c3
62932f0e-6c3e-4dcd-ac78-d564f6dfdf49	1	2021-01-13 22:57:42.353392+05:30	2021-01-13 22:57:42.353423+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	3bb9f095-4627-487c-a6da-ed0569bbfe35
3c5efc13-e073-4fdf-bfc2-e663652a5469	1	2021-01-13 23:05:56.817571+05:30	2021-01-13 23:05:56.817599+05:30	6efeadae-defd-4034-b51c-474889646805	d91d8591-cbb1-4374-9833-4cab2b6e97f2
6ae4aa2d-e98d-454b-927d-2e774633c9b4	1	2021-01-13 23:06:02.325977+05:30	2021-01-13 23:06:02.326006+05:30	6efeadae-defd-4034-b51c-474889646805	c70eb491-9549-4fc9-bbb9-ebbc29542aa0
ca8bae41-7ae9-4d25-808a-456137e5e694	1	2021-01-13 23:09:43.602326+05:30	2021-01-13 23:09:43.602355+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	9227e6fc-7e6b-4a5a-a356-872f1c94ff1a
8b4d6b02-4376-46b8-a3fe-4e2ff8ec2b28	1	2021-01-13 23:09:54.182653+05:30	2021-01-13 23:09:54.182699+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	c70eb491-9549-4fc9-bbb9-ebbc29542aa0
4511b66b-da77-465f-acfd-896c71843c8a	-1	2021-01-13 23:10:02.933488+05:30	2021-01-13 23:10:02.933531+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	8b8a5adf-6f27-4196-9d75-82edf8d99d23
300c4cd4-1e87-48af-8d14-f43384e9b8d9	1	2021-01-13 23:25:04.52753+05:30	2021-01-13 23:25:04.527575+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	8bd97fc2-79f4-4d02-83d3-7f3a3c4542b6
ed9fae79-fe57-403d-8eb0-4f492db46037	1	2021-01-13 23:25:22.092801+05:30	2021-01-13 23:25:22.092839+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
54eee879-8663-4bef-9b09-5d3ac3c1ebfc	1	2021-01-13 23:29:58.385471+05:30	2021-01-13 23:29:58.385499+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	9227e6fc-7e6b-4a5a-a356-872f1c94ff1a
9c872b8c-0457-469d-9a1f-1ff7a8a76aab	1	2021-01-13 23:30:10.385436+05:30	2021-01-13 23:30:10.385465+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	d91d8591-cbb1-4374-9833-4cab2b6e97f2
122af384-f2a7-4758-8756-e34c602ec09d	1	2021-01-13 23:32:56.53855+05:30	2021-01-13 23:32:56.538579+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	8bd97fc2-79f4-4d02-83d3-7f3a3c4542b6
f349f77e-0742-4f97-9b54-b699bd876af2	1	2021-01-13 23:33:02.669003+05:30	2021-01-13 23:33:02.66904+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	880627b7-3bbf-4f18-9ae6-1bf826517d04
a9afbb18-69b0-4153-829b-8a2d452a2023	1	2021-01-13 23:34:51.05449+05:30	2021-01-13 23:34:51.054517+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	197f920c-2255-49e5-9b7a-5951b1dbcfb2
561b30c3-93cf-45ea-83e6-679561d1abf4	1	2021-01-13 23:40:55.965842+05:30	2021-01-13 23:40:55.965898+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	880627b7-3bbf-4f18-9ae6-1bf826517d04
9d094c35-2fe5-40dd-a876-6b256c73a48a	1	2021-01-13 23:51:13.533808+05:30	2021-01-13 23:51:13.533837+05:30	6efeadae-defd-4034-b51c-474889646805	880627b7-3bbf-4f18-9ae6-1bf826517d04
762fdc57-f227-4f46-84c2-3dd43355e7a6	1	2021-01-13 23:51:24.594594+05:30	2021-01-13 23:51:24.594622+05:30	6efeadae-defd-4034-b51c-474889646805	197f920c-2255-49e5-9b7a-5951b1dbcfb2
f8bb11d8-afe9-42c7-850c-2efdad1dd23e	1	2021-01-13 23:52:17.56312+05:30	2021-01-13 23:52:17.563178+05:30	6efeadae-defd-4034-b51c-474889646805	8bd97fc2-79f4-4d02-83d3-7f3a3c4542b6
6106d620-077d-450d-80f2-82c2cd703e6b	1	2021-01-13 23:53:42.476507+05:30	2021-01-13 23:53:42.476536+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	3bb9f095-4627-487c-a6da-ed0569bbfe35
e8d87a66-5f1a-47d3-9fda-c5c455b77c68	1	2021-01-13 23:53:48.281742+05:30	2021-01-13 23:53:48.28177+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	d91d8591-cbb1-4374-9833-4cab2b6e97f2
b818eac7-67ea-4802-9da2-3154313c4e7c	1	2021-01-13 23:54:58.601806+05:30	2021-01-13 23:54:58.601834+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	87180132-eb74-4e0e-b105-c4e087ac448c
90f2a6ab-6ce9-4ca0-a574-32b6374ac448	1	2021-01-13 23:55:16.556706+05:30	2021-01-13 23:55:16.556745+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	8bd97fc2-79f4-4d02-83d3-7f3a3c4542b6
babea36d-0a12-49e3-a8d4-5657977664af	1	2021-01-13 23:55:21.049011+05:30	2021-01-13 23:55:21.049049+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
d10e0ab6-a985-4b87-a61a-318e7a67903e	1	2021-01-13 23:55:27.606169+05:30	2021-01-13 23:55:27.606225+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
947b357f-91c0-41c8-9cda-2e3034970902	1	2021-01-13 23:55:38.149162+05:30	2021-01-13 23:55:38.149222+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	8b8a5adf-6f27-4196-9d75-82edf8d99d23
b83fdb51-bf9b-4131-afda-97cb470faa5c	1	2021-01-13 23:55:50.202441+05:30	2021-01-13 23:55:50.202469+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	c70eb491-9549-4fc9-bbb9-ebbc29542aa0
\.


--
-- Data for Name: youtube_api_view; Type: TABLE DATA; Schema: public; Owner: randomtwo
--

COPY public.youtube_api_view (id, "createdAt", "updatedAt", user_id, video_id) FROM stdin;
3e96e93d-5150-40f8-ba95-b98f32f80870	2021-01-13 22:44:34.713197+05:30	2021-01-13 22:44:34.713244+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	3bb9f095-4627-487c-a6da-ed0569bbfe35
a991c961-45ee-4e7e-a077-89b6f5fac5dc	2021-01-13 22:47:26.949171+05:30	2021-01-13 22:47:26.949226+05:30	6efeadae-defd-4034-b51c-474889646805	24123e44-3211-4cce-9da7-c96a772886c3
a1648a69-95ee-487a-b5ee-3a67a4b31e21	2021-01-13 22:47:38.11971+05:30	2021-01-13 22:47:38.119762+05:30	6efeadae-defd-4034-b51c-474889646805	3bb9f095-4627-487c-a6da-ed0569bbfe35
12db643b-8984-4808-99a9-dbd26372ff9b	2021-01-13 22:48:35.19669+05:30	2021-01-13 22:48:35.196728+05:30	6efeadae-defd-4034-b51c-474889646805	3bb9f095-4627-487c-a6da-ed0569bbfe35
aa8ac318-923c-46ea-be80-0e5dc97cfc57	2021-01-13 22:50:22.633442+05:30	2021-01-13 22:50:22.633475+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	38e03cb3-532f-4d62-ab02-549b56fc67c8
453770d1-58a6-4416-81b3-87fef22feac8	2021-01-13 22:57:20.47198+05:30	2021-01-13 22:57:20.472022+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	c70eb491-9549-4fc9-bbb9-ebbc29542aa0
65ea8933-3dd6-4593-8c74-c2e9fd427f78	2021-01-13 22:57:27.996899+05:30	2021-01-13 22:57:27.996936+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	38e03cb3-532f-4d62-ab02-549b56fc67c8
22a8ca3b-23dc-4d25-8df4-225a571ca2a8	2021-01-13 22:57:33.849649+05:30	2021-01-13 22:57:33.84969+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	24123e44-3211-4cce-9da7-c96a772886c3
08edebd0-0a63-47c7-9b6a-174fdf25bf36	2021-01-13 22:57:39.901895+05:30	2021-01-13 22:57:39.901932+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	3bb9f095-4627-487c-a6da-ed0569bbfe35
aeb3d6a5-fac4-4dc7-8878-651d0af024a7	2021-01-13 23:00:34.515747+05:30	2021-01-13 23:00:34.515814+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	38e03cb3-532f-4d62-ab02-549b56fc67c8
a155abd9-9cd3-467e-b0c5-340abf3368ef	2021-01-13 23:03:12.021175+05:30	2021-01-13 23:03:12.021206+05:30	6efeadae-defd-4034-b51c-474889646805	c70eb491-9549-4fc9-bbb9-ebbc29542aa0
752d1827-dc84-4ec0-8a16-690634ce7601	2021-01-13 23:03:24.827579+05:30	2021-01-13 23:03:24.827645+05:30	6efeadae-defd-4034-b51c-474889646805	8b8a5adf-6f27-4196-9d75-82edf8d99d23
487369a5-2908-4dcf-a25a-fc6e1c47f77e	2021-01-13 23:03:27.833053+05:30	2021-01-13 23:03:27.833099+05:30	6efeadae-defd-4034-b51c-474889646805	9227e6fc-7e6b-4a5a-a356-872f1c94ff1a
0632b2e7-a5f3-453a-b9bb-219e4b23de72	2021-01-13 23:03:30.126561+05:30	2021-01-13 23:03:30.126602+05:30	6efeadae-defd-4034-b51c-474889646805	d91d8591-cbb1-4374-9833-4cab2b6e97f2
b9c33074-edaa-4858-bf6a-bf76da672f59	2021-01-13 23:03:35.408658+05:30	2021-01-13 23:03:35.408706+05:30	6efeadae-defd-4034-b51c-474889646805	24123e44-3211-4cce-9da7-c96a772886c3
f1a42f3c-3ba4-4278-89e9-371e466a3ded	2021-01-13 23:05:07.470122+05:30	2021-01-13 23:05:07.470181+05:30	6efeadae-defd-4034-b51c-474889646805	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
46ba54bf-3efe-4874-a329-1af6e8fe02bb	2021-01-13 23:05:53.957375+05:30	2021-01-13 23:05:53.957417+05:30	6efeadae-defd-4034-b51c-474889646805	d91d8591-cbb1-4374-9833-4cab2b6e97f2
d0e7a498-fd7c-4cd4-9989-172feb769d78	2021-01-13 23:06:00.383366+05:30	2021-01-13 23:06:00.383407+05:30	6efeadae-defd-4034-b51c-474889646805	c70eb491-9549-4fc9-bbb9-ebbc29542aa0
672fd617-1faf-4a6f-b5be-4e67c2be3d76	2021-01-13 23:06:12.289849+05:30	2021-01-13 23:06:12.289887+05:30	6efeadae-defd-4034-b51c-474889646805	9227e6fc-7e6b-4a5a-a356-872f1c94ff1a
aaa1fa57-6b45-4368-9c45-e0da7916260b	2021-01-13 23:09:41.056191+05:30	2021-01-13 23:09:41.056233+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	9227e6fc-7e6b-4a5a-a356-872f1c94ff1a
921f9cda-379f-4ab3-83e5-a328d4628551	2021-01-13 23:09:52.549292+05:30	2021-01-13 23:09:52.549334+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	c70eb491-9549-4fc9-bbb9-ebbc29542aa0
db98a3ad-79b5-4508-a3fa-7e880ac22914	2021-01-13 23:10:01.028946+05:30	2021-01-13 23:10:01.028975+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	8b8a5adf-6f27-4196-9d75-82edf8d99d23
c3e69898-8976-4de6-914f-71a40b033e86	2021-01-13 23:24:47.489135+05:30	2021-01-13 23:24:47.489164+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	8bd97fc2-79f4-4d02-83d3-7f3a3c4542b6
0a0a49a7-63c1-4bc5-b9b6-7a0161c34c58	2021-01-13 23:25:20.3172+05:30	2021-01-13 23:25:20.317228+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
4ca44258-3c53-4699-ad48-e71391ec566a	2021-01-13 23:29:56.501445+05:30	2021-01-13 23:29:56.501474+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	9227e6fc-7e6b-4a5a-a356-872f1c94ff1a
3ea78072-fd56-4c7a-8f29-85ed51cf5aed	2021-01-13 23:30:02.897863+05:30	2021-01-13 23:30:02.897893+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	3bb9f095-4627-487c-a6da-ed0569bbfe35
5c1849aa-db3b-46b0-961c-3447a53e6b87	2021-01-13 23:30:09.101309+05:30	2021-01-13 23:30:09.101338+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	d91d8591-cbb1-4374-9833-4cab2b6e97f2
cb89af27-ee9d-4dd8-a0f6-b017a81ea723	2021-01-13 23:30:58.888204+05:30	2021-01-13 23:30:58.888232+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	24123e44-3211-4cce-9da7-c96a772886c3
f1ee2317-8d33-4bd6-adbf-fb62bcbb27ab	2021-01-13 23:31:08.31539+05:30	2021-01-13 23:31:08.315421+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	8b8a5adf-6f27-4196-9d75-82edf8d99d23
0342e0d6-4dbe-49cd-b5c7-21e3e32dc3a6	2021-01-13 23:32:53.536496+05:30	2021-01-13 23:32:53.536525+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	8bd97fc2-79f4-4d02-83d3-7f3a3c4542b6
5a4fee6e-5d46-4d14-aec8-fb27d9a4a8b0	2021-01-13 23:33:00.72196+05:30	2021-01-13 23:33:00.721989+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	880627b7-3bbf-4f18-9ae6-1bf826517d04
b7fc153d-c929-4773-bd24-fa60dc774198	2021-01-13 23:34:01.918055+05:30	2021-01-13 23:34:01.918096+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	8b8a5adf-6f27-4196-9d75-82edf8d99d23
a46ba551-568b-42b3-adc6-c1f84a280fca	2021-01-13 23:34:45.145275+05:30	2021-01-13 23:34:45.145318+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	197f920c-2255-49e5-9b7a-5951b1dbcfb2
95ce5f00-5529-44cd-a133-f77d76fc8ecc	2021-01-13 23:37:58.932587+05:30	2021-01-13 23:37:58.932616+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	880627b7-3bbf-4f18-9ae6-1bf826517d04
9f601ee3-134f-49e2-b0dd-334dfb1cfad5	2021-01-13 23:50:41.577841+05:30	2021-01-13 23:50:41.577874+05:30	6efeadae-defd-4034-b51c-474889646805	880627b7-3bbf-4f18-9ae6-1bf826517d04
d5490bb6-fe46-4986-8c3e-5af3a28ba11e	2021-01-13 23:51:22.165247+05:30	2021-01-13 23:51:22.165278+05:30	6efeadae-defd-4034-b51c-474889646805	197f920c-2255-49e5-9b7a-5951b1dbcfb2
475109ed-fa9e-46bd-a263-b09f7dca219f	2021-01-13 23:52:14.270474+05:30	2021-01-13 23:52:14.270516+05:30	6efeadae-defd-4034-b51c-474889646805	8bd97fc2-79f4-4d02-83d3-7f3a3c4542b6
7d8461a5-4f1b-44f9-9e38-70dc54e88c70	2021-01-13 23:52:59.719961+05:30	2021-01-13 23:52:59.720003+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	197f920c-2255-49e5-9b7a-5951b1dbcfb2
a77723dc-8a87-46d2-9bbf-18e761bb283c	2021-01-13 23:53:40.618753+05:30	2021-01-13 23:53:40.618795+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	3bb9f095-4627-487c-a6da-ed0569bbfe35
963f144f-79ef-4183-8643-c357e9cb0d74	2021-01-13 23:53:46.628714+05:30	2021-01-13 23:53:46.62876+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	d91d8591-cbb1-4374-9833-4cab2b6e97f2
4377f6e4-fa7c-4eb0-ae39-8b1c894bf3e3	2021-01-13 23:53:50.691972+05:30	2021-01-13 23:53:50.692019+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	9227e6fc-7e6b-4a5a-a356-872f1c94ff1a
03cc97b3-8373-4bf1-8c2a-69ce102369d9	2021-01-13 23:53:58.782077+05:30	2021-01-13 23:53:58.782108+05:30	91db5936-b825-4aeb-b8ee-b8f2e722ced1	880627b7-3bbf-4f18-9ae6-1bf826517d04
e2fb31da-a943-436d-9e20-e637a598ca95	2021-01-13 23:54:52.694558+05:30	2021-01-13 23:54:52.694628+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	87180132-eb74-4e0e-b105-c4e087ac448c
847928d8-dc4d-4de7-a4d9-889ff2ec7b62	2021-01-13 23:55:01.524741+05:30	2021-01-13 23:55:01.524785+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	197f920c-2255-49e5-9b7a-5951b1dbcfb2
597cf5ff-2582-419d-a3dd-143330202c6b	2021-01-13 23:55:06.73926+05:30	2021-01-13 23:55:06.739289+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	880627b7-3bbf-4f18-9ae6-1bf826517d04
c50a47e0-bee8-45e7-afde-07183ff42a50	2021-01-13 23:55:14.047349+05:30	2021-01-13 23:55:14.047385+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	8bd97fc2-79f4-4d02-83d3-7f3a3c4542b6
d84a07bc-287a-45b4-ba47-b40e42410448	2021-01-13 23:55:19.566954+05:30	2021-01-13 23:55:19.567004+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
227d13bd-8c02-4fdf-abb0-9ba86f7c84e0	2021-01-13 23:55:23.95634+05:30	2021-01-13 23:55:23.956372+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
99b917d7-b311-4b79-9881-bcf3a79b6b5c	2021-01-13 23:55:30.959631+05:30	2021-01-13 23:55:30.959679+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	8b8a5adf-6f27-4196-9d75-82edf8d99d23
0ff4815a-f01d-479c-b2a1-27c685f2ed48	2021-01-13 23:55:41.216439+05:30	2021-01-13 23:55:41.216467+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	9227e6fc-7e6b-4a5a-a356-872f1c94ff1a
1a5efa8c-d097-4018-905b-43dd04f34d07	2021-01-13 23:55:44.527292+05:30	2021-01-13 23:55:44.52737+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	d91d8591-cbb1-4374-9833-4cab2b6e97f2
453a6829-a510-4e58-b4c6-7b6434d04300	2021-01-13 23:55:48.924025+05:30	2021-01-13 23:55:48.924078+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	c70eb491-9549-4fc9-bbb9-ebbc29542aa0
aaca98d3-4778-40d4-8af8-43211b306c36	2021-01-13 23:55:53.058527+05:30	2021-01-13 23:55:53.05857+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	38e03cb3-532f-4d62-ab02-549b56fc67c8
dc0c69c2-0814-400b-9577-0d585b02bfa5	2021-01-13 23:55:56.655262+05:30	2021-01-13 23:55:56.65529+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	24123e44-3211-4cce-9da7-c96a772886c3
6069ec8a-9e33-4a28-a1ee-a4d7bb799a43	2021-01-13 23:56:00.42331+05:30	2021-01-13 23:56:00.423351+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	3bb9f095-4627-487c-a6da-ed0569bbfe35
24aa79da-473f-4deb-8e50-0c073dd6a5f6	2021-01-13 23:56:06.513979+05:30	2021-01-13 23:56:06.514017+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	197f920c-2255-49e5-9b7a-5951b1dbcfb2
c1e84671-1f97-43d9-9dfc-d41b10adf5a6	2021-01-13 23:56:12.28564+05:30	2021-01-13 23:56:12.285683+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
f5fd8a4a-a09c-46c0-be8e-f116489db9b3	2021-01-13 23:56:16.390011+05:30	2021-01-13 23:56:16.390041+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
4b389fd6-b8a7-4376-87cb-236e6e33e81b	2021-01-13 23:56:20.200851+05:30	2021-01-13 23:56:20.20088+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
0df406e8-d8d4-4ea5-8edf-97a7ca06d194	2021-01-13 23:56:26.788282+05:30	2021-01-13 23:56:26.78831+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
c3d7366e-2cb5-41ab-8957-e21a82eaa40c	2021-01-13 23:56:32.062345+05:30	2021-01-13 23:56:32.062375+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
678a0727-049b-4c06-b416-348761094b7e	2021-01-13 23:56:36.788753+05:30	2021-01-13 23:56:36.788781+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
446678ba-77cf-4b4c-8d15-ac5f422e9c89	2021-01-13 23:56:39.688212+05:30	2021-01-13 23:56:39.68824+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
8d99a536-48e9-4c11-82c8-4e59d5c17276	2021-01-13 23:56:56.505292+05:30	2021-01-13 23:56:56.505324+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
ff388a38-6cef-4c6e-9be3-1b2579977ae4	2021-01-13 23:57:01.077073+05:30	2021-01-13 23:57:01.077119+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
48ca6953-3b0a-4197-bc0d-d86a36ba6d80	2021-01-13 23:57:04.459527+05:30	2021-01-13 23:57:04.459561+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
88d6ad2e-89dc-4b08-8c80-218b9c851a52	2021-01-13 23:57:10.388094+05:30	2021-01-13 23:57:10.388121+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
7c334ad6-81ee-4971-8a20-74601ef11645	2021-01-13 23:57:13.506061+05:30	2021-01-13 23:57:13.506091+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
5695b683-528f-43ac-88c3-11255930357a	2021-01-13 23:57:17.973044+05:30	2021-01-13 23:57:17.973071+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
bedb8028-eca1-4304-9acd-7ffe60049c82	2021-01-13 23:57:20.807955+05:30	2021-01-13 23:57:20.80804+05:30	ee808fa5-24ef-4af6-b970-8803d82b2f45	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
ecfcd106-9238-4890-91a7-604e1dae7bdb	2021-01-13 23:57:57.167503+05:30	2021-01-13 23:57:57.167532+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
3d18f3e7-3cf8-466a-aedb-dd4da129175d	2021-01-13 23:57:59.345453+05:30	2021-01-13 23:57:59.345498+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
958abf83-db8a-407c-9635-19d0dd9b7ea9	2021-01-13 23:58:01.023058+05:30	2021-01-13 23:58:01.023087+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
e3b97ee7-c918-450d-a5c9-f16295b97cf3	2021-01-13 23:58:02.593966+05:30	2021-01-13 23:58:02.594039+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
6291fbc5-f9fd-4ff5-8995-22c32f88e950	2021-01-13 23:58:03.979076+05:30	2021-01-13 23:58:03.979132+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	7fbf36fa-2f2c-4ea6-8b2d-5c7d96d52f1d
b1b3bd0e-e69f-4438-bda6-6634d7d85cfc	2021-01-13 23:58:07.15689+05:30	2021-01-13 23:58:07.15692+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
2da08dce-9a14-4067-8a74-bc700f2c16e5	2021-01-13 23:58:08.625297+05:30	2021-01-13 23:58:08.625371+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
324cb03f-529c-40c3-b442-157b4983ceba	2021-01-13 23:58:12.372078+05:30	2021-01-13 23:58:12.372106+05:30	bec1860a-b6e4-4f9e-bd99-6ae144958b79	c820d7dd-06e2-40b8-b8c4-d42f86f40c9e
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: randomtwo
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: randomtwo
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: randomtwo
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: randomtwo
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: randomtwo
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: randomtwo
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: youtube_api_comment youtube_api_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_comment
    ADD CONSTRAINT youtube_api_comment_pkey PRIMARY KEY (id);


--
-- Name: youtube_api_subscription youtube_api_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_subscription
    ADD CONSTRAINT youtube_api_subscription_pkey PRIMARY KEY (id);


--
-- Name: youtube_api_user youtube_api_user_email_key; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_user
    ADD CONSTRAINT youtube_api_user_email_key UNIQUE (email);


--
-- Name: youtube_api_user youtube_api_user_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_user
    ADD CONSTRAINT youtube_api_user_pkey PRIMARY KEY (id);


--
-- Name: youtube_api_user youtube_api_user_username_key; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_user
    ADD CONSTRAINT youtube_api_user_username_key UNIQUE (username);


--
-- Name: youtube_api_video youtube_api_video_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_video
    ADD CONSTRAINT youtube_api_video_pkey PRIMARY KEY (id);


--
-- Name: youtube_api_videolike youtube_api_videolike_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_videolike
    ADD CONSTRAINT youtube_api_videolike_pkey PRIMARY KEY (id);


--
-- Name: youtube_api_view youtube_api_view_pkey; Type: CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_view
    ADD CONSTRAINT youtube_api_view_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: youtube_api_comment_user_id_c51fc796; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX youtube_api_comment_user_id_c51fc796 ON public.youtube_api_comment USING btree (user_id);


--
-- Name: youtube_api_comment_video_id_03737292; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX youtube_api_comment_video_id_03737292 ON public.youtube_api_comment USING btree (video_id);


--
-- Name: youtube_api_subscription_subscribeTo_id_65886ac9; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX "youtube_api_subscription_subscribeTo_id_65886ac9" ON public.youtube_api_subscription USING btree ("subscribeTo_id");


--
-- Name: youtube_api_user_email_8f377552_like; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX youtube_api_user_email_8f377552_like ON public.youtube_api_user USING btree (email varchar_pattern_ops);


--
-- Name: youtube_api_user_username_54a287a1_like; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX youtube_api_user_username_54a287a1_like ON public.youtube_api_user USING btree (username varchar_pattern_ops);


--
-- Name: youtube_api_video_User_id_e9b76c92; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX "youtube_api_video_User_id_e9b76c92" ON public.youtube_api_video USING btree ("User_id");


--
-- Name: youtube_api_videolike_user_id_91cbc589; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX youtube_api_videolike_user_id_91cbc589 ON public.youtube_api_videolike USING btree (user_id);


--
-- Name: youtube_api_videolike_video_id_d172fe67; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX youtube_api_videolike_video_id_d172fe67 ON public.youtube_api_videolike USING btree (video_id);


--
-- Name: youtube_api_view_user_id_65308a5f; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX youtube_api_view_user_id_65308a5f ON public.youtube_api_view USING btree (user_id);


--
-- Name: youtube_api_view_video_id_7ea38faa; Type: INDEX; Schema: public; Owner: randomtwo
--

CREATE INDEX youtube_api_view_video_id_7ea38faa ON public.youtube_api_view USING btree (video_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_youtube_api_user_id; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_youtube_api_user_id FOREIGN KEY (user_id) REFERENCES public.youtube_api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_api_comment youtube_api_comment_user_id_c51fc796_fk_youtube_api_user_id; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_comment
    ADD CONSTRAINT youtube_api_comment_user_id_c51fc796_fk_youtube_api_user_id FOREIGN KEY (user_id) REFERENCES public.youtube_api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_api_comment youtube_api_comment_video_id_03737292_fk_youtube_api_video_id; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_comment
    ADD CONSTRAINT youtube_api_comment_video_id_03737292_fk_youtube_api_video_id FOREIGN KEY (video_id) REFERENCES public.youtube_api_video(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_api_subscription youtube_api_subscrip_subscribeTo_id_65886ac9_fk_youtube_a; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_subscription
    ADD CONSTRAINT "youtube_api_subscrip_subscribeTo_id_65886ac9_fk_youtube_a" FOREIGN KEY ("subscribeTo_id") REFERENCES public.youtube_api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_api_video youtube_api_video_User_id_e9b76c92_fk_youtube_api_user_id; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_video
    ADD CONSTRAINT "youtube_api_video_User_id_e9b76c92_fk_youtube_api_user_id" FOREIGN KEY ("User_id") REFERENCES public.youtube_api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_api_videolike youtube_api_videolike_user_id_91cbc589_fk_youtube_api_user_id; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_videolike
    ADD CONSTRAINT youtube_api_videolike_user_id_91cbc589_fk_youtube_api_user_id FOREIGN KEY (user_id) REFERENCES public.youtube_api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_api_videolike youtube_api_videolike_video_id_d172fe67_fk_youtube_api_video_id; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_videolike
    ADD CONSTRAINT youtube_api_videolike_video_id_d172fe67_fk_youtube_api_video_id FOREIGN KEY (video_id) REFERENCES public.youtube_api_video(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_api_view youtube_api_view_user_id_65308a5f_fk_youtube_api_user_id; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_view
    ADD CONSTRAINT youtube_api_view_user_id_65308a5f_fk_youtube_api_user_id FOREIGN KEY (user_id) REFERENCES public.youtube_api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_api_view youtube_api_view_video_id_7ea38faa_fk_youtube_api_video_id; Type: FK CONSTRAINT; Schema: public; Owner: randomtwo
--

ALTER TABLE ONLY public.youtube_api_view
    ADD CONSTRAINT youtube_api_view_video_id_7ea38faa_fk_youtube_api_video_id FOREIGN KEY (video_id) REFERENCES public.youtube_api_video(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

