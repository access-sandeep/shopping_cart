--
-- PostgreSQL database dump
--

\restrict xApDLKuRBoTgq9HRg1gRHwSSt0lB1HlYY16VjiBb4yM4BCdXuiEeboVqe79MhM1

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-08-01 12:45:29

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

DROP DATABASE shopping_cart_db;
--
-- TOC entry 5362 (class 1262 OID 24580)
-- Name: shopping_cart_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE shopping_cart_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE shopping_cart_db OWNER TO postgres;

\unrestrict xApDLKuRBoTgq9HRg1gRHwSSt0lB1HlYY16VjiBb4yM4BCdXuiEeboVqe79MhM1
\connect shopping_cart_db
\restrict xApDLKuRBoTgq9HRg1gRHwSSt0lB1HlYY16VjiBb4yM4BCdXuiEeboVqe79MhM1

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

--
-- TOC entry 5348 (class 0 OID 32776)
-- Dependencies: 265
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5307 (class 0 OID 24613)
-- Dependencies: 224
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (1, 'address line 1', 'address line 2', 585, 'Uttar Pradesh', '998776', '2026-07-10 20:16:32.130237', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (2, 'D 19/29', 'Kewal Galli, Dasaswamedh', 585, 'Uttar Pradesh', '221001', '2026-07-14 16:52:17.491618', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (3, 'K 69/19', 'Kanpur Galli, Uddyog Vihar', 335, 'Uttar Pradesh', '100876', '2026-07-20 13:47:31.744831', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (4, 'first_name 69/19', 'Fanpur Galli, Uddyog Vihar', 335, 'Uttar Pradesh', '100876', '2026-07-20 16:30:56.441336', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (5, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-20 17:03:09.788435', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (6, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-20 18:44:50.667192', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (7, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-20 21:50:24.985401', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (8, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-20 21:50:52.193802', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (9, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-25 13:41:48.039901', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (10, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 18:08:46.995031', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (11, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 18:09:28.741201', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (12, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 18:09:39.885963', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (13, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 18:25:26.04277', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (14, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 18:27:11.77201', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (15, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 18:27:20.917841', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (16, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 18:30:32.308956', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (17, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 18:30:34.442278', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (18, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:05:28.232217', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (19, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:05:29.973902', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (20, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:05:52.951376', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (21, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:06:25.624738', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (22, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:06:27.145235', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (23, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:08:38.920346', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (24, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:08:40.375452', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (25, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:11:53.20957', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (26, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:12:40.904475', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (27, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:13:31.194618', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (28, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:15:23.826057', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (29, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:22:52.803368', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (30, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:22:55.077452', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (31, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-26 21:24:04.202806', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (49, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-27 20:32:30.904566', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (50, 'J42, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-27 20:40:46.074165', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (51, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-28 19:47:28.282207', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (52, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-28 19:51:15.735769', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (53, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-28 21:25:29.217483', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (54, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-28 21:26:29.714058', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (55, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-28 21:38:02.870784', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (56, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-28 21:43:28.684294', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at, user_user_id) VALUES (57, 'J44, Arihant Heirloom Apartment', 'Thalambur main road, Thalambur', 515, 'Tamil Nadu', '600130', '2026-07-29 17:52:21.929754', NULL) ON CONFLICT DO NOTHING;


--
-- TOC entry 5314 (class 0 OID 24682)
-- Dependencies: 231
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brands (brand_id, brand_name, description) VALUES (4, 'Xiaomi', 'Chinese brand offering affordable to high-end Android options.') ON CONFLICT DO NOTHING;
INSERT INTO public.brands (brand_id, brand_name, description) VALUES (1, 'Nothing', 'Distinctive transparent design phones and CMF accessories.') ON CONFLICT DO NOTHING;
INSERT INTO public.brands (brand_id, brand_name, description) VALUES (3, 'Lava', 'Domestic Indian smartphone manufacturer.') ON CONFLICT DO NOTHING;
INSERT INTO public.brands (brand_id, brand_name, description) VALUES (2, 'Samsung', 'South Korean giant making Galaxy phones and displays.') ON CONFLICT DO NOTHING;
INSERT INTO public.brands (brand_id, brand_name, description) VALUES (5, 'Realme', 'Budget-friendly spin-off brand targeting youth.') ON CONFLICT DO NOTHING;


--
-- TOC entry 5328 (class 0 OID 24813)
-- Dependencies: 245
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5316 (class 0 OID 24695)
-- Dependencies: 233
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (category_id, category_name, description) VALUES (1, 'Bla', 'This is a dummy description') ON CONFLICT DO NOTHING;
INSERT INTO public.categories (category_id, category_name, description) VALUES (2, 'Mobile Phone', 'The category of mobile phones') ON CONFLICT DO NOTHING;
INSERT INTO public.categories (category_id, category_name, description) VALUES (3, 'Smart TV', 'The category of Smart TV') ON CONFLICT DO NOTHING;


--
-- TOC entry 5305 (class 0 OID 24595)
-- Dependencies: 222
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (291, 109, 'Vishakhapatnam', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (292, 109, 'Vijayavada', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (293, 109, 'Guntūr', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (294, 109, 'Kakinada', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (295, 109, 'Rajahmundry', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (296, 109, 'Sitanagaram', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (297, 109, 'Patacudapah', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (298, 109, 'Putlampalle', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (299, 109, 'Ambapuram', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (300, 109, 'Patapadu', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (301, 109, 'Takkolu', 'Andhra Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (302, 109, 'Guwahati', 'Assam') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (303, 109, 'Dispur', 'Assam') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (304, 109, 'Belahi', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (305, 109, 'Patna', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (306, 109, 'Madarpur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (307, 109, 'Gaya', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (308, 109, 'Muzaffarpur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (309, 109, 'Darbhanga', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (310, 109, 'Arrah', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (311, 109, 'Begusarai', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (312, 109, 'Katihar', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (313, 109, 'Chapra', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (314, 109, 'Dinapore', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (315, 109, 'Hajipur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (316, 109, 'Dehri', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (317, 109, 'Sitamarhi', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (318, 109, 'Jamalpur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (319, 109, 'Khagaul', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (320, 109, 'Kantai', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (321, 109, 'Nasriganj', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (322, 109, 'Dalsingh Sarai', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (323, 109, 'Koelwar', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (324, 109, 'Baruni', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (325, 109, 'Sahibpur Kamal', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (326, 109, 'Maharajgani', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (327, 109, 'Raja Pakar', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (328, 109, 'Dumra', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (329, 109, 'Ulao', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (330, 109, 'Lakhnaur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (331, 109, 'Khusropur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (332, 109, 'Garhpura', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (333, 109, 'Jamira', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (334, 109, 'Desri', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (335, 109, 'Khanpur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (336, 109, 'Chhabila', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (337, 109, 'Nao Kothi', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (338, 109, 'Nipania', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (339, 109, 'Bhawanipur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (340, 109, 'Masar', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (341, 109, 'Pachrukhi', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (342, 109, 'Singhaul', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (343, 109, 'Pahleza', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (344, 109, 'Narpatnagar', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (345, 109, 'Sahdai Buzurg', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (346, 109, 'Jogta', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (347, 109, 'Sakhara', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (348, 109, 'Hasanpur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (349, 109, 'Gangauli', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (350, 109, 'Giddha', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (351, 109, 'Muria', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (352, 109, 'Babura', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (353, 109, 'Keshopur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (354, 109, 'Gobardhanpur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (355, 109, 'Andauli', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (356, 109, 'Kasiam', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (357, 109, 'Bhainsaha', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (358, 109, 'Deuriya', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (359, 109, 'Berkap', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (360, 109, 'Suara', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (361, 109, 'Dahaur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (362, 109, 'Katar', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (363, 109, 'Bhagwanpur', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (364, 109, 'Tendua Dusadhi', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (365, 109, 'Bhagwatpur Patera', 'Bihar') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (366, 109, 'Chandigarh', 'Chandigarh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (367, 109, 'Dhanas', 'Chandigarh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (368, 109, 'Bahlolpur', 'Chandigarh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (369, 109, 'Togan', 'Chandigarh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (370, 109, 'Gorakhpur', 'Chhattisgarh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (371, 109, 'Raipur', 'Chhattisgarh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (372, 109, 'Daman', 'Dadra and Nagar Haveli and Daman and Diu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (373, 109, 'Delhi', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (374, 109, 'Najafgarh', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (375, 109, 'Narela', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (376, 109, 'New Delhi', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (377, 109, 'Nangloi Jat', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (378, 109, 'Sultanpur Mazra', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (379, 109, 'Bhalswa Jahangirpur', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (380, 109, 'Dalūpura', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (381, 109, 'Mandoli', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (382, 109, 'Delhi Cantonment', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (383, 109, 'Madangir', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (384, 109, 'Bakhtawarpur', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (385, 109, 'Daryapur Kalan', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (386, 109, 'Kair', 'Delhi') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (387, 109, 'Ahmedabad', 'Gujarat') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (388, 109, 'Sūrat', 'Gujarat') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (389, 109, 'Kanpur', 'Gujarat') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (390, 109, 'Vadodara', 'Gujarat') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (391, 109, 'Rajkot', 'Gujarat') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (392, 109, 'Wapi', 'Gujarat') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (393, 109, 'Anghad', 'Gujarat') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (394, 109, 'Sursi', 'Gujarat') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (395, 109, 'Gorwa', 'Gujarat') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (396, 109, 'Faridabad', 'Haryana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (397, 109, 'Gurgaon', 'Haryana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (398, 109, 'Dharampur', 'Haryana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (399, 109, 'Shimla', 'Himachal Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (400, 109, 'Srinagar', 'Jammu and Kashmir') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (401, 109, 'Pampur', 'Jammu and Kashmir') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (402, 109, 'Sotur', 'Jammu and Kashmir') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (403, 109, 'Dhanbad', 'Jharkhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (404, 109, 'Ranchi', 'Jharkhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (405, 109, 'Jamshedpur', 'Jharkhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (406, 109, 'Kanke', 'Jharkhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (407, 109, 'Usmanpur', 'Jharkhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (408, 109, 'Hariladih', 'Jharkhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (409, 109, 'Pithauria', 'Jharkhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (410, 109, 'Bangalore', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (411, 109, 'Yelahanka', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (412, 109, 'Hesarghatta', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (413, 109, 'Madnaikanhalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (414, 109, 'Bagalūr', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (415, 109, 'Kadiganahalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (416, 109, 'Bayandhalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (417, 109, 'Sondekoppa', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (418, 109, 'Madavar', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (419, 109, 'Kadabgeri', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (420, 109, 'Basavanhalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (421, 109, 'Sonnappanhalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (422, 109, 'Doddajivanhalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (423, 109, 'Huttanhalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (424, 109, 'Vajarhalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (425, 109, 'Cachohalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (426, 109, 'Kasgatpur', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (427, 109, 'Kitanelli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (428, 109, 'Bendravadi', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (429, 109, 'Kodagihalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (430, 109, 'Mailanhalli', 'Karnataka') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (431, 109, 'Kannankulam', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (432, 109, 'Kottarasshēri', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (433, 109, 'Attadappa', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (434, 109, 'Kalleli', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (435, 109, 'Thiruvananthapuram', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (436, 109, 'Kochi', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (437, 109, 'Quilon', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (438, 109, 'Munro Turuttu', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (439, 109, 'Alleppey', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (440, 109, 'Ittikara', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (441, 109, 'Vypin', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (442, 109, 'Tripunittura', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (443, 109, 'Kalamasseri', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (444, 109, 'Mayyanad', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (445, 109, 'Perunad', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (446, 109, 'Edappalli', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (447, 109, 'Mannanchōri', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (448, 109, 'Elangunnapuzha', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (449, 109, 'Vayakkalattu', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (450, 109, 'Ayirūrpara', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (451, 109, 'Edavanakad', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (452, 109, 'Madappalli', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (453, 109, 'Mūlampilli', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (454, 109, 'Peringuzha', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (455, 109, 'Palliman', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (456, 109, 'Kandakkadava', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (457, 109, 'Oruvadalkotta', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (458, 109, 'Perunturuttu', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (459, 109, 'Mannara', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (460, 109, 'Cherakara', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (461, 109, 'Valavakattumūla', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (462, 109, 'Tonakkal', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (463, 109, 'Nirkunnam', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (464, 109, 'Perumbalam', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (465, 109, 'Kumbalam', 'Kerala') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (466, 109, 'Barmhan Kalan', 'Madhya Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (467, 109, 'Indore', 'Madhya Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (468, 109, 'Bhopal', 'Madhya Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (469, 109, 'Jabalpur', 'Madhya Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (470, 109, 'Gwalior', 'Madhya Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (471, 109, 'Tillor Khurd', 'Madhya Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (472, 109, 'Kampel', 'Madhya Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (473, 109, 'Shivni', 'Madhya Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (474, 109, 'Pipalda', 'Madhya Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (475, 109, 'Permi', 'Madhya Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (476, 109, 'Mumbai', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (477, 109, 'Pune', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (478, 109, 'Nagpur', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (479, 109, 'Thane', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (480, 109, 'Pimpri-Chinchwad', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (481, 109, 'Nasik', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (482, 109, 'Kalyan', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (483, 109, 'Vasai-Virar', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (484, 109, 'Aurangabad', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (485, 109, 'Bhayandar', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (486, 109, 'Ulhasnagar', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (487, 109, 'Amarnath', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (488, 109, 'Mamnoli', 'Maharashtra') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (489, 109, 'Imphal', 'Manipur') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (490, 109, 'Shillong', 'Meghalaya') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (491, 109, 'Jotsema', 'Nagaland') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (492, 109, 'Bhubaneshwar', 'Odisha') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (493, 109, 'Raurkela', 'Odisha') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (494, 109, 'Brahmapur', 'Odisha') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (495, 109, 'Puri', 'Odisha') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (496, 109, 'Balasore', 'Odisha') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (497, 109, 'Baripada', 'Odisha') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (498, 109, 'Brajarajnagar', 'Odisha') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (499, 109, 'Kendraparha', 'Odisha') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (500, 109, 'Puducherry', 'Puducherry') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (501, 109, 'Abhepur', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (502, 109, 'Ludhiana', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (503, 109, 'Amritsar', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (504, 109, 'Mauli', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (505, 109, 'Sohana', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (506, 109, 'Khizrpur', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (507, 109, 'Bhabat', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (508, 109, 'Manauli', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (509, 109, 'Dialpura', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (510, 109, 'Dhurali', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (511, 109, 'Mota Mazra', 'Punjab') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (512, 109, 'Jaipur', 'Rajasthan') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (513, 109, 'Jodhpur', 'Rajasthan') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (514, 109, 'Kota', 'Rajasthan') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (515, 109, 'Chennai', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (516, 109, 'Nadampalaiyam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (517, 109, 'Coimbatore', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (518, 109, 'Peyanvilai', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (519, 109, 'Madurai', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (520, 109, 'Trichinopoly', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (521, 109, 'Āvadi', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (522, 109, 'Salem', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (523, 109, 'Sūrappattu', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (524, 109, 'Ambattūr', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (525, 109, 'Oulgaret', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (526, 109, 'Tiruvottiyūr', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (527, 109, 'Pallavaram', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (528, 109, 'Tambaram', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (529, 109, 'Poonamallee', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (530, 109, 'Nerkunram', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (531, 109, 'Tirupparangunram', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (532, 109, 'Vandalūr', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (533, 109, 'Ayodhyapattanam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (534, 109, 'Neykkarappatti', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (535, 109, 'Mugalivakkam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (536, 109, 'Perumbakkam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (537, 109, 'Pakkam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (538, 109, 'Manappakkam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (539, 109, 'Panamarattuppatti', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (540, 109, 'Bommayapalaiyam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (541, 109, 'Gundūr', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (542, 109, 'Mannivakkam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (543, 109, 'Mevalūrkuppam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (544, 109, 'Palavedu', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (545, 109, 'Virapandi', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (546, 109, 'Valasaiyūr', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (547, 109, 'Valaiyankulam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (548, 109, 'Kūttambakkam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (549, 109, 'Kambarasampettai', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (550, 109, 'Sukkainpatti', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (551, 109, 'Parappatti', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (552, 109, 'Vellanūr', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (553, 109, 'Tippampatti', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (554, 109, 'Nanmangalam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (555, 109, 'Pallippatti', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (556, 109, 'Agaram', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (557, 109, 'Pallappatti', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (558, 109, 'Kolapakkam', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (559, 109, 'Kūllampatti', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (560, 109, 'Panaiyūr', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (561, 109, 'Solankuruni', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (562, 109, 'Chinnanūr', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (563, 109, 'Nedumadurai', 'Tamil Nadu') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (564, 109, 'Hyderabad', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (565, 109, 'Warangal', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (566, 109, 'Alwal', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (567, 109, 'Secunderabad', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (568, 109, 'Malkajgiri', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (569, 109, 'Dundigal', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (570, 109, 'Bandlagūda', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (571, 109, 'Kondaparti', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (572, 109, 'Mamidipalli', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (573, 109, 'Kismatpur', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (574, 109, 'Mogalcherla', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (575, 109, 'Manchirevula', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (576, 109, 'Wattinagulapalli', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (577, 109, 'Himayatsagar', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (578, 109, 'Gagilapur', 'Telangana') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (579, 109, 'Prayagraj', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (580, 109, 'Kanpur', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (581, 109, 'Lucknow', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (582, 109, 'Ghaziabad', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (583, 109, 'Āgra', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (584, 109, 'Meerut', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (585, 109, 'Varanasi', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (586, 109, 'Saharanpur', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (587, 109, 'Loni', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (588, 109, 'Murtazabad', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (589, 109, 'Kalianpur', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (590, 109, 'Akola', 'Uttar Pradesh') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (591, 109, 'Mahuakheraganj', 'Uttarakhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (592, 109, 'Nagla', 'Uttarakhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (593, 109, 'Gumanwala', 'Uttarakhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (594, 109, 'Saundhonwali', 'Uttarakhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (595, 109, 'Harbatpur', 'Uttarakhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (596, 109, 'Kamalwaganja Gaur', 'Uttarakhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (597, 109, 'Madanpur', 'Uttarakhand') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (598, 109, 'Kolkata', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (599, 109, 'Āsansol', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (600, 109, 'Haora', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (601, 109, 'Salt Lake City', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (602, 109, 'Bhatpara', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (603, 109, 'Panihati', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (604, 109, 'Kamarhati', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (605, 109, 'Kulti', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (606, 109, 'Chunchura', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (607, 109, 'Kharagpur', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (608, 109, 'Baharampur', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (609, 109, 'Shrirampur', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (610, 109, 'Hugli', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (611, 109, 'Chandannagar', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (612, 109, 'Krishnanagar', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (613, 109, 'Barakpur', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (614, 109, 'Titagarh', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (615, 109, 'Dam Dam', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (616, 109, 'Khardah', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (617, 109, 'Bansbaria', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (618, 109, 'Dhulian', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (619, 109, 'Baj Baj', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (620, 109, 'Siuri', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (621, 109, 'Tamlūk', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (622, 109, 'Diamond Harbour', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (623, 109, 'Pujali', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (624, 109, 'Sankrail', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (625, 109, 'Panchla', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (626, 109, 'Kola', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (627, 109, 'Dumjor', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (628, 109, 'Bagnan', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (629, 109, 'Begampur', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (630, 109, 'Mahadipur', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (631, 109, 'Palasgachi', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (632, 109, 'Raghunandanpur', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (633, 109, 'Hilora', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (634, 109, 'Ballalpur', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (635, 109, 'Jajigram', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (636, 109, 'Imamnagar', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (637, 109, 'Dignagar', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (638, 109, 'Tildanga', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (639, 109, 'Chanditala', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (640, 109, 'Baniara', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (641, 109, 'Jaladipur', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (642, 109, 'Ranipur', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (643, 109, 'Bartala', 'West Bengal') ON CONFLICT DO NOTHING;
INSERT INTO public.cities (city_id, country_id, city_name, state_province) VALUES (644, 109, 'Sikdarpur', 'West Bengal') ON CONFLICT DO NOTHING;


--
-- TOC entry 5303 (class 0 OID 24583)
-- Dependencies: 220
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (1, 'Afghanistan', 'Asia', 'UTC+04:30', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (2, 'Albania', 'Europe', 'UTC+01:00 (DST +02:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (3, 'Algeria', 'Africa', 'UTC+01:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (4, 'Andorra', 'Europe', 'UTC+01:00 (DST +02:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (5, 'Angola', 'Africa', 'UTC+01:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (6, 'Antigua and Barbuda', 'North America (Caribbean)', 'UTC-04:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (7, 'Argentina', 'South America', 'UTC-03:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (8, 'Armenia', 'Asia', 'UTC+04:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (9, 'Australia', 'Oceania', 'Multiple: UTC+08:00 to UTC+11:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (10, 'Austria', 'Europe', 'UTC+01:00 (DST +02:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (11, 'Azerbaijan', 'Asia', 'UTC+04:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (12, 'Bahamas', 'North America (Caribbean)', 'UTC-05:00 (DST -04:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (13, 'Bahrain', 'Asia (Middle East)', 'UTC+03:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (14, 'Bangladesh', 'Asia', 'UTC+06:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (15, 'Barbados', 'North America (Caribbean)', 'UTC-04:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (16, 'Belarus', 'Europe', 'UTC+03:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (17, 'Belgium', 'Europe', 'UTC+01:00 (DST +02:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (18, 'Belize', 'North America', 'UTC-06:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (19, 'Benin', 'Africa', 'UTC+01:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (20, 'Bhutan', 'Asia', 'UTC+06:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (21, 'Bolivia', 'South America', 'UTC-04:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (22, 'Bosnia and Herzegovina', 'Europe', 'UTC+01:00 (DST +02:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (23, 'Botswana', 'Africa', 'UTC+02:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (24, 'Brazil', 'South America', 'Multiple: UTC-05:00 to UTC-02:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (25, 'Brunei', 'Asia', 'UTC+08:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (26, 'Bulgaria', 'Europe', 'UTC+02:00 (DST +03:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (27, 'Burkina Faso', 'Africa', 'UTC+00:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (28, 'Burundi', 'Africa', 'UTC+02:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (29, 'Cambodia', 'Asia', 'UTC+07:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (30, 'Cameroon', 'Africa', 'UTC+01:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (31, 'Canada', 'North America', 'Multiple: UTC-08:00 to UTC-03:30', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (32, 'Chile', 'South America', 'UTC-06:00 to UTC-04:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (33, 'China', 'Asia', 'UTC+08:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (34, 'Colombia', 'South America', 'UTC-05:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (35, 'Costa Rica', 'North America', 'UTC-06:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (36, 'Croatia', 'Europe', 'UTC+01:00 (DST +02:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (37, 'Cuba', 'North America (Caribbean)', 'UTC-05:00 (DST -04:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (38, 'Cyprus', 'Europe', 'UTC+02:00 (DST +03:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (39, 'Czechia', 'Europe', 'UTC+01:00 (DST +02:00)', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (40, 'Democratic Republic of the Congo', 'Africa', 'UTC+01:00, UTC+02:00', '2026-07-09 12:56:19.266202+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (41, 'Aruba', 'Americas', 'America/Aruba', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (42, 'Anguilla', 'Americas', 'America/Anguilla', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (43, 'Åland Islands', '', 'Europe/Mariehamn', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (44, 'United Arab Emirates', 'Asia', 'Asia/Dubai', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (45, 'American Samoa', 'Oceania', 'Pacific/Pago_Pago', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (46, 'Antarctica', '', 'Antarctica/McMurdo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (47, 'French Southern Territories', '', 'Indian/Kerguelen', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (48, 'Bonaire, Sint Eustatius and Saba', '', 'America/Kralendijk', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (49, 'Saint Barthélemy', '', 'America/St_Barthelemy', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (50, 'Bermuda', 'Americas', 'Atlantic/Bermuda', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (51, 'Bolivia, Plurinational State of', '', 'America/La_Paz', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (52, 'Brunei Darussalam', '', 'Asia/Brunei', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (53, 'Bouvet Island', '', '', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (54, 'Central African Republic', 'Africa', 'Africa/Bangui', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (55, 'Cocos (Keeling) Islands', 'Oceania', 'Indian/Cocos', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (56, 'Switzerland', 'Europe', 'Europe/Zurich', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (57, 'Côte d`Ivoire', '', 'Africa/Abidjan', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (58, 'Congo, The Democratic Republic of the', '', 'Africa/Kinshasa', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (59, 'Congo', '', 'Africa/Brazzaville', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (60, 'Cook Islands', 'Oceania', 'Pacific/Rarotonga', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (61, 'Comoros', 'Africa', 'Indian/Comoro', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (62, 'Cabo Verde', '', 'Atlantic/Cape_Verde', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (63, 'Curaçao', '', 'America/Curacao', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (64, 'Christmas Island', 'Oceania', 'Indian/Christmas', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (65, 'Cayman Islands', 'Americas', 'America/Cayman', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (66, 'Germany', 'Europe', 'Europe/Berlin', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (67, 'Djibouti', 'Africa', 'Africa/Djibouti', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (68, 'Dominica', 'Americas', 'America/Dominica', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (69, 'Denmark', 'Europe', 'Europe/Copenhagen', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (70, 'Dominican Republic', 'Americas', 'America/Santo_Domingo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (71, 'Ecuador', 'Americas', 'America/Guayaquil', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (72, 'Egypt', 'Africa', 'Africa/Cairo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (73, 'Eritrea', 'Africa', 'Africa/Asmara', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (74, 'Western Sahara', 'Africa', 'Africa/El_Aaiun', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (75, 'Spain', 'Europe', 'Europe/Madrid', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (76, 'Estonia', 'Europe', 'Europe/Tallinn', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (77, 'Ethiopia', 'Africa', 'Africa/Addis_Ababa', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (78, 'Finland', 'Europe', 'Europe/Helsinki', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (79, 'Fiji', 'Oceania', 'Pacific/Fiji', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (80, 'Falkland Islands (Malvinas)', '', 'Atlantic/Stanley', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (81, 'France', 'Europe', 'Europe/Paris', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (82, 'Faroe Islands', 'Europe', 'Atlantic/Faroe', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (83, 'Micronesia, Federated States of', '', 'Pacific/Chuuk', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (84, 'Gabon', 'Africa', 'Africa/Libreville', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (85, 'United Kingdom', 'Europe', 'Europe/London', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (86, 'Georgia', 'Asia', 'Asia/Tbilisi', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (87, 'Guernsey', 'Europe', 'Europe/Guernsey', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (88, 'Ghana', 'Africa', 'Africa/Accra', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (89, 'Gibraltar', 'Europe', 'Europe/Gibraltar', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (90, 'Guinea', 'Africa', 'Africa/Conakry', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (91, 'Guadeloupe', 'Americas', 'America/Guadeloupe', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (92, 'Gambia', '', 'Africa/Banjul', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (93, 'Guinea-Bissau', 'Africa', 'Africa/Bissau', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (94, 'Equatorial Guinea', 'Africa', 'Africa/Malabo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (95, 'Greece', 'Europe', 'Europe/Athens', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (96, 'Grenada', 'Americas', 'America/Grenada', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (97, 'Greenland', 'Americas', 'America/Nuuk', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (98, 'Guatemala', 'Americas', 'America/Guatemala', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (99, 'French Guiana', 'Americas', 'America/Cayenne', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (100, 'Guam', 'Oceania', 'Pacific/Guam', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (101, 'Guyana', 'Americas', 'America/Guyana', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (102, 'Hong Kong', 'Asia', 'Asia/Hong_Kong', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (103, 'Heard Island and McDonald Islands', '', '', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (104, 'Honduras', 'Americas', 'America/Tegucigalpa', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (105, 'Haiti', 'Americas', 'America/Port-au-Prince', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (106, 'Hungary', 'Europe', 'Europe/Budapest', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (107, 'Indonesia', 'Asia', 'Asia/Jakarta', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (108, 'Isle of Man', 'Europe', 'Europe/Isle_of_Man', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (109, 'India', 'Asia', 'Asia/Kolkata', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (110, 'British Indian Ocean Territory', 'Africa', 'Indian/Chagos', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (111, 'Ireland', 'Europe', 'Europe/Dublin', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (112, 'Iran, Islamic Republic of', '', 'Asia/Tehran', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (113, 'Iraq', 'Asia', 'Asia/Baghdad', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (114, 'Iceland', 'Europe', 'Atlantic/Reykjavik', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (115, 'Israel', 'Asia', 'Asia/Jerusalem', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (116, 'Italy', 'Europe', 'Europe/Rome', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (117, 'Jamaica', 'Americas', 'America/Jamaica', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (118, 'Jersey', 'Europe', 'Europe/Jersey', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (119, 'Jordan', 'Asia', 'Asia/Amman', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (120, 'Japan', 'Asia', 'Asia/Tokyo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (121, 'Kazakhstan', 'Asia', 'Asia/Almaty', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (122, 'Kenya', 'Africa', 'Africa/Nairobi', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (123, 'Kyrgyzstan', 'Asia', 'Asia/Bishkek', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (124, 'Kiribati', 'Oceania', 'Pacific/Tarawa', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (125, 'Saint Kitts and Nevis', 'Americas', 'America/St_Kitts', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (126, 'Korea, Republic of', '', 'Asia/Seoul', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (127, 'Kuwait', 'Asia', 'Asia/Kuwait', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (128, 'Lao People`s Democratic Republic', 'Asia', 'Asia/Vientiane', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (129, 'Lebanon', 'Asia', 'Asia/Beirut', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (130, 'Liberia', 'Africa', 'Africa/Monrovia', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (131, 'Libya', 'Africa', 'Africa/Tripoli', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (132, 'Saint Lucia', 'Americas', 'America/St_Lucia', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (133, 'Liechtenstein', 'Europe', 'Europe/Vaduz', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (134, 'Sri Lanka', 'Asia', 'Asia/Colombo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (135, 'Lesotho', 'Africa', 'Africa/Maseru', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (136, 'Lithuania', 'Europe', 'Europe/Vilnius', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (137, 'Luxembourg', 'Europe', 'Europe/Luxembourg', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (138, 'Latvia', 'Europe', 'Europe/Riga', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (139, 'Macao', '', 'Asia/Macau', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (140, 'Saint Martin (French part)', '', 'America/Marigot', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (141, 'Morocco', 'Africa', 'Africa/Casablanca', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (142, 'Monaco', 'Europe', 'Europe/Monaco', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (143, 'Moldova, Republic of', '', 'Europe/Chisinau', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (144, 'Madagascar', 'Africa', 'Indian/Antananarivo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (145, 'Maldives', 'Asia', 'Indian/Maldives', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (146, 'Mexico', 'Americas', 'America/Mexico_City', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (147, 'Marshall Islands', 'Oceania', 'Pacific/Majuro', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (148, 'North Macedonia', '', 'Europe/Skopje', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (149, 'Mali', 'Africa', 'Africa/Bamako', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (150, 'Malta', 'Europe', 'Europe/Malta', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (151, 'Myanmar', '', 'Asia/Yangon', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (152, 'Montenegro', '', 'Europe/Podgorica', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (153, 'Mongolia', 'Asia', 'Asia/Ulaanbaatar', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (154, 'Northern Mariana Islands', 'Oceania', 'Pacific/Saipan', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (155, 'Mozambique', 'Africa', 'Africa/Maputo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (156, 'Mauritania', 'Africa', 'Africa/Nouakchott', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (157, 'Montserrat', 'Americas', 'America/Montserrat', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (158, 'Martinique', 'Americas', 'America/Martinique', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (159, 'Mauritius', 'Africa', 'Indian/Mauritius', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (160, 'Malawi', 'Africa', 'Africa/Blantyre', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (161, 'Malaysia', 'Asia', 'Asia/Kuala_Lumpur', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (162, 'Mayotte', 'Africa', 'Indian/Mayotte', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (163, 'Namibia', 'Africa', 'Africa/Windhoek', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (164, 'New Caledonia', 'Oceania', 'Pacific/Noumea', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (165, 'Niger', 'Africa', 'Africa/Niamey', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (166, 'Norfolk Island', 'Oceania', 'Pacific/Norfolk', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (167, 'Nigeria', 'Africa', 'Africa/Lagos', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (168, 'Nicaragua', 'Americas', 'America/Managua', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (169, 'Niue', 'Oceania', 'Pacific/Niue', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (170, 'Netherlands', 'Europe', 'Europe/Amsterdam', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (171, 'Norway', 'Europe', 'Europe/Oslo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (172, 'Nepal', 'Asia', 'Asia/Kathmandu', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (173, 'Nauru', 'Oceania', 'Pacific/Nauru', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (174, 'New Zealand', 'Oceania', 'Pacific/Auckland', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (175, 'Oman', 'Asia', 'Asia/Muscat', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (176, 'Pakistan', 'Asia', 'Asia/Karachi', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (177, 'Panama', 'Americas', 'America/Panama', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (178, 'Pitcairn', '', 'Pacific/Pitcairn', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (179, 'Peru', 'Americas', 'America/Lima', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (180, 'Philippines', 'Asia', 'Asia/Manila', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (181, 'Palau', 'Oceania', 'Pacific/Palau', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (182, 'Papua New Guinea', 'Oceania', 'Pacific/Port_Moresby', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (183, 'Poland', 'Europe', 'Europe/Warsaw', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (184, 'Puerto Rico', 'Americas', 'America/Puerto_Rico', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (185, 'Korea, Democratic People`s Republic of', '', 'Asia/Pyongyang', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (186, 'Portugal', 'Europe', 'Europe/Lisbon', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (187, 'Paraguay', 'Americas', 'America/Asuncion', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (188, 'Palestine, State of', '', 'Asia/Gaza', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (189, 'French Polynesia', 'Oceania', 'Pacific/Tahiti', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (190, 'Qatar', 'Asia', 'Asia/Qatar', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (191, 'Réunion', 'Africa', 'Indian/Reunion', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (192, 'Romania', 'Europe', 'Europe/Bucharest', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (193, 'Russian Federation', 'Europe', 'Europe/Kaliningrad', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (194, 'Rwanda', 'Africa', 'Africa/Kigali', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (195, 'Saudi Arabia', 'Asia', 'Asia/Riyadh', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (196, 'Sudan', 'Africa', 'Africa/Khartoum', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (197, 'Senegal', 'Africa', 'Africa/Dakar', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (198, 'Singapore', 'Asia', 'Asia/Singapore', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (199, 'South Georgia and the South Sandwich Islands', 'Americas', 'Atlantic/South_Georgia', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (200, 'Saint Helena, Ascension and Tristan da Cunha', '', 'Atlantic/St_Helena', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (201, 'Svalbard and Jan Mayen', 'Europe', 'Arctic/Longyearbyen', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (202, 'Solomon Islands', 'Oceania', 'Pacific/Guadalcanal', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (203, 'Sierra Leone', 'Africa', 'Africa/Freetown', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (204, 'El Salvador', 'Americas', 'America/El_Salvador', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (205, 'San Marino', 'Europe', 'Europe/San_Marino', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (206, 'Somalia', 'Africa', 'Africa/Mogadishu', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (207, 'Saint Pierre and Miquelon', 'Americas', 'America/Miquelon', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (208, 'Serbia', 'Europe', 'Europe/Belgrade', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (209, 'South Sudan', 'Africa', 'Africa/Juba', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (210, 'Sao Tome and Principe', '', 'Africa/Sao_Tome', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (211, 'Suriname', 'Americas', 'America/Paramaribo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (212, 'Slovakia', 'Europe', 'Europe/Bratislava', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (213, 'Slovenia', 'Europe', 'Europe/Ljubljana', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (214, 'Sweden', 'Europe', 'Europe/Stockholm', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (215, 'Eswatini', '', 'Africa/Mbabane', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (216, 'Sint Maarten (Dutch part)', '', 'America/Lower_Princes', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (217, 'Seychelles', 'Africa', 'Indian/Mahe', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (218, 'Syrian Arab Republic', 'Asia', 'Asia/Damascus', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (219, 'Turks and Caicos Islands', '', 'America/Grand_Turk', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (220, 'Chad', 'Africa', 'Africa/Ndjamena', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (221, 'Togo', 'Africa', 'Africa/Lome', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (222, 'Thailand', 'Asia', 'Asia/Bangkok', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (223, 'Tajikistan', 'Asia', 'Asia/Dushanbe', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (224, 'Tokelau', 'Oceania', 'Pacific/Fakaofo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (225, 'Turkmenistan', 'Asia', 'Asia/Ashgabat', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (226, 'Timor-Leste', '', 'Asia/Dili', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (227, 'Tonga', 'Oceania', 'Pacific/Tongatapu', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (228, 'Trinidad and Tobago', 'Americas', 'America/Port_of_Spain', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (229, 'Tunisia', 'Africa', 'Africa/Tunis', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (230, 'Türkiye', '', 'Europe/Istanbul', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (231, 'Tuvalu', 'Oceania', 'Pacific/Funafuti', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (232, 'Taiwan, Province of China', '', 'Asia/Taipei', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (233, 'Tanzania, United Republic of', '', 'Africa/Dar_es_Salaam', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (234, 'Uganda', 'Africa', 'Africa/Kampala', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (235, 'Ukraine', 'Europe', 'Europe/Simferopol', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (236, 'United States Minor Outlying Islands', '', 'Pacific/Midway', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (237, 'Uruguay', 'Americas', 'America/Montevideo', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (238, 'United States', 'Americas', 'America/New_York', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (239, 'Uzbekistan', 'Asia', 'Asia/Samarkand', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (240, 'Holy See (Vatican City State)', '', 'Europe/Vatican', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (241, 'Saint Vincent and the Grenadines', 'Americas', 'America/St_Vincent', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (242, 'Venezuela, Bolivarian Republic of', '', 'America/Caracas', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (243, 'Virgin Islands, British', '', 'America/Tortola', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (244, 'Virgin Islands, U.S.', '', 'America/St_Thomas', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (245, 'Viet Nam', '', 'Asia/Ho_Chi_Minh', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (246, 'Vanuatu', 'Oceania', 'Pacific/Efate', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (247, 'Wallis and Futuna', 'Oceania', 'Pacific/Wallis', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (248, 'Samoa', 'Oceania', 'Pacific/Apia', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (249, 'Yemen', 'Asia', 'Asia/Aden', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (250, 'South Africa', 'Africa', 'Africa/Johannesburg', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (251, 'Zambia', 'Africa', 'Africa/Lusaka', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;
INSERT INTO public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) VALUES (252, 'Zimbabwe', 'Africa', 'Africa/Harare', '2026-07-09 13:01:42.844232+05:30') ON CONFLICT DO NOTHING;


--
-- TOC entry 5330 (class 0 OID 24837)
-- Dependencies: 247
-- Data for Name: coupons; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5334 (class 0 OID 24879)
-- Dependencies: 251
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5342 (class 0 OID 24982)
-- Dependencies: 259
-- Data for Name: order_status_history; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5332 (class 0 OID 24850)
-- Dependencies: 249
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5336 (class 0 OID 24905)
-- Dependencies: 253
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5343 (class 0 OID 25057)
-- Dependencies: 260
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5320 (class 0 OID 24737)
-- Dependencies: 237
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_images (image_id, product_id, image_url, is_primary) VALUES (2, 10001, 'uploads\products\071170ad-7675-4435-af38-e23527da872c_Surya_Namaskar.jpg', false) ON CONFLICT DO NOTHING;


--
-- TOC entry 5324 (class 0 OID 24769)
-- Dependencies: 241
-- Data for Name: product_inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_inventory (inventory_id, product_id, warehouse_id, quantity_available, reorder_level, quantiry_available) VALUES (1, 10001, 1, 34, 20, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.product_inventory (inventory_id, product_id, warehouse_id, quantity_available, reorder_level, quantiry_available) VALUES (2, 10002, 1, 788, 70, NULL) ON CONFLICT DO NOTHING;


--
-- TOC entry 5318 (class 0 OID 24708)
-- Dependencies: 235
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (product_id, product_name, description, sku, brand_id, category_id, price, discount_price, weight, is_active, created_at, updated_at, brand_brand_id, category_category_id) VALUES (10001, 'Product name', 'Dummy Description', 'SKU2343', 1, 1, 33.67, 1.25, 0.08, true, '2026-07-25 19:02:11.003932', NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.products (product_id, product_name, description, sku, brand_id, category_id, price, discount_price, weight, is_active, created_at, updated_at, brand_brand_id, category_category_id) VALUES (10002, 'Samsung L55', 'Samsung L55 Description', 'SAM2343', 1, 1, 338762.67, 1453.25, 0.15, true, '2026-07-28 21:30:11.273104', NULL, NULL, NULL) ON CONFLICT DO NOTHING;


--
-- TOC entry 5338 (class 0 OID 24933)
-- Dependencies: 255
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5309 (class 0 OID 24631)
-- Dependencies: 226
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles (role_id, role_name, description) VALUES (2, 'ADMIN', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.roles (role_id, role_name, description) VALUES (3, 'MANAGER', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.roles (role_id, role_name, description) VALUES (4, 'USER', NULL) ON CONFLICT DO NOTHING;


--
-- TOC entry 5326 (class 0 OID 24795)
-- Dependencies: 243
-- Data for Name: shopping_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5344 (class 0 OID 25064)
-- Dependencies: 261
-- Data for Name: user_details; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5312 (class 0 OID 24664)
-- Dependencies: 229
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_roles (user_id, role_id) VALUES (10056, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10057, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10058, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10059, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10059, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10060, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10060, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10060, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10061, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10061, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10061, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10062, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10062, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.user_roles (user_id, role_id) VALUES (10062, 2) ON CONFLICT DO NOTHING;


--
-- TOC entry 5311 (class 0 OID 24642)
-- Dependencies: 228
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10004, 'Sudeep', 'Mukherji', 'sudeep.mukherji@gmail.com', '9434545667', 1, true, '2026-07-11 06:36:06.153933', '2026-07-11 06:36:06.191363', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10003, 'Sandeep', 'Mukherji', 'mrs.prarthana@gmail.com', '9971515337', 1, true, '2026-07-10 20:16:53.253464', '2026-07-10 20:16:53.254555', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10006, 'Sujoy', 'Mukherji', 'sujoy.mukherji@gmail.com', '9818470335', 1, true, '2026-07-11 18:51:24.677874', '2026-07-11 18:51:24.680422', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10007, 'Shlok', 'Mukherji', 'shlok.mukherji@gmail.com', '9987878665', 1, true, '2026-07-12 21:41:32.382903', '2026-07-12 21:41:32.396443', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10005, 'Prarthana', 'Mukherji', 'prarthana.mukherji@gmail.com', '9818470335', 1, true, '2026-07-11 18:43:10.915522', '2026-07-11 18:43:10.925898', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10009, 'Ram', 'Mukherji', 'ram.mukherji@gmail.com', '8897676554', 1, true, '2026-07-20 13:13:36.929596', '2026-07-20 13:13:36.930635', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10010, 'Sriradhekrishna', 'Govinda', 'radhe.krishnagovinda@gmail.com', '98987676765', 1, true, '2026-07-20 13:17:36.737487', '2026-07-20 13:17:36.739101', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10008, 'Tithi', 'Mukherji', 'tithi.mukherji@gmail.com', '8897676554', 2, true, '2026-07-20 12:55:10.146382', '2026-07-20 12:55:10.154742', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10011, 'Kaishreeram', 'Govinda', 'jaishreeram.krishnagovinda@gmail.com', '6748576846', 4, true, '2026-07-20 16:30:56.441336', '2026-07-20 16:30:56.455381', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10012, 'Sandeep', 'Mukherji', 'sandeep.mukherji@cognizant.com', '9971515337', 5, true, '2026-07-20 17:03:09.788435', '2026-07-20 17:03:09.8205', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10013, 'Prartnama', 'Mukherji', 'prarthana.mukherji@cognizant.com', '9818470335', 6, true, '2026-07-20 18:44:50.667192', '2026-07-20 18:44:50.694681', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10015, 'Prartnana', 'Mukherji', 'prarthana2.mukherji@cognizant.com', '9818470335', 8, true, '2026-07-20 21:50:52.193802', '2026-07-20 21:50:52.198323', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10016, 'Mausami', 'Patnayak', 'mausami.p@cognizant.com', '9987878665', 9, true, '2026-07-25 13:41:48.039901', '2026-07-25 13:41:48.123104', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10054, 'Mausamijee', 'Patnayak', 'mausami2.p@cognizant.com', '9987878665', 49, true, '2026-07-27 20:32:30.904566', '2026-07-27 20:32:30.905974', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10055, 'Shayam', 'Patnayak', 'shyam.p@cognizant.com', '9987878665', 50, true, '2026-07-27 20:40:46.074165', '2026-07-27 20:40:46.076427', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10056, 'Sandeep', 'Mukherji', 'mukherji.sandeep@cognizant.com', '9971515337', 51, true, '2026-07-28 19:47:28.282207', '2026-07-28 19:47:28.348096', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10057, 'Prarthana', 'Mukherji', 'mukherji.prsrthsns@cognizant.com', '9971515337', 52, true, '2026-07-28 19:51:15.735769', '2026-07-28 19:51:15.738051', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10058, 'Sujoy', 'Mukherji', 'mukherji.sujoy@cognizant.com', '9971515337', 53, true, '2026-07-28 21:25:29.217483', '2026-07-28 21:25:29.263125', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10059, 'Sanjoy', 'Mukherji', 'mukherji.sanjoy@cognizant.com', '9971515337', 54, true, '2026-07-28 21:26:29.714058', '2026-07-28 21:26:29.71573', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10060, 'Chandra', 'Mukherji', 'mukherji.chandra@cognizant.com', '9971515337', 55, true, '2026-07-28 21:38:02.870784', '2026-07-28 21:38:02.873077', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10061, 'Prarthana', 'Mukherji', 'mukherji.prarthana@cognizant.com', '9971515337', 56, true, '2026-07-28 21:43:28.684294', '2026-07-28 21:43:28.685777', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;
INSERT INTO public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at, secret_key) VALUES (10062, 'Sandeep', 'Mukherji', 'sandeep.talk@gmail.com', '9971515337', 57, true, '2026-07-29 17:52:21.929754', '2026-07-29 17:52:21.978177', '77cea53ca2e359e464fa1a615f01f939') ON CONFLICT DO NOTHING;


--
-- TOC entry 5322 (class 0 OID 24755)
-- Dependencies: 239
-- Data for Name: warehouses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.warehouses (warehouse_id, warehouse_name, address_id) VALUES (1, 'Cosmopoliton', 3) ON CONFLICT DO NOTHING;


--
-- TOC entry 5340 (class 0 OID 24959)
-- Dependencies: 257
-- Data for Name: wishlist; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5383 (class 0 OID 0)
-- Dependencies: 267
-- Name: address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_address_id_seq', 1, false);


--
-- TOC entry 5384 (class 0 OID 0)
-- Dependencies: 264
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_id_seq', 1, false);


--
-- TOC entry 5385 (class 0 OID 0)
-- Dependencies: 223
-- Name: addresses_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_address_id_seq', 57, true);


--
-- TOC entry 5386 (class 0 OID 0)
-- Dependencies: 270
-- Name: brand_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brand_seq', 6, true);


--
-- TOC entry 5387 (class 0 OID 0)
-- Dependencies: 230
-- Name: brands_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_brand_id_seq', 1, true);


--
-- TOC entry 5388 (class 0 OID 0)
-- Dependencies: 244
-- Name: cart_items_cart_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_items_cart_item_id_seq', 1, false);


--
-- TOC entry 5389 (class 0 OID 0)
-- Dependencies: 232
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 1, false);


--
-- TOC entry 5390 (class 0 OID 0)
-- Dependencies: 271
-- Name: categoty_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoty_seq', 3, true);


--
-- TOC entry 5391 (class 0 OID 0)
-- Dependencies: 221
-- Name: cities_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_city_id_seq', 644, true);


--
-- TOC entry 5392 (class 0 OID 0)
-- Dependencies: 219
-- Name: countries_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_country_id_seq', 252, true);


--
-- TOC entry 5393 (class 0 OID 0)
-- Dependencies: 246
-- Name: coupons_coupon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coupons_coupon_id_seq', 1, false);


--
-- TOC entry 5394 (class 0 OID 0)
-- Dependencies: 250
-- Name: order_items_order_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_order_item_id_seq', 1, false);


--
-- TOC entry 5395 (class 0 OID 0)
-- Dependencies: 258
-- Name: order_status_history_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_status_history_history_id_seq', 1, false);


--
-- TOC entry 5396 (class 0 OID 0)
-- Dependencies: 248
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);


--
-- TOC entry 5397 (class 0 OID 0)
-- Dependencies: 252
-- Name: payments_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_payment_id_seq', 1, false);


--
-- TOC entry 5398 (class 0 OID 0)
-- Dependencies: 262
-- Name: post_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_seq', 10004, false);


--
-- TOC entry 5399 (class 0 OID 0)
-- Dependencies: 272
-- Name: product_image_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_image_seq', 2, true);


--
-- TOC entry 5400 (class 0 OID 0)
-- Dependencies: 236
-- Name: product_images_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_images_image_id_seq', 1, false);


--
-- TOC entry 5401 (class 0 OID 0)
-- Dependencies: 240
-- Name: product_inventory_inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_inventory_inventory_id_seq', 1, false);


--
-- TOC entry 5402 (class 0 OID 0)
-- Dependencies: 274
-- Name: product_inventory_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_inventory_seq', 2, true);


--
-- TOC entry 5403 (class 0 OID 0)
-- Dependencies: 234
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 1, false);


--
-- TOC entry 5404 (class 0 OID 0)
-- Dependencies: 269
-- Name: products_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_seq', 10002, true);


--
-- TOC entry 5405 (class 0 OID 0)
-- Dependencies: 254
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 1, false);


--
-- TOC entry 5406 (class 0 OID 0)
-- Dependencies: 273
-- Name: role_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_seq', 1, false);


--
-- TOC entry 5407 (class 0 OID 0)
-- Dependencies: 225
-- Name: roles_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_role_id_seq', 4, true);


--
-- TOC entry 5408 (class 0 OID 0)
-- Dependencies: 242
-- Name: shopping_cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shopping_cart_cart_id_seq', 1, false);


--
-- TOC entry 5409 (class 0 OID 0)
-- Dependencies: 263
-- Name: user_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_seq', 10062, true);


--
-- TOC entry 5410 (class 0 OID 0)
-- Dependencies: 227
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);


--
-- TOC entry 5411 (class 0 OID 0)
-- Dependencies: 275
-- Name: warehouse_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.warehouse_seq', 1, true);


--
-- TOC entry 5412 (class 0 OID 0)
-- Dependencies: 238
-- Name: warehouses_warehouse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.warehouses_warehouse_id_seq', 1, false);


--
-- TOC entry 5413 (class 0 OID 0)
-- Dependencies: 256
-- Name: wishlist_wishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wishlist_wishlist_id_seq', 1, false);


-- Completed on 2026-08-01 12:45:29

--
-- PostgreSQL database dump complete
--

\unrestrict xApDLKuRBoTgq9HRg1gRHwSSt0lB1HlYY16VjiBb4yM4BCdXuiEeboVqe79MhM1

