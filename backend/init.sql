--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: PriceLists; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public."PriceLists" (
    id integer NOT NULL,
    "articleNo" character varying(255) NOT NULL,
    product character varying(255) NOT NULL,
    "inPrice" numeric(10,2) NOT NULL,
    price numeric(10,2) NOT NULL,
    unit character varying(255) NOT NULL,
    "inStock" integer DEFAULT 0 NOT NULL,
    description text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."PriceLists" OWNER TO "user";

--
-- Name: PriceLists_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public."PriceLists_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."PriceLists_id_seq" OWNER TO "user";

--
-- Name: PriceLists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public."PriceLists_id_seq" OWNED BY public."PriceLists".id;


--
-- Name: Translations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public."Translations" (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    language character varying(255) NOT NULL,
    value text NOT NULL,
    page text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Translations" OWNER TO "user";

--
-- Name: Translations_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public."Translations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Translations_id_seq" OWNER TO "user";

--
-- Name: Translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public."Translations_id_seq" OWNED BY public."Translations".id;


--
-- Name: PriceLists id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public."PriceLists" ALTER COLUMN id SET DEFAULT nextval('public."PriceLists_id_seq"'::regclass);


--
-- Name: Translations id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public."Translations" ALTER COLUMN id SET DEFAULT nextval('public."Translations_id_seq"'::regclass);


--
-- Data for Name: PriceLists; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public."PriceLists" (id, "articleNo", product, "inPrice", price, unit, "inStock", description, "createdAt", "updatedAt") FROM stdin;
1	ART-1001	Wireless Mouse	12.50	20.00	pcs	150	A compact wireless mouse with ergonomic design.	2025-05-02 12:47:30.004+00	2025-05-03 17:21:44.587+00
2	ART-1002	Mechanical Keyboard	35.00	55.99	pcs	200	A responsive mechanical keyboard with RGB lighting.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
3	ART-1003	Laptop Stand	15.00	29.99	pcs	180	A sturdy laptop stand to improve posture.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
4	ART-1004	Wireless Earbuds	20.00	39.99	pcs	220	High-quality wireless earbuds with noise cancellation.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
5	ART-1005	Bluetooth Speaker	25.00	49.99	pcs	100	Portable Bluetooth speaker with stereo sound.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
6	ART-1006	USB-C Hub	10.00	19.99	pcs	250	A compact USB-C hub with multiple ports.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
7	ART-1007	Portable Power Bank	18.00	34.99	pcs	300	A power bank with fast charging and high capacity.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
8	ART-1008	Ergonomic Chair	150.00	249.99	pcs	50	An ergonomic office chair designed for comfort.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
9	ART-1009	Smart Watch	40.00	79.99	pcs	180	A smart watch with fitness tracking and notifications.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
10	ART-1010	HD Webcam	30.00	59.99	pcs	120	HD webcam with autofocus and built-in microphone.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
11	ART-1011	Laptop Sleeve	8.00	19.99	pcs	400	A protective laptop sleeve made of soft fabric.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
12	ART-1012	Portable SSD	60.00	119.99	pcs	60	A fast and compact portable SSD for easy file transfer.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
13	ART-1013	Phone Case	5.00	14.99	pcs	500	A durable phone case to protect your device.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
14	ART-1014	Wireless Charger	15.00	29.99	pcs	230	A wireless charger for fast and convenient charging.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
15	ART-1015	Desk Lamp	12.00	24.99	pcs	170	A sleek desk lamp with adjustable brightness.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
16	ART-1016	Computer Mouse Pad	3.00	7.99	pcs	450	A smooth and durable mouse pad for comfort.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
17	ART-1017	Wireless Keyboard	25.00	49.99	pcs	200	A compact wireless keyboard with long battery life.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
18	ART-1018	Smartphone Stand	8.00	19.99	pcs	350	A flexible stand for holding your smartphone.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
19	ART-1019	Gaming Mouse	18.00	39.99	pcs	150	A precision gaming mouse with customizable buttons.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
20	ART-1020	Bluetooth Headphones	35.00	69.99	pcs	100	Wireless Bluetooth headphones with excellent sound quality.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
21	ART-1021	Tablet Case	10.00	19.99	pcs	400	A protective tablet case with multiple compartments.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
22	ART-1022	Game Controller	25.00	49.99	pcs	250	A game controller for both PC and console gaming.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
23	ART-1023	External Hard Drive	50.00	99.99	pcs	80	A reliable external hard drive for extra storage.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
24	ART-1024	Mini Projector	70.00	149.99	pcs	60	A portable mini projector for movies and presentations.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
25	ART-1025	Smartphone Holder	5.00	14.99	pcs	450	A sturdy holder to keep your smartphone in place.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
26	ART-1026	Power Strip	10.00	19.99	pcs	350	A power strip with multiple outlets for convenience.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
27	ART-1027	Smart Bulb	8.00	19.99	pcs	500	A smart bulb that can be controlled remotely.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
28	ART-1028	Wireless Router	40.00	79.99	pcs	120	A high-speed wireless router for stable internet connection.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
29	ART-1029	HDMI Cable	3.00	9.99	pcs	600	A high-quality HDMI cable for clear video and audio.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
30	ART-1030	Smart Plug	12.00	24.99	pcs	250	A smart plug to control appliances remotely.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
31	ART-1031	Air Purifier	60.00	129.99	pcs	70	An air purifier for cleaner and healthier air.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
32	ART-1032	Smart Camera	80.00	159.99	pcs	50	A smart camera with motion detection and cloud storage.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
33	ART-1033	Wireless Keyboard & Mouse Combo	30.00	59.99	pcs	200	A wireless keyboard and mouse combo for convenience.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
34	ART-1034	Portable Fan	12.00	24.99	pcs	180	A portable fan to keep you cool on the go.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
35	ART-1035	Smart Light Switch	15.00	29.99	pcs	220	A smart light switch that can be controlled remotely.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
36	ART-1036	USB Flash Drive	6.00	14.99	pcs	500	A USB flash drive for easy file transfer.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
37	ART-1037	Fitness Tracker	20.00	39.99	pcs	150	A fitness tracker to monitor your daily activity.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
38	ART-1038	Power Bank 20000mAh	40.00	79.99	pcs	100	A high-capacity power bank for charging multiple devices.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
39	ART-1039	Bluetooth Car Kit	15.00	29.99	pcs	200	A Bluetooth car kit for hands-free calling and music streaming.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
40	ART-1040	Digital Thermometer	5.00	12.99	pcs	350	A digital thermometer for accurate temperature measurement.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
41	ART-1041	Smart Door Lock	80.00	159.99	pcs	60	A smart door lock with remote access.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
42	ART-1042	Water Bottle	3.00	9.99	pcs	500	A durable water bottle for everyday use.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
43	ART-1043	Bike Mount for Smartphone	10.00	19.99	pcs	250	A mount to attach your smartphone to your bike.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
44	ART-1044	Bluetooth Adapter	8.00	18.99	pcs	400	A Bluetooth adapter for wireless connection.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
45	ART-1045	Waterproof Bluetooth Speaker	40.00	79.99	pcs	120	A waterproof Bluetooth speaker for outdoor use.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
46	ART-1046	Smart Plug Adapter	12.00	24.99	pcs	300	A smart plug adapter for controlling appliances remotely.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
47	ART-1047	Portable Fan with Battery	15.00	29.99	pcs	180	A portable fan with a rechargeable battery.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
48	ART-1048	Noise Cancelling Headphones	50.00	99.99	pcs	100	Noise cancelling headphones for better audio experience.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
49	ART-1049	Multiport USB Charger	20.00	39.99	pcs	220	A multiport USB charger for charging several devices.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
50	ART-1050	Wireless Charging Pad	18.00	39.99	pcs	160	A sleek wireless charging pad for your smartphone.	2025-05-03 16:55:41.385+00	2025-05-03 16:55:41.385+00
\.


--
-- Data for Name: Translations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public."Translations" (id, key, language, value, page, "createdAt", "updatedAt") FROM stdin;
1	product_name	en	Wireless Mouse	1	2025-05-02 13:08:22.255+00	2025-05-02 13:08:22.255+00
109	order	sv	Beställ	terms	2025-05-03 04:39:35.59+00	2025-05-03 04:39:35.59+00
110	our_customers	sv	Våra kunder	terms	2025-05-03 04:39:35.59+00	2025-05-03 04:39:35.59+00
111	about_us	sv	Om oss	terms	2025-05-03 04:39:35.59+00	2025-05-03 04:39:35.59+00
112	contact_us	sv	Kontakta oss	terms	2025-05-03 04:39:35.59+00	2025-05-03 04:39:35.59+00
28	terms_2	sv	Ni kan använda programmet GRATIS i 14 dagar.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
29	terms_3	sv	123 Fakturera är så lätt och självförklarande att chansen för att du kommer behöva support är minimal, men om du skulle behöva support, så är vi här för dig, med vårt kontor bemannat större delen av dygnet. Efter provperioden så fortsätter abonnemanget och kostar 99 kronor exkl. moms per månad, som faktureras årligen. Om du inte vill behålla programmet, så är det bara att avbryta provperioden genom att ge oss besked inom 14 dagar från registrering.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
30	terms_4	sv	Ni har självklart rätt att avsluta användningen av programmet utan kostnad, genom att ge oss besked per email inom 14 dagar från registrering, att ni inte vill fortsätta med programmet, och betalar då självklart inte heller något.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
31	terms_5	sv	Om vi inte inom 14 dagar från registrering mottar sådant besked från er, så kan ordern av naturliga orsaker inte ändras. Med registrering menas det datum och klockslag då ni valde att trycka på knappen Fakturera Nu.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
32	terms_6	sv	Fakturering sker för ett år i taget.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
33	terms_7	sv	Priset för 123 Fakturera (specialpris kr 99:- / ord. pris kr 159:- per månad) är för årsavgift Start för ett års användning av programmet.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
34	terms_8	sv	(Vid användning av specialpriset kr 99:- så räknas ett års perioden från registrering.)	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
35	terms_9	sv	Alla priser är exkl. moms.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
36	terms_10	sv	Offert, Lagerstyrning, Medlemsfakturering, Fleranvändarversion och Engelsk utskrift är (eller kan vara) tilläggsmoduler som kan beställas senare.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
37	terms_11	sv	Förmedling, samt fakturering kan komma att ske från K-Soft Sverige AB, Box 2826, 187 28 Täby. Vi kan i framtiden välja att samarbeta med annat företag för t.ex. förmedling och fakturering. Kundförhållandet är dock självklart med oss. Betalningen görs till det företag som fakturan kommer från.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
38	terms_12	sv	Årsavgiften är löpande men om ni inte vill fortsätta att använda programmet, så är det bara att ge besked trettio dagar innan ingången av nästföljande ett års period.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
39	terms_13	sv	Introduktionspriset (kr 99:- per månad) är för årsavgift Start för det första året. Efter det första året faktureras ord. pris vilket för närvarande är, för årsavgift Start, ett hundra och femtinio kronor per månad, för årsavgift Fjärrstyrning, tre hundra kronor per månad och för årsavgift Pro, tre hundra och trettiotre kronor per månad. Efter ett år faktureras årsavgift Fjärrstyrning som standard men ni kan välja Start eller Pro genom att ge besked när som helst innan förfallodagen.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
40	terms_14	sv	Om ni väljer att behålla programmet genom att inte ge oss besked per email innan 14 dagar från registrering, om att ni inte vill fortsätta med programmet, så accepterar ni att ni kommer att betala fakturan för er beställning. Att inte betala fakturan eller sen betalning ger inte rätt till att annullera beställningen. Vi hjälper gärna att fiksa logo för er till självkostpris.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
41	terms_15	sv	Licens för användning av 123 Fakturera säljs självklart enligt gällande lagar.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
42	terms_16	sv	För att lättare kunna hjälpa er och ge er support samt för att följa lagarna, måste vi av naturliga orsaker spara er information.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
43	terms_17	sv	I samband med lagring av information så kräver lagen att vi ger er följande information:	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
44	terms_18	sv	Om ni beställer som privatperson så har ni den ångerrätt som lagen fastställer. Er information sparas så att vi kan hjälpa er m.m. Vi kommer använda den för att kunna hjälpa er om ni behöver hjälp, följa lagarna ang. bokföring m.m. När det kommer uppgraderingar och liknande, kan vi komma att skicka er erbjudande och liknande om våra produkter och tjänster per email eller liknande. Ni kan också komma att bli kontaktad per email, post och telefon. Om ni inte vill bli kontaktad, bara skicka oss en email ang. det.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
45	terms_19	sv	Ni kan när som helst begära att inte få tillsänt information om uppgraderingar per email, brev eller liknande och vi kommer då självklart inte att göra det. Sådan begäran skickar ni till oss per email, brev eller liknande.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
46	terms_20	sv	Av naturliga orsaker måste vi spara, databehandla och flytta era data. Er information sparas tills vidare. Ni ger oss medgivande till att lagra, databehandla och flytta era data, samt att skicka er erbjudanden och liknande per email, brev och liknande. Pga. sättet det fungerar på med programvara behöver medgivandet också ges till andra parter. Medgivandet ges därför till oss, samt till de företag och/eller person/personer som äger programvaran, källkod, hemsidan och liknande. Det ges också till nuvarande och framtida företag ägda och/eller kontrollerade av en eller flera av de som i dag äger och/eller kontrollerar oss. Det ges också till nuvarande och framtida personer (om några) som äger eller kommer till att äga programvaran, källkod, hemsidan och liknande. Detta både för nuvarande och framtida produkter och tjänster. Det ges också till ett annat företag, (som K-Soft Sverige AB), som vi kan använda för att skicka/sälja produkter, uppgraderingar och liknande, antingen genom att under förmedla programvaran eller på annat sätt.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
47	terms_21	sv	Ni har självklart rätt att begära tillgång till, rättelse eller radering av informationen vi har om er. Ni har också rätt att begära begränsning av behandlingen av era uppgifter, eller att invända mot behandling samt rätten till dataportabilitet. Ni har självklart rätt att klaga till tillsynsmyndighet. Mer juridisk info om oss hittar ni här. Det är lagarna i Irland som är gällande lagar. Det är självklart helt frivilligt att lägga er order. Vi använder självklart inte någon automatiserad profilering och inte heller något automatiserat beslutsfattande.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
48	terms_22	sv	Om ni vill kontakta oss, vänligen använd då informationen på denna hemsidan.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
49	terms_23	sv	Klicka på Fakturera Nu för att registrera i enlighet med den information som ni har lagt in och villkoren här. (Datum och tidpunkt för inläggningen läggs in automatiskt i våra register.)	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
50	terms_24	sv	Vår erfarenhet är att våra kunder är mycket nöjda med sättet vi arbetar på och vi hoppas och tror att det också kommer att bli er upplevelse.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
51	terms_25	sv	Ha en trevlig dag!	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
113	terms	en	Terms	terms	2025-05-03 04:42:04.027+00	2025-05-03 04:42:04.027+00
78	terms_2	en	You can use the program FOR FREE for 14 days.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
114	close_and_go_back	en	Close and Go Back	terms	2025-05-03 04:42:04.027+00	2025-05-03 04:42:04.027+00
115	terms	sv	Villkor	terms	2025-05-03 04:42:04.027+00	2025-05-03 04:42:04.027+00
116	close_and_go_back	sv	Stäng och gå tillbaka	terms	2025-05-03 04:42:04.027+00	2025-05-03 04:42:04.027+00
77	terms_1	en	clicking Invoice Now, you choose to register according to the information that you have typed in and the text on the registration page and the terms here, and you at the same time accept the terms here.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
79	terms_3	en	123 Fakturera is so easy and self-explanatory that the chance that you will need support is minimal, but if you should need support, we are here for you, with our office manned for the most part of the day. After the trial period, the subscription continues and costs SEK 99 excluding VAT per month, which is billed annually. If you do not want to keep the program, just cancel the trial period by giving notice before 14 days from registration.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
80	terms_4	en	You have of course the right to terminate the use of the program without any costs, by giving us notice per email before 14 days from registration, that you do not want to continue with the program, and you then of course do not pay anything.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
81	terms_5	en	If we do not receive such a notice from you before 14 days from registration, then the order, for natural reasons, cannot be changed. With registration it is meant the date and time when you did choose to press the button Invoice Now.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
82	terms_6	en	Billing is for one year at a time.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
83	terms_7	en	The price for 123 Fakturera (offer price SEK 99 per month / ordinary price SEK 159 per month) is for the annual fee Start for one year's use of the program.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
84	terms_8	en	(When using the offer price of SEK 99, the one-year period is calculated from registration.)	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
85	terms_9	en	All prices are excluding. VAT.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
86	terms_10	en	Offer, Inventory Control, Member Invoicing, Multiuser version and English printout are (or can be) additional modules that can be ordered later.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
87	terms_11	en	Intermediation, as well as invoicing, may take place from K-Soft Sverige AB, Box 2826, 187 28 Täby. In the future, we may choose to cooperate with another company for e.g. intermediation and invoicing. However, the customer relationship is with us. The payment is made to the company from which the invoice comes.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
88	terms_12	en	The annual fee is on a continuous basis, but if you do not wish to continue using the program, all you have to do is give notice thirty days before the start of the next one-year period.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
89	terms_13	en	The introductory offer ( SEK 99 per month) is for the annual fee Start for the first year. After the first year, the ordinary price is billed, which is currently, for annual fee Start, one hundred and fifty-nine kroner per month, for annual fee Remote control, three hundred kroner per month and for annual fee Pro, three hundred and thirty-three kroner per month. After one year, the annual Remote Control fee is invoiced as standard, but you can choose Start or Pro by giving notice at any time before the due date.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
90	terms_14	en	If you choose to keep the program by not notifying us by email within 14 days of registration that you do not wish to continue with the program, you accept that you will pay the invoice for your order. Failure to pay the invoice or late payment does not give the right to cancel the order. We are happy to help you with logo at a cost price.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
91	terms_15	en	License for the use of 123 Fakturera is of course sold in accordance with applicable laws.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
92	terms_16	en	In order to be able to help you more easily and provide you with support, as well as to comply with the laws, we, for natural reasons, have to store your information.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
93	terms_17	en	In connection with the storage of information, the law requires that we provide you with the following information:	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
94	terms_18	en	If you order as a private person, you have the right to cancel as stated by law. Your information is stored so that we can help you, etc. We will use it to be able to help you if you need help, follow the laws regarding bookkeeping, etc. When there are upgrades and the like, we may send you offers and the like about our products and services by email or the like. You may be contacted by email, post and telephone. If you don't want to be contacted, just send us an email about it.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
95	terms_19	en	You can at any time ask not to be sent information about upgrades by email, letter or the like, and we will of course not do that. You send such a request to us by email, post or similar.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
96	terms_20	en	For natural reasons, we have to store, process and move your data. Your information is stored until further notice. You give us permission to store, process and move your data, as well as to send you offers and the like by email, letter and the like. Due to the way it works with software, permission also needs to be given to other parties. The permission is therefore granted to us, as well as to the companies and/or person(s) who own the software, the source code, the website and the like. It is also given to current and future companies owned and/or controlled by one or more of those who currently own and/or control us. It is also given to current and future companies owned and/or controlled by one or more of those who currently own and/or control the companies (if any), which own or will own the software, source code, website and the like. It is also given to current and future persons (if any) who own or will own the software, source code, website and the like. This applies both to current and future products and services. It is also given to another company,  (like K-Soft Sverige AB), which we can use to send/sell products, upgrades and the like, either by intermediation or otherwise.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
97	terms_21	en	You of course have the right to request access to, change and deletion of the information we hold about you. You also have the right to request restriction of data processing, and to object to data processing and the right to data portability. You have the right to complain to the supervisory authority. You can find more legal information about us here.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
98	terms_22	en	The laws of Ireland are the applicable laws. Placing an order is of course completely voluntary. Of course, we do not use any automated profiling or decisions.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
99	terms_23	en	If you wish to contact us, please use the information on this website.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
100	terms_24	en	Click on Invoice Now to register according to the information you have entered and the terms here. (Date and time of admission are entered automatically in our registers.)	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
101	terms_25	en	Our experience is that our customers are very satisfied with the way we work and hope and believe that this will also be your experience.	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
102	terms_26	en	Have a great day!	terms	2025-05-03 03:39:51.852+00	2025-05-03 03:39:51.852+00
103	home	en	Home	terms	2025-05-03 04:39:35.59+00	2025-05-03 04:39:35.59+00
104	order	en	Order	terms	2025-05-03 04:39:35.59+00	2025-05-03 04:39:35.59+00
105	our_customers	en	Our Customers	terms	2025-05-03 04:39:35.59+00	2025-05-03 04:39:35.59+00
106	about_us	en	About Us	terms	2025-05-03 04:39:35.59+00	2025-05-03 04:39:35.59+00
107	contact_us	en	Contact Us	terms	2025-05-03 04:39:35.59+00	2025-05-03 04:39:35.59+00
108	home	sv	Hem	terms	2025-05-03 04:39:35.59+00	2025-05-03 04:39:35.59+00
27	terms_1	sv	klicka på Fakturera Nu så väljer ni att registrera enligt den information som ni har lagt in och texten på registrerings sidan och villkoren här, och accepterar samtidigt villkoren här.	terms	2025-05-02 13:40:29.437+00	2025-05-02 13:40:29.437+00
117	terms_0	en	BY	terms	2025-05-03 04:55:03.7+00	2025-05-03 04:55:03.7+00
118	terms_0	sv	GENOM ATT	terms	2025-05-03 04:55:25.054+00	2025-05-03 04:55:25.054+00
119	invoices	en	Invoices	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
120	customers	en	Customers	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
121	my_business	en	My Business	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
122	invoice_journal	en	Invoice Journal	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
123	price_list	en	Price List	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
124	multiple_invoicing	en	Multiple Invoicing	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
125	unpaid_invoices	en	Unpaid Invoices	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
126	offer	en	Offer	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
127	inventory_control	en	Inventory Control	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
128	member_invoicing	en	Member Invoicing	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
129	import_export	en	Import/Export	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
130	logout	en	Logout	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
131	invoices	sv	Fakturor	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
132	customers	sv	Kunder	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
133	my_business	sv	Mitt företag	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
134	invoice_journal	sv	Fakturajournal	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
135	price_list	sv	Prislista	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
136	multiple_invoicing	sv	Massfakturering	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
137	unpaid_invoices	sv	Obetalda fakturor	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
138	offer	sv	Offert	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
139	inventory_control	sv	Lagerhantering	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
140	member_invoicing	sv	Medlemsfakturering	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
141	import_export	sv	Import/Export	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
142	logout	sv	Logga ut	home	2025-05-03 06:47:39.386+00	2025-05-03 06:47:39.386+00
143	menu	en	Menu	home	2025-05-03 06:51:46.043+00	2025-05-03 06:51:46.043+00
144	menu	sv	Meny	home	2025-05-03 06:51:46.043+00	2025-05-03 06:51:46.043+00
145	new_product	en	New Product	home	2025-05-03 07:07:22.319+00	2025-05-03 07:07:22.319+00
146	print_list	en	Print List	home	2025-05-03 07:07:22.319+00	2025-05-03 07:07:22.319+00
147	advanced_mode	en	Advanced Mode	home	2025-05-03 07:07:22.319+00	2025-05-03 07:07:22.319+00
148	new_product	sv	Ny produkt	home	2025-05-03 07:07:22.319+00	2025-05-03 07:07:22.319+00
149	print_list	sv	Skriv ut lista	home	2025-05-03 07:07:22.319+00	2025-05-03 07:07:22.319+00
150	advanced_mode	sv	Avancerat läge	home	2025-05-03 07:07:22.319+00	2025-05-03 07:07:22.319+00
151	search_article_no	en	Search Article No	home	2025-05-03 16:44:12.626+00	2025-05-03 16:44:12.626+00
152	search_product	en	Search Product	home	2025-05-03 16:44:12.626+00	2025-05-03 16:44:12.626+00
153	search_article_no	sv	Sök artikelnummer	home	2025-05-03 16:44:12.626+00	2025-05-03 16:44:12.626+00
154	search_product	sv	Sök produkt	home	2025-05-03 16:44:12.626+00	2025-05-03 16:44:12.626+00
155	press_enter_to_save	en	Press enter to save the entries	home	2025-05-03 16:45:07.146+00	2025-05-03 16:45:07.146+00
156	press_enter_to_save	sv	Tryck på enter för att spara posterna	home	2025-05-03 16:45:07.146+00	2025-05-03 16:45:07.146+00
157	article_no	en	Article No	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
158	product_service	en	Product/Service	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
159	in_price	en	In Price	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
160	price	en	Price	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
161	unit	en	Unit	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
162	in_stock	en	In Stock	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
163	description	en	Description	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
164	article_no	sv	Artikelnummer	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
165	product_service	sv	Produkt/tjänst	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
166	in_price	sv	Inköpspris	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
167	price	sv	Pris	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
168	unit	sv	Enhet	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
169	in_stock	sv	I lager	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
170	description	sv	Beskrivning	home	2025-05-03 16:45:55.366+00	2025-05-03 16:45:55.366+00
\.


--
-- Name: PriceLists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public."PriceLists_id_seq"', 50, true);


--
-- Name: Translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public."Translations_id_seq"', 170, true);


--
-- Name: PriceLists PriceLists_articleNo_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public."PriceLists"
    ADD CONSTRAINT "PriceLists_articleNo_key" UNIQUE ("articleNo");


--
-- Name: PriceLists PriceLists_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public."PriceLists"
    ADD CONSTRAINT "PriceLists_pkey" PRIMARY KEY (id);


--
-- Name: Translations Translations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public."Translations"
    ADD CONSTRAINT "Translations_pkey" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

