--
-- PostgreSQL database dump
--

\restrict G10271RyiBeHBId2JOXU5aTH2dXpMHRGlG5NcGhGHnB5mhYzMidZ8yL9KEHjJ9T

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-07-10 22:00:24

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
-- TOC entry 224 (class 1259 OID 24613)
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    address_id bigint NOT NULL,
    address_line1 character varying(255) NOT NULL,
    address_line2 character varying(255),
    city_id bigint NOT NULL,
    state character varying(100),
    postal_code character varying(20),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24612)
-- Name: addresses_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.addresses_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.addresses_address_id_seq OWNER TO postgres;

--
-- TOC entry 5318 (class 0 OID 0)
-- Dependencies: 223
-- Name: addresses_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.addresses_address_id_seq OWNED BY public.addresses.address_id;


--
-- TOC entry 231 (class 1259 OID 24682)
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    brand_id bigint NOT NULL,
    brand_name character varying(150) NOT NULL,
    description text
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 24681)
-- Name: brands_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brands_brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.brands_brand_id_seq OWNER TO postgres;

--
-- TOC entry 5319 (class 0 OID 0)
-- Dependencies: 230
-- Name: brands_brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brands_brand_id_seq OWNED BY public.brands.brand_id;


--
-- TOC entry 245 (class 1259 OID 24813)
-- Name: cart_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_items (
    cart_item_id bigint NOT NULL,
    cart_id bigint NOT NULL,
    product_id bigint NOT NULL,
    quantity integer NOT NULL,
    CONSTRAINT cart_items_quantity_check CHECK ((quantity > 0))
);


ALTER TABLE public.cart_items OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 24812)
-- Name: cart_items_cart_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_items_cart_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cart_items_cart_item_id_seq OWNER TO postgres;

--
-- TOC entry 5320 (class 0 OID 0)
-- Dependencies: 244
-- Name: cart_items_cart_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_items_cart_item_id_seq OWNED BY public.cart_items.cart_item_id;


--
-- TOC entry 233 (class 1259 OID 24695)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    category_id bigint NOT NULL,
    category_name character varying(150) NOT NULL,
    description text
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 24694)
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_category_id_seq OWNER TO postgres;

--
-- TOC entry 5321 (class 0 OID 0)
-- Dependencies: 232
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;


--
-- TOC entry 222 (class 1259 OID 24595)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    city_id bigint NOT NULL,
    country_id bigint NOT NULL,
    city_name character varying(100) NOT NULL,
    state_province character varying(50)
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24594)
-- Name: cities_city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cities_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cities_city_id_seq OWNER TO postgres;

--
-- TOC entry 5322 (class 0 OID 0)
-- Dependencies: 221
-- Name: cities_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cities_city_id_seq OWNED BY public.cities.city_id;


--
-- TOC entry 220 (class 1259 OID 24583)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    country_id bigint NOT NULL,
    country_name character varying(100) NOT NULL,
    country_region_continent character varying(50) NOT NULL,
    country_primary_tz character varying(50) NOT NULL,
    created_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24582)
-- Name: countries_country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.countries_country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.countries_country_id_seq OWNER TO postgres;

--
-- TOC entry 5323 (class 0 OID 0)
-- Dependencies: 219
-- Name: countries_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.countries_country_id_seq OWNED BY public.countries.country_id;


--
-- TOC entry 247 (class 1259 OID 24837)
-- Name: coupons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coupons (
    coupon_id bigint NOT NULL,
    coupon_code character varying(50) NOT NULL,
    discount_percent numeric(5,2),
    valid_from timestamp without time zone,
    valid_to timestamp without time zone,
    is_active boolean DEFAULT true,
    CONSTRAINT coupons_discount_percent_check CHECK (((discount_percent >= (0)::numeric) AND (discount_percent <= (100)::numeric)))
);


ALTER TABLE public.coupons OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 24836)
-- Name: coupons_coupon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coupons_coupon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.coupons_coupon_id_seq OWNER TO postgres;

--
-- TOC entry 5324 (class 0 OID 0)
-- Dependencies: 246
-- Name: coupons_coupon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coupons_coupon_id_seq OWNED BY public.coupons.coupon_id;


--
-- TOC entry 251 (class 1259 OID 24879)
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    order_item_id bigint NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(10,2) NOT NULL,
    subtotal numeric(12,2) NOT NULL,
    CONSTRAINT order_items_quantity_check CHECK ((quantity > 0)),
    CONSTRAINT order_items_subtotal_check CHECK ((subtotal >= (0)::numeric)),
    CONSTRAINT order_items_unit_price_check CHECK ((unit_price >= (0)::numeric))
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 24878)
-- Name: order_items_order_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_items_order_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_items_order_item_id_seq OWNER TO postgres;

--
-- TOC entry 5325 (class 0 OID 0)
-- Dependencies: 250
-- Name: order_items_order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_items_order_item_id_seq OWNED BY public.order_items.order_item_id;


--
-- TOC entry 259 (class 1259 OID 24982)
-- Name: order_status_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_status_history (
    history_id bigint NOT NULL,
    order_id bigint NOT NULL,
    status character varying(30) NOT NULL,
    changed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    remarks text
);


ALTER TABLE public.order_status_history OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 24981)
-- Name: order_status_history_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_status_history_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_status_history_history_id_seq OWNER TO postgres;

--
-- TOC entry 5326 (class 0 OID 0)
-- Dependencies: 258
-- Name: order_status_history_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_status_history_history_id_seq OWNED BY public.order_status_history.history_id;


--
-- TOC entry 249 (class 1259 OID 24850)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id bigint NOT NULL,
    user_id bigint NOT NULL,
    shipping_address_id bigint,
    coupon_id bigint,
    order_status character varying(30) NOT NULL,
    payment_status character varying(30) NOT NULL,
    total_amount numeric(12,2) NOT NULL,
    order_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT orders_total_amount_check CHECK ((total_amount >= (0)::numeric))
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 24849)
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_order_id_seq OWNER TO postgres;

--
-- TOC entry 5327 (class 0 OID 0)
-- Dependencies: 248
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- TOC entry 253 (class 1259 OID 24905)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    payment_id bigint NOT NULL,
    order_id bigint NOT NULL,
    user_id bigint NOT NULL,
    payment_method character varying(50) NOT NULL,
    transaction_id character varying(100),
    amount numeric(12,2) NOT NULL,
    payment_status character varying(30) NOT NULL,
    payment_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 24904)
-- Name: payments_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_payment_id_seq OWNER TO postgres;

--
-- TOC entry 5328 (class 0 OID 0)
-- Dependencies: 252
-- Name: payments_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_payment_id_seq OWNED BY public.payments.payment_id;


--
-- TOC entry 260 (class 1259 OID 25057)
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    id bigint NOT NULL,
    description character varying(255) NOT NULL,
    user_id bigint,
    user_user_id bigint
);


ALTER TABLE public.post OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 25072)
-- Name: post_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_seq
    START WITH 10004
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.post_seq OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 24737)
-- Name: product_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_images (
    image_id bigint NOT NULL,
    product_id bigint NOT NULL,
    image_url text NOT NULL,
    is_primary boolean DEFAULT false
);


ALTER TABLE public.product_images OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 24736)
-- Name: product_images_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_images_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_images_image_id_seq OWNER TO postgres;

--
-- TOC entry 5329 (class 0 OID 0)
-- Dependencies: 236
-- Name: product_images_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_images_image_id_seq OWNED BY public.product_images.image_id;


--
-- TOC entry 241 (class 1259 OID 24769)
-- Name: product_inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_inventory (
    inventory_id bigint NOT NULL,
    product_id bigint NOT NULL,
    warehouse_id bigint NOT NULL,
    quantity_available integer DEFAULT 0 NOT NULL,
    reorder_level integer DEFAULT 10,
    CONSTRAINT product_inventory_quantity_available_check CHECK ((quantity_available >= 0))
);


ALTER TABLE public.product_inventory OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 24768)
-- Name: product_inventory_inventory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_inventory_inventory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_inventory_inventory_id_seq OWNER TO postgres;

--
-- TOC entry 5330 (class 0 OID 0)
-- Dependencies: 240
-- Name: product_inventory_inventory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_inventory_inventory_id_seq OWNED BY public.product_inventory.inventory_id;


--
-- TOC entry 235 (class 1259 OID 24708)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id bigint NOT NULL,
    product_name character varying(200) NOT NULL,
    description text,
    sku character varying(50) NOT NULL,
    brand_id bigint,
    category_id bigint,
    price numeric(10,2) NOT NULL,
    discount_price numeric(10,2),
    weight numeric(8,2),
    is_active boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT products_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 24707)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 5331 (class 0 OID 0)
-- Dependencies: 234
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- TOC entry 255 (class 1259 OID 24933)
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    review_id bigint NOT NULL,
    product_id bigint NOT NULL,
    user_id bigint NOT NULL,
    rating integer,
    review_text text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT reviews_rating_check CHECK (((rating >= 1) AND (rating <= 5)))
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 24932)
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_review_id_seq OWNER TO postgres;

--
-- TOC entry 5332 (class 0 OID 0)
-- Dependencies: 254
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_review_id_seq OWNED BY public.reviews.review_id;


--
-- TOC entry 226 (class 1259 OID 24631)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    role_id bigint NOT NULL,
    role_name character varying(50) NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24630)
-- Name: roles_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_role_id_seq OWNER TO postgres;

--
-- TOC entry 5333 (class 0 OID 0)
-- Dependencies: 225
-- Name: roles_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_role_id_seq OWNED BY public.roles.role_id;


--
-- TOC entry 243 (class 1259 OID 24795)
-- Name: shopping_cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopping_cart (
    cart_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.shopping_cart OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 24794)
-- Name: shopping_cart_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shopping_cart_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shopping_cart_cart_id_seq OWNER TO postgres;

--
-- TOC entry 5334 (class 0 OID 0)
-- Dependencies: 242
-- Name: shopping_cart_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shopping_cart_cart_id_seq OWNED BY public.shopping_cart.cart_id;


--
-- TOC entry 261 (class 1259 OID 25064)
-- Name: user_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_details (
    id bigint NOT NULL,
    email character varying(255),
    name character varying(255),
    password character varying(255),
    registration_date_time timestamp(6) without time zone
);


ALTER TABLE public.user_details OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 24664)
-- Name: user_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.user_roles OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 25073)
-- Name: user_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_seq
    START WITH 10000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_seq OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 24642)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id bigint NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255),
    email character varying(255) NOT NULL,
    phone character varying(255),
    address_id bigint,
    is_active boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 24641)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 5335 (class 0 OID 0)
-- Dependencies: 227
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 239 (class 1259 OID 24755)
-- Name: warehouses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.warehouses (
    warehouse_id bigint NOT NULL,
    warehouse_name character varying(100) NOT NULL,
    address_id bigint
);


ALTER TABLE public.warehouses OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 24754)
-- Name: warehouses_warehouse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.warehouses_warehouse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.warehouses_warehouse_id_seq OWNER TO postgres;

--
-- TOC entry 5336 (class 0 OID 0)
-- Dependencies: 238
-- Name: warehouses_warehouse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.warehouses_warehouse_id_seq OWNED BY public.warehouses.warehouse_id;


--
-- TOC entry 257 (class 1259 OID 24959)
-- Name: wishlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wishlist (
    wishlist_id bigint NOT NULL,
    user_id bigint NOT NULL,
    product_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.wishlist OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 24958)
-- Name: wishlist_wishlist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wishlist_wishlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.wishlist_wishlist_id_seq OWNER TO postgres;

--
-- TOC entry 5337 (class 0 OID 0)
-- Dependencies: 256
-- Name: wishlist_wishlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wishlist_wishlist_id_seq OWNED BY public.wishlist.wishlist_id;


--
-- TOC entry 4968 (class 2604 OID 24616)
-- Name: addresses address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses ALTER COLUMN address_id SET DEFAULT nextval('public.addresses_address_id_seq'::regclass);


--
-- TOC entry 4975 (class 2604 OID 24685)
-- Name: brands brand_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands ALTER COLUMN brand_id SET DEFAULT nextval('public.brands_brand_id_seq'::regclass);


--
-- TOC entry 4990 (class 2604 OID 24816)
-- Name: cart_items cart_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items ALTER COLUMN cart_item_id SET DEFAULT nextval('public.cart_items_cart_item_id_seq'::regclass);


--
-- TOC entry 4976 (class 2604 OID 24698)
-- Name: categories category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- TOC entry 4967 (class 2604 OID 24598)
-- Name: cities city_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities ALTER COLUMN city_id SET DEFAULT nextval('public.cities_city_id_seq'::regclass);


--
-- TOC entry 4965 (class 2604 OID 24586)
-- Name: countries country_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries ALTER COLUMN country_id SET DEFAULT nextval('public.countries_country_id_seq'::regclass);


--
-- TOC entry 4991 (class 2604 OID 24840)
-- Name: coupons coupon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupons ALTER COLUMN coupon_id SET DEFAULT nextval('public.coupons_coupon_id_seq'::regclass);


--
-- TOC entry 4995 (class 2604 OID 24882)
-- Name: order_items order_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items ALTER COLUMN order_item_id SET DEFAULT nextval('public.order_items_order_item_id_seq'::regclass);


--
-- TOC entry 5002 (class 2604 OID 24985)
-- Name: order_status_history history_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_status_history ALTER COLUMN history_id SET DEFAULT nextval('public.order_status_history_history_id_seq'::regclass);


--
-- TOC entry 4993 (class 2604 OID 24853)
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- TOC entry 4996 (class 2604 OID 24908)
-- Name: payments payment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments ALTER COLUMN payment_id SET DEFAULT nextval('public.payments_payment_id_seq'::regclass);


--
-- TOC entry 4981 (class 2604 OID 24740)
-- Name: product_images image_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_images ALTER COLUMN image_id SET DEFAULT nextval('public.product_images_image_id_seq'::regclass);


--
-- TOC entry 4984 (class 2604 OID 24772)
-- Name: product_inventory inventory_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_inventory ALTER COLUMN inventory_id SET DEFAULT nextval('public.product_inventory_inventory_id_seq'::regclass);


--
-- TOC entry 4977 (class 2604 OID 24711)
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- TOC entry 4998 (class 2604 OID 24936)
-- Name: reviews review_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN review_id SET DEFAULT nextval('public.reviews_review_id_seq'::regclass);


--
-- TOC entry 4970 (class 2604 OID 24634)
-- Name: roles role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN role_id SET DEFAULT nextval('public.roles_role_id_seq'::regclass);


--
-- TOC entry 4987 (class 2604 OID 24798)
-- Name: shopping_cart cart_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart ALTER COLUMN cart_id SET DEFAULT nextval('public.shopping_cart_cart_id_seq'::regclass);


--
-- TOC entry 4971 (class 2604 OID 24645)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 4983 (class 2604 OID 24758)
-- Name: warehouses warehouse_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouses ALTER COLUMN warehouse_id SET DEFAULT nextval('public.warehouses_warehouse_id_seq'::regclass);


--
-- TOC entry 5000 (class 2604 OID 24962)
-- Name: wishlist wishlist_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlist ALTER COLUMN wishlist_id SET DEFAULT nextval('public.wishlist_wishlist_id_seq'::regclass);


--
-- TOC entry 5273 (class 0 OID 24613)
-- Dependencies: 224
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.addresses (address_id, address_line1, address_line2, city_id, state, postal_code, created_at) FROM stdin;
1	address line 1	address line 2	585	Uttar Pradesh	998776	2026-07-10 20:16:32.130237
\.


--
-- TOC entry 5280 (class 0 OID 24682)
-- Dependencies: 231
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brands (brand_id, brand_name, description) FROM stdin;
\.


--
-- TOC entry 5294 (class 0 OID 24813)
-- Dependencies: 245
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_items (cart_item_id, cart_id, product_id, quantity) FROM stdin;
\.


--
-- TOC entry 5282 (class 0 OID 24695)
-- Dependencies: 233
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (category_id, category_name, description) FROM stdin;
\.


--
-- TOC entry 5271 (class 0 OID 24595)
-- Dependencies: 222
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (city_id, country_id, city_name, state_province) FROM stdin;
291	109	Vishakhapatnam	Andhra Pradesh
292	109	Vijayavada	Andhra Pradesh
293	109	Guntūr	Andhra Pradesh
294	109	Kakinada	Andhra Pradesh
295	109	Rajahmundry	Andhra Pradesh
296	109	Sitanagaram	Andhra Pradesh
297	109	Patacudapah	Andhra Pradesh
298	109	Putlampalle	Andhra Pradesh
299	109	Ambapuram	Andhra Pradesh
300	109	Patapadu	Andhra Pradesh
301	109	Takkolu	Andhra Pradesh
302	109	Guwahati	Assam
303	109	Dispur	Assam
304	109	Belahi	Bihar
305	109	Patna	Bihar
306	109	Madarpur	Bihar
307	109	Gaya	Bihar
308	109	Muzaffarpur	Bihar
309	109	Darbhanga	Bihar
310	109	Arrah	Bihar
311	109	Begusarai	Bihar
312	109	Katihar	Bihar
313	109	Chapra	Bihar
314	109	Dinapore	Bihar
315	109	Hajipur	Bihar
316	109	Dehri	Bihar
317	109	Sitamarhi	Bihar
318	109	Jamalpur	Bihar
319	109	Khagaul	Bihar
320	109	Kantai	Bihar
321	109	Nasriganj	Bihar
322	109	Dalsingh Sarai	Bihar
323	109	Koelwar	Bihar
324	109	Baruni	Bihar
325	109	Sahibpur Kamal	Bihar
326	109	Maharajgani	Bihar
327	109	Raja Pakar	Bihar
328	109	Dumra	Bihar
329	109	Ulao	Bihar
330	109	Lakhnaur	Bihar
331	109	Khusropur	Bihar
332	109	Garhpura	Bihar
333	109	Jamira	Bihar
334	109	Desri	Bihar
335	109	Khanpur	Bihar
336	109	Chhabila	Bihar
337	109	Nao Kothi	Bihar
338	109	Nipania	Bihar
339	109	Bhawanipur	Bihar
340	109	Masar	Bihar
341	109	Pachrukhi	Bihar
342	109	Singhaul	Bihar
343	109	Pahleza	Bihar
344	109	Narpatnagar	Bihar
345	109	Sahdai Buzurg	Bihar
346	109	Jogta	Bihar
347	109	Sakhara	Bihar
348	109	Hasanpur	Bihar
349	109	Gangauli	Bihar
350	109	Giddha	Bihar
351	109	Muria	Bihar
352	109	Babura	Bihar
353	109	Keshopur	Bihar
354	109	Gobardhanpur	Bihar
355	109	Andauli	Bihar
356	109	Kasiam	Bihar
357	109	Bhainsaha	Bihar
358	109	Deuriya	Bihar
359	109	Berkap	Bihar
360	109	Suara	Bihar
361	109	Dahaur	Bihar
362	109	Katar	Bihar
363	109	Bhagwanpur	Bihar
364	109	Tendua Dusadhi	Bihar
365	109	Bhagwatpur Patera	Bihar
366	109	Chandigarh	Chandigarh
367	109	Dhanas	Chandigarh
368	109	Bahlolpur	Chandigarh
369	109	Togan	Chandigarh
370	109	Gorakhpur	Chhattisgarh
371	109	Raipur	Chhattisgarh
372	109	Daman	Dadra and Nagar Haveli and Daman and Diu
373	109	Delhi	Delhi
374	109	Najafgarh	Delhi
375	109	Narela	Delhi
376	109	New Delhi	Delhi
377	109	Nangloi Jat	Delhi
378	109	Sultanpur Mazra	Delhi
379	109	Bhalswa Jahangirpur	Delhi
380	109	Dalūpura	Delhi
381	109	Mandoli	Delhi
382	109	Delhi Cantonment	Delhi
383	109	Madangir	Delhi
384	109	Bakhtawarpur	Delhi
385	109	Daryapur Kalan	Delhi
386	109	Kair	Delhi
387	109	Ahmedabad	Gujarat
388	109	Sūrat	Gujarat
389	109	Kanpur	Gujarat
390	109	Vadodara	Gujarat
391	109	Rajkot	Gujarat
392	109	Wapi	Gujarat
393	109	Anghad	Gujarat
394	109	Sursi	Gujarat
395	109	Gorwa	Gujarat
396	109	Faridabad	Haryana
397	109	Gurgaon	Haryana
398	109	Dharampur	Haryana
399	109	Shimla	Himachal Pradesh
400	109	Srinagar	Jammu and Kashmir
401	109	Pampur	Jammu and Kashmir
402	109	Sotur	Jammu and Kashmir
403	109	Dhanbad	Jharkhand
404	109	Ranchi	Jharkhand
405	109	Jamshedpur	Jharkhand
406	109	Kanke	Jharkhand
407	109	Usmanpur	Jharkhand
408	109	Hariladih	Jharkhand
409	109	Pithauria	Jharkhand
410	109	Bangalore	Karnataka
411	109	Yelahanka	Karnataka
412	109	Hesarghatta	Karnataka
413	109	Madnaikanhalli	Karnataka
414	109	Bagalūr	Karnataka
415	109	Kadiganahalli	Karnataka
416	109	Bayandhalli	Karnataka
417	109	Sondekoppa	Karnataka
418	109	Madavar	Karnataka
419	109	Kadabgeri	Karnataka
420	109	Basavanhalli	Karnataka
421	109	Sonnappanhalli	Karnataka
422	109	Doddajivanhalli	Karnataka
423	109	Huttanhalli	Karnataka
424	109	Vajarhalli	Karnataka
425	109	Cachohalli	Karnataka
426	109	Kasgatpur	Karnataka
427	109	Kitanelli	Karnataka
428	109	Bendravadi	Karnataka
429	109	Kodagihalli	Karnataka
430	109	Mailanhalli	Karnataka
431	109	Kannankulam	Kerala
432	109	Kottarasshēri	Kerala
433	109	Attadappa	Kerala
434	109	Kalleli	Kerala
435	109	Thiruvananthapuram	Kerala
436	109	Kochi	Kerala
437	109	Quilon	Kerala
438	109	Munro Turuttu	Kerala
439	109	Alleppey	Kerala
440	109	Ittikara	Kerala
441	109	Vypin	Kerala
442	109	Tripunittura	Kerala
443	109	Kalamasseri	Kerala
444	109	Mayyanad	Kerala
445	109	Perunad	Kerala
446	109	Edappalli	Kerala
447	109	Mannanchōri	Kerala
448	109	Elangunnapuzha	Kerala
449	109	Vayakkalattu	Kerala
450	109	Ayirūrpara	Kerala
451	109	Edavanakad	Kerala
452	109	Madappalli	Kerala
453	109	Mūlampilli	Kerala
454	109	Peringuzha	Kerala
455	109	Palliman	Kerala
456	109	Kandakkadava	Kerala
457	109	Oruvadalkotta	Kerala
458	109	Perunturuttu	Kerala
459	109	Mannara	Kerala
460	109	Cherakara	Kerala
461	109	Valavakattumūla	Kerala
462	109	Tonakkal	Kerala
463	109	Nirkunnam	Kerala
464	109	Perumbalam	Kerala
465	109	Kumbalam	Kerala
466	109	Barmhan Kalan	Madhya Pradesh
467	109	Indore	Madhya Pradesh
468	109	Bhopal	Madhya Pradesh
469	109	Jabalpur	Madhya Pradesh
470	109	Gwalior	Madhya Pradesh
471	109	Tillor Khurd	Madhya Pradesh
472	109	Kampel	Madhya Pradesh
473	109	Shivni	Madhya Pradesh
474	109	Pipalda	Madhya Pradesh
475	109	Permi	Madhya Pradesh
476	109	Mumbai	Maharashtra
477	109	Pune	Maharashtra
478	109	Nagpur	Maharashtra
479	109	Thane	Maharashtra
480	109	Pimpri-Chinchwad	Maharashtra
481	109	Nasik	Maharashtra
482	109	Kalyan	Maharashtra
483	109	Vasai-Virar	Maharashtra
484	109	Aurangabad	Maharashtra
485	109	Bhayandar	Maharashtra
486	109	Ulhasnagar	Maharashtra
487	109	Amarnath	Maharashtra
488	109	Mamnoli	Maharashtra
489	109	Imphal	Manipur
490	109	Shillong	Meghalaya
491	109	Jotsema	Nagaland
492	109	Bhubaneshwar	Odisha
493	109	Raurkela	Odisha
494	109	Brahmapur	Odisha
495	109	Puri	Odisha
496	109	Balasore	Odisha
497	109	Baripada	Odisha
498	109	Brajarajnagar	Odisha
499	109	Kendraparha	Odisha
500	109	Puducherry	Puducherry
501	109	Abhepur	Punjab
502	109	Ludhiana	Punjab
503	109	Amritsar	Punjab
504	109	Mauli	Punjab
505	109	Sohana	Punjab
506	109	Khizrpur	Punjab
507	109	Bhabat	Punjab
508	109	Manauli	Punjab
509	109	Dialpura	Punjab
510	109	Dhurali	Punjab
511	109	Mota Mazra	Punjab
512	109	Jaipur	Rajasthan
513	109	Jodhpur	Rajasthan
514	109	Kota	Rajasthan
515	109	Chennai	Tamil Nadu
516	109	Nadampalaiyam	Tamil Nadu
517	109	Coimbatore	Tamil Nadu
518	109	Peyanvilai	Tamil Nadu
519	109	Madurai	Tamil Nadu
520	109	Trichinopoly	Tamil Nadu
521	109	Āvadi	Tamil Nadu
522	109	Salem	Tamil Nadu
523	109	Sūrappattu	Tamil Nadu
524	109	Ambattūr	Tamil Nadu
525	109	Oulgaret	Tamil Nadu
526	109	Tiruvottiyūr	Tamil Nadu
527	109	Pallavaram	Tamil Nadu
528	109	Tambaram	Tamil Nadu
529	109	Poonamallee	Tamil Nadu
530	109	Nerkunram	Tamil Nadu
531	109	Tirupparangunram	Tamil Nadu
532	109	Vandalūr	Tamil Nadu
533	109	Ayodhyapattanam	Tamil Nadu
534	109	Neykkarappatti	Tamil Nadu
535	109	Mugalivakkam	Tamil Nadu
536	109	Perumbakkam	Tamil Nadu
537	109	Pakkam	Tamil Nadu
538	109	Manappakkam	Tamil Nadu
539	109	Panamarattuppatti	Tamil Nadu
540	109	Bommayapalaiyam	Tamil Nadu
541	109	Gundūr	Tamil Nadu
542	109	Mannivakkam	Tamil Nadu
543	109	Mevalūrkuppam	Tamil Nadu
544	109	Palavedu	Tamil Nadu
545	109	Virapandi	Tamil Nadu
546	109	Valasaiyūr	Tamil Nadu
547	109	Valaiyankulam	Tamil Nadu
548	109	Kūttambakkam	Tamil Nadu
549	109	Kambarasampettai	Tamil Nadu
550	109	Sukkainpatti	Tamil Nadu
551	109	Parappatti	Tamil Nadu
552	109	Vellanūr	Tamil Nadu
553	109	Tippampatti	Tamil Nadu
554	109	Nanmangalam	Tamil Nadu
555	109	Pallippatti	Tamil Nadu
556	109	Agaram	Tamil Nadu
557	109	Pallappatti	Tamil Nadu
558	109	Kolapakkam	Tamil Nadu
559	109	Kūllampatti	Tamil Nadu
560	109	Panaiyūr	Tamil Nadu
561	109	Solankuruni	Tamil Nadu
562	109	Chinnanūr	Tamil Nadu
563	109	Nedumadurai	Tamil Nadu
564	109	Hyderabad	Telangana
565	109	Warangal	Telangana
566	109	Alwal	Telangana
567	109	Secunderabad	Telangana
568	109	Malkajgiri	Telangana
569	109	Dundigal	Telangana
570	109	Bandlagūda	Telangana
571	109	Kondaparti	Telangana
572	109	Mamidipalli	Telangana
573	109	Kismatpur	Telangana
574	109	Mogalcherla	Telangana
575	109	Manchirevula	Telangana
576	109	Wattinagulapalli	Telangana
577	109	Himayatsagar	Telangana
578	109	Gagilapur	Telangana
579	109	Prayagraj	Uttar Pradesh
580	109	Kanpur	Uttar Pradesh
581	109	Lucknow	Uttar Pradesh
582	109	Ghaziabad	Uttar Pradesh
583	109	Āgra	Uttar Pradesh
584	109	Meerut	Uttar Pradesh
585	109	Varanasi	Uttar Pradesh
586	109	Saharanpur	Uttar Pradesh
587	109	Loni	Uttar Pradesh
588	109	Murtazabad	Uttar Pradesh
589	109	Kalianpur	Uttar Pradesh
590	109	Akola	Uttar Pradesh
591	109	Mahuakheraganj	Uttarakhand
592	109	Nagla	Uttarakhand
593	109	Gumanwala	Uttarakhand
594	109	Saundhonwali	Uttarakhand
595	109	Harbatpur	Uttarakhand
596	109	Kamalwaganja Gaur	Uttarakhand
597	109	Madanpur	Uttarakhand
598	109	Kolkata	West Bengal
599	109	Āsansol	West Bengal
600	109	Haora	West Bengal
601	109	Salt Lake City	West Bengal
602	109	Bhatpara	West Bengal
603	109	Panihati	West Bengal
604	109	Kamarhati	West Bengal
605	109	Kulti	West Bengal
606	109	Chunchura	West Bengal
607	109	Kharagpur	West Bengal
608	109	Baharampur	West Bengal
609	109	Shrirampur	West Bengal
610	109	Hugli	West Bengal
611	109	Chandannagar	West Bengal
612	109	Krishnanagar	West Bengal
613	109	Barakpur	West Bengal
614	109	Titagarh	West Bengal
615	109	Dam Dam	West Bengal
616	109	Khardah	West Bengal
617	109	Bansbaria	West Bengal
618	109	Dhulian	West Bengal
619	109	Baj Baj	West Bengal
620	109	Siuri	West Bengal
621	109	Tamlūk	West Bengal
622	109	Diamond Harbour	West Bengal
623	109	Pujali	West Bengal
624	109	Sankrail	West Bengal
625	109	Panchla	West Bengal
626	109	Kola	West Bengal
627	109	Dumjor	West Bengal
628	109	Bagnan	West Bengal
629	109	Begampur	West Bengal
630	109	Mahadipur	West Bengal
631	109	Palasgachi	West Bengal
632	109	Raghunandanpur	West Bengal
633	109	Hilora	West Bengal
634	109	Ballalpur	West Bengal
635	109	Jajigram	West Bengal
636	109	Imamnagar	West Bengal
637	109	Dignagar	West Bengal
638	109	Tildanga	West Bengal
639	109	Chanditala	West Bengal
640	109	Baniara	West Bengal
641	109	Jaladipur	West Bengal
642	109	Ranipur	West Bengal
643	109	Bartala	West Bengal
644	109	Sikdarpur	West Bengal
\.


--
-- TOC entry 5269 (class 0 OID 24583)
-- Dependencies: 220
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries (country_id, country_name, country_region_continent, country_primary_tz, created_at) FROM stdin;
1	Afghanistan	Asia	UTC+04:30	2026-07-09 12:56:19.266202+05:30
2	Albania	Europe	UTC+01:00 (DST +02:00)	2026-07-09 12:56:19.266202+05:30
3	Algeria	Africa	UTC+01:00	2026-07-09 12:56:19.266202+05:30
4	Andorra	Europe	UTC+01:00 (DST +02:00)	2026-07-09 12:56:19.266202+05:30
5	Angola	Africa	UTC+01:00	2026-07-09 12:56:19.266202+05:30
6	Antigua and Barbuda	North America (Caribbean)	UTC-04:00	2026-07-09 12:56:19.266202+05:30
7	Argentina	South America	UTC-03:00	2026-07-09 12:56:19.266202+05:30
8	Armenia	Asia	UTC+04:00	2026-07-09 12:56:19.266202+05:30
9	Australia	Oceania	Multiple: UTC+08:00 to UTC+11:00	2026-07-09 12:56:19.266202+05:30
10	Austria	Europe	UTC+01:00 (DST +02:00)	2026-07-09 12:56:19.266202+05:30
11	Azerbaijan	Asia	UTC+04:00	2026-07-09 12:56:19.266202+05:30
12	Bahamas	North America (Caribbean)	UTC-05:00 (DST -04:00)	2026-07-09 12:56:19.266202+05:30
13	Bahrain	Asia (Middle East)	UTC+03:00	2026-07-09 12:56:19.266202+05:30
14	Bangladesh	Asia	UTC+06:00	2026-07-09 12:56:19.266202+05:30
15	Barbados	North America (Caribbean)	UTC-04:00	2026-07-09 12:56:19.266202+05:30
16	Belarus	Europe	UTC+03:00	2026-07-09 12:56:19.266202+05:30
17	Belgium	Europe	UTC+01:00 (DST +02:00)	2026-07-09 12:56:19.266202+05:30
18	Belize	North America	UTC-06:00	2026-07-09 12:56:19.266202+05:30
19	Benin	Africa	UTC+01:00	2026-07-09 12:56:19.266202+05:30
20	Bhutan	Asia	UTC+06:00	2026-07-09 12:56:19.266202+05:30
21	Bolivia	South America	UTC-04:00	2026-07-09 12:56:19.266202+05:30
22	Bosnia and Herzegovina	Europe	UTC+01:00 (DST +02:00)	2026-07-09 12:56:19.266202+05:30
23	Botswana	Africa	UTC+02:00	2026-07-09 12:56:19.266202+05:30
24	Brazil	South America	Multiple: UTC-05:00 to UTC-02:00	2026-07-09 12:56:19.266202+05:30
25	Brunei	Asia	UTC+08:00	2026-07-09 12:56:19.266202+05:30
26	Bulgaria	Europe	UTC+02:00 (DST +03:00)	2026-07-09 12:56:19.266202+05:30
27	Burkina Faso	Africa	UTC+00:00	2026-07-09 12:56:19.266202+05:30
28	Burundi	Africa	UTC+02:00	2026-07-09 12:56:19.266202+05:30
29	Cambodia	Asia	UTC+07:00	2026-07-09 12:56:19.266202+05:30
30	Cameroon	Africa	UTC+01:00	2026-07-09 12:56:19.266202+05:30
31	Canada	North America	Multiple: UTC-08:00 to UTC-03:30	2026-07-09 12:56:19.266202+05:30
32	Chile	South America	UTC-06:00 to UTC-04:00	2026-07-09 12:56:19.266202+05:30
33	China	Asia	UTC+08:00	2026-07-09 12:56:19.266202+05:30
34	Colombia	South America	UTC-05:00	2026-07-09 12:56:19.266202+05:30
35	Costa Rica	North America	UTC-06:00	2026-07-09 12:56:19.266202+05:30
36	Croatia	Europe	UTC+01:00 (DST +02:00)	2026-07-09 12:56:19.266202+05:30
37	Cuba	North America (Caribbean)	UTC-05:00 (DST -04:00)	2026-07-09 12:56:19.266202+05:30
38	Cyprus	Europe	UTC+02:00 (DST +03:00)	2026-07-09 12:56:19.266202+05:30
39	Czechia	Europe	UTC+01:00 (DST +02:00)	2026-07-09 12:56:19.266202+05:30
40	Democratic Republic of the Congo	Africa	UTC+01:00, UTC+02:00	2026-07-09 12:56:19.266202+05:30
41	Aruba	Americas	America/Aruba	2026-07-09 13:01:42.844232+05:30
42	Anguilla	Americas	America/Anguilla	2026-07-09 13:01:42.844232+05:30
43	Åland Islands		Europe/Mariehamn	2026-07-09 13:01:42.844232+05:30
44	United Arab Emirates	Asia	Asia/Dubai	2026-07-09 13:01:42.844232+05:30
45	American Samoa	Oceania	Pacific/Pago_Pago	2026-07-09 13:01:42.844232+05:30
46	Antarctica		Antarctica/McMurdo	2026-07-09 13:01:42.844232+05:30
47	French Southern Territories		Indian/Kerguelen	2026-07-09 13:01:42.844232+05:30
48	Bonaire, Sint Eustatius and Saba		America/Kralendijk	2026-07-09 13:01:42.844232+05:30
49	Saint Barthélemy		America/St_Barthelemy	2026-07-09 13:01:42.844232+05:30
50	Bermuda	Americas	Atlantic/Bermuda	2026-07-09 13:01:42.844232+05:30
51	Bolivia, Plurinational State of		America/La_Paz	2026-07-09 13:01:42.844232+05:30
52	Brunei Darussalam		Asia/Brunei	2026-07-09 13:01:42.844232+05:30
53	Bouvet Island			2026-07-09 13:01:42.844232+05:30
54	Central African Republic	Africa	Africa/Bangui	2026-07-09 13:01:42.844232+05:30
55	Cocos (Keeling) Islands	Oceania	Indian/Cocos	2026-07-09 13:01:42.844232+05:30
56	Switzerland	Europe	Europe/Zurich	2026-07-09 13:01:42.844232+05:30
57	Côte d`Ivoire		Africa/Abidjan	2026-07-09 13:01:42.844232+05:30
58	Congo, The Democratic Republic of the		Africa/Kinshasa	2026-07-09 13:01:42.844232+05:30
59	Congo		Africa/Brazzaville	2026-07-09 13:01:42.844232+05:30
60	Cook Islands	Oceania	Pacific/Rarotonga	2026-07-09 13:01:42.844232+05:30
61	Comoros	Africa	Indian/Comoro	2026-07-09 13:01:42.844232+05:30
62	Cabo Verde		Atlantic/Cape_Verde	2026-07-09 13:01:42.844232+05:30
63	Curaçao		America/Curacao	2026-07-09 13:01:42.844232+05:30
64	Christmas Island	Oceania	Indian/Christmas	2026-07-09 13:01:42.844232+05:30
65	Cayman Islands	Americas	America/Cayman	2026-07-09 13:01:42.844232+05:30
66	Germany	Europe	Europe/Berlin	2026-07-09 13:01:42.844232+05:30
67	Djibouti	Africa	Africa/Djibouti	2026-07-09 13:01:42.844232+05:30
68	Dominica	Americas	America/Dominica	2026-07-09 13:01:42.844232+05:30
69	Denmark	Europe	Europe/Copenhagen	2026-07-09 13:01:42.844232+05:30
70	Dominican Republic	Americas	America/Santo_Domingo	2026-07-09 13:01:42.844232+05:30
71	Ecuador	Americas	America/Guayaquil	2026-07-09 13:01:42.844232+05:30
72	Egypt	Africa	Africa/Cairo	2026-07-09 13:01:42.844232+05:30
73	Eritrea	Africa	Africa/Asmara	2026-07-09 13:01:42.844232+05:30
74	Western Sahara	Africa	Africa/El_Aaiun	2026-07-09 13:01:42.844232+05:30
75	Spain	Europe	Europe/Madrid	2026-07-09 13:01:42.844232+05:30
76	Estonia	Europe	Europe/Tallinn	2026-07-09 13:01:42.844232+05:30
77	Ethiopia	Africa	Africa/Addis_Ababa	2026-07-09 13:01:42.844232+05:30
78	Finland	Europe	Europe/Helsinki	2026-07-09 13:01:42.844232+05:30
79	Fiji	Oceania	Pacific/Fiji	2026-07-09 13:01:42.844232+05:30
80	Falkland Islands (Malvinas)		Atlantic/Stanley	2026-07-09 13:01:42.844232+05:30
81	France	Europe	Europe/Paris	2026-07-09 13:01:42.844232+05:30
82	Faroe Islands	Europe	Atlantic/Faroe	2026-07-09 13:01:42.844232+05:30
83	Micronesia, Federated States of		Pacific/Chuuk	2026-07-09 13:01:42.844232+05:30
84	Gabon	Africa	Africa/Libreville	2026-07-09 13:01:42.844232+05:30
85	United Kingdom	Europe	Europe/London	2026-07-09 13:01:42.844232+05:30
86	Georgia	Asia	Asia/Tbilisi	2026-07-09 13:01:42.844232+05:30
87	Guernsey	Europe	Europe/Guernsey	2026-07-09 13:01:42.844232+05:30
88	Ghana	Africa	Africa/Accra	2026-07-09 13:01:42.844232+05:30
89	Gibraltar	Europe	Europe/Gibraltar	2026-07-09 13:01:42.844232+05:30
90	Guinea	Africa	Africa/Conakry	2026-07-09 13:01:42.844232+05:30
91	Guadeloupe	Americas	America/Guadeloupe	2026-07-09 13:01:42.844232+05:30
92	Gambia		Africa/Banjul	2026-07-09 13:01:42.844232+05:30
93	Guinea-Bissau	Africa	Africa/Bissau	2026-07-09 13:01:42.844232+05:30
94	Equatorial Guinea	Africa	Africa/Malabo	2026-07-09 13:01:42.844232+05:30
95	Greece	Europe	Europe/Athens	2026-07-09 13:01:42.844232+05:30
96	Grenada	Americas	America/Grenada	2026-07-09 13:01:42.844232+05:30
97	Greenland	Americas	America/Nuuk	2026-07-09 13:01:42.844232+05:30
98	Guatemala	Americas	America/Guatemala	2026-07-09 13:01:42.844232+05:30
99	French Guiana	Americas	America/Cayenne	2026-07-09 13:01:42.844232+05:30
100	Guam	Oceania	Pacific/Guam	2026-07-09 13:01:42.844232+05:30
101	Guyana	Americas	America/Guyana	2026-07-09 13:01:42.844232+05:30
102	Hong Kong	Asia	Asia/Hong_Kong	2026-07-09 13:01:42.844232+05:30
103	Heard Island and McDonald Islands			2026-07-09 13:01:42.844232+05:30
104	Honduras	Americas	America/Tegucigalpa	2026-07-09 13:01:42.844232+05:30
105	Haiti	Americas	America/Port-au-Prince	2026-07-09 13:01:42.844232+05:30
106	Hungary	Europe	Europe/Budapest	2026-07-09 13:01:42.844232+05:30
107	Indonesia	Asia	Asia/Jakarta	2026-07-09 13:01:42.844232+05:30
108	Isle of Man	Europe	Europe/Isle_of_Man	2026-07-09 13:01:42.844232+05:30
109	India	Asia	Asia/Kolkata	2026-07-09 13:01:42.844232+05:30
110	British Indian Ocean Territory	Africa	Indian/Chagos	2026-07-09 13:01:42.844232+05:30
111	Ireland	Europe	Europe/Dublin	2026-07-09 13:01:42.844232+05:30
112	Iran, Islamic Republic of		Asia/Tehran	2026-07-09 13:01:42.844232+05:30
113	Iraq	Asia	Asia/Baghdad	2026-07-09 13:01:42.844232+05:30
114	Iceland	Europe	Atlantic/Reykjavik	2026-07-09 13:01:42.844232+05:30
115	Israel	Asia	Asia/Jerusalem	2026-07-09 13:01:42.844232+05:30
116	Italy	Europe	Europe/Rome	2026-07-09 13:01:42.844232+05:30
117	Jamaica	Americas	America/Jamaica	2026-07-09 13:01:42.844232+05:30
118	Jersey	Europe	Europe/Jersey	2026-07-09 13:01:42.844232+05:30
119	Jordan	Asia	Asia/Amman	2026-07-09 13:01:42.844232+05:30
120	Japan	Asia	Asia/Tokyo	2026-07-09 13:01:42.844232+05:30
121	Kazakhstan	Asia	Asia/Almaty	2026-07-09 13:01:42.844232+05:30
122	Kenya	Africa	Africa/Nairobi	2026-07-09 13:01:42.844232+05:30
123	Kyrgyzstan	Asia	Asia/Bishkek	2026-07-09 13:01:42.844232+05:30
124	Kiribati	Oceania	Pacific/Tarawa	2026-07-09 13:01:42.844232+05:30
125	Saint Kitts and Nevis	Americas	America/St_Kitts	2026-07-09 13:01:42.844232+05:30
126	Korea, Republic of		Asia/Seoul	2026-07-09 13:01:42.844232+05:30
127	Kuwait	Asia	Asia/Kuwait	2026-07-09 13:01:42.844232+05:30
128	Lao People`s Democratic Republic	Asia	Asia/Vientiane	2026-07-09 13:01:42.844232+05:30
129	Lebanon	Asia	Asia/Beirut	2026-07-09 13:01:42.844232+05:30
130	Liberia	Africa	Africa/Monrovia	2026-07-09 13:01:42.844232+05:30
131	Libya	Africa	Africa/Tripoli	2026-07-09 13:01:42.844232+05:30
132	Saint Lucia	Americas	America/St_Lucia	2026-07-09 13:01:42.844232+05:30
133	Liechtenstein	Europe	Europe/Vaduz	2026-07-09 13:01:42.844232+05:30
134	Sri Lanka	Asia	Asia/Colombo	2026-07-09 13:01:42.844232+05:30
135	Lesotho	Africa	Africa/Maseru	2026-07-09 13:01:42.844232+05:30
136	Lithuania	Europe	Europe/Vilnius	2026-07-09 13:01:42.844232+05:30
137	Luxembourg	Europe	Europe/Luxembourg	2026-07-09 13:01:42.844232+05:30
138	Latvia	Europe	Europe/Riga	2026-07-09 13:01:42.844232+05:30
139	Macao		Asia/Macau	2026-07-09 13:01:42.844232+05:30
140	Saint Martin (French part)		America/Marigot	2026-07-09 13:01:42.844232+05:30
141	Morocco	Africa	Africa/Casablanca	2026-07-09 13:01:42.844232+05:30
142	Monaco	Europe	Europe/Monaco	2026-07-09 13:01:42.844232+05:30
143	Moldova, Republic of		Europe/Chisinau	2026-07-09 13:01:42.844232+05:30
144	Madagascar	Africa	Indian/Antananarivo	2026-07-09 13:01:42.844232+05:30
145	Maldives	Asia	Indian/Maldives	2026-07-09 13:01:42.844232+05:30
146	Mexico	Americas	America/Mexico_City	2026-07-09 13:01:42.844232+05:30
147	Marshall Islands	Oceania	Pacific/Majuro	2026-07-09 13:01:42.844232+05:30
148	North Macedonia		Europe/Skopje	2026-07-09 13:01:42.844232+05:30
149	Mali	Africa	Africa/Bamako	2026-07-09 13:01:42.844232+05:30
150	Malta	Europe	Europe/Malta	2026-07-09 13:01:42.844232+05:30
151	Myanmar		Asia/Yangon	2026-07-09 13:01:42.844232+05:30
152	Montenegro		Europe/Podgorica	2026-07-09 13:01:42.844232+05:30
153	Mongolia	Asia	Asia/Ulaanbaatar	2026-07-09 13:01:42.844232+05:30
154	Northern Mariana Islands	Oceania	Pacific/Saipan	2026-07-09 13:01:42.844232+05:30
155	Mozambique	Africa	Africa/Maputo	2026-07-09 13:01:42.844232+05:30
156	Mauritania	Africa	Africa/Nouakchott	2026-07-09 13:01:42.844232+05:30
157	Montserrat	Americas	America/Montserrat	2026-07-09 13:01:42.844232+05:30
158	Martinique	Americas	America/Martinique	2026-07-09 13:01:42.844232+05:30
159	Mauritius	Africa	Indian/Mauritius	2026-07-09 13:01:42.844232+05:30
160	Malawi	Africa	Africa/Blantyre	2026-07-09 13:01:42.844232+05:30
161	Malaysia	Asia	Asia/Kuala_Lumpur	2026-07-09 13:01:42.844232+05:30
162	Mayotte	Africa	Indian/Mayotte	2026-07-09 13:01:42.844232+05:30
163	Namibia	Africa	Africa/Windhoek	2026-07-09 13:01:42.844232+05:30
164	New Caledonia	Oceania	Pacific/Noumea	2026-07-09 13:01:42.844232+05:30
165	Niger	Africa	Africa/Niamey	2026-07-09 13:01:42.844232+05:30
166	Norfolk Island	Oceania	Pacific/Norfolk	2026-07-09 13:01:42.844232+05:30
167	Nigeria	Africa	Africa/Lagos	2026-07-09 13:01:42.844232+05:30
168	Nicaragua	Americas	America/Managua	2026-07-09 13:01:42.844232+05:30
169	Niue	Oceania	Pacific/Niue	2026-07-09 13:01:42.844232+05:30
170	Netherlands	Europe	Europe/Amsterdam	2026-07-09 13:01:42.844232+05:30
171	Norway	Europe	Europe/Oslo	2026-07-09 13:01:42.844232+05:30
172	Nepal	Asia	Asia/Kathmandu	2026-07-09 13:01:42.844232+05:30
173	Nauru	Oceania	Pacific/Nauru	2026-07-09 13:01:42.844232+05:30
174	New Zealand	Oceania	Pacific/Auckland	2026-07-09 13:01:42.844232+05:30
175	Oman	Asia	Asia/Muscat	2026-07-09 13:01:42.844232+05:30
176	Pakistan	Asia	Asia/Karachi	2026-07-09 13:01:42.844232+05:30
177	Panama	Americas	America/Panama	2026-07-09 13:01:42.844232+05:30
178	Pitcairn		Pacific/Pitcairn	2026-07-09 13:01:42.844232+05:30
179	Peru	Americas	America/Lima	2026-07-09 13:01:42.844232+05:30
180	Philippines	Asia	Asia/Manila	2026-07-09 13:01:42.844232+05:30
181	Palau	Oceania	Pacific/Palau	2026-07-09 13:01:42.844232+05:30
182	Papua New Guinea	Oceania	Pacific/Port_Moresby	2026-07-09 13:01:42.844232+05:30
183	Poland	Europe	Europe/Warsaw	2026-07-09 13:01:42.844232+05:30
184	Puerto Rico	Americas	America/Puerto_Rico	2026-07-09 13:01:42.844232+05:30
185	Korea, Democratic People`s Republic of		Asia/Pyongyang	2026-07-09 13:01:42.844232+05:30
186	Portugal	Europe	Europe/Lisbon	2026-07-09 13:01:42.844232+05:30
187	Paraguay	Americas	America/Asuncion	2026-07-09 13:01:42.844232+05:30
188	Palestine, State of		Asia/Gaza	2026-07-09 13:01:42.844232+05:30
189	French Polynesia	Oceania	Pacific/Tahiti	2026-07-09 13:01:42.844232+05:30
190	Qatar	Asia	Asia/Qatar	2026-07-09 13:01:42.844232+05:30
191	Réunion	Africa	Indian/Reunion	2026-07-09 13:01:42.844232+05:30
192	Romania	Europe	Europe/Bucharest	2026-07-09 13:01:42.844232+05:30
193	Russian Federation	Europe	Europe/Kaliningrad	2026-07-09 13:01:42.844232+05:30
194	Rwanda	Africa	Africa/Kigali	2026-07-09 13:01:42.844232+05:30
195	Saudi Arabia	Asia	Asia/Riyadh	2026-07-09 13:01:42.844232+05:30
196	Sudan	Africa	Africa/Khartoum	2026-07-09 13:01:42.844232+05:30
197	Senegal	Africa	Africa/Dakar	2026-07-09 13:01:42.844232+05:30
198	Singapore	Asia	Asia/Singapore	2026-07-09 13:01:42.844232+05:30
199	South Georgia and the South Sandwich Islands	Americas	Atlantic/South_Georgia	2026-07-09 13:01:42.844232+05:30
200	Saint Helena, Ascension and Tristan da Cunha		Atlantic/St_Helena	2026-07-09 13:01:42.844232+05:30
201	Svalbard and Jan Mayen	Europe	Arctic/Longyearbyen	2026-07-09 13:01:42.844232+05:30
202	Solomon Islands	Oceania	Pacific/Guadalcanal	2026-07-09 13:01:42.844232+05:30
203	Sierra Leone	Africa	Africa/Freetown	2026-07-09 13:01:42.844232+05:30
204	El Salvador	Americas	America/El_Salvador	2026-07-09 13:01:42.844232+05:30
205	San Marino	Europe	Europe/San_Marino	2026-07-09 13:01:42.844232+05:30
206	Somalia	Africa	Africa/Mogadishu	2026-07-09 13:01:42.844232+05:30
207	Saint Pierre and Miquelon	Americas	America/Miquelon	2026-07-09 13:01:42.844232+05:30
208	Serbia	Europe	Europe/Belgrade	2026-07-09 13:01:42.844232+05:30
209	South Sudan	Africa	Africa/Juba	2026-07-09 13:01:42.844232+05:30
210	Sao Tome and Principe		Africa/Sao_Tome	2026-07-09 13:01:42.844232+05:30
211	Suriname	Americas	America/Paramaribo	2026-07-09 13:01:42.844232+05:30
212	Slovakia	Europe	Europe/Bratislava	2026-07-09 13:01:42.844232+05:30
213	Slovenia	Europe	Europe/Ljubljana	2026-07-09 13:01:42.844232+05:30
214	Sweden	Europe	Europe/Stockholm	2026-07-09 13:01:42.844232+05:30
215	Eswatini		Africa/Mbabane	2026-07-09 13:01:42.844232+05:30
216	Sint Maarten (Dutch part)		America/Lower_Princes	2026-07-09 13:01:42.844232+05:30
217	Seychelles	Africa	Indian/Mahe	2026-07-09 13:01:42.844232+05:30
218	Syrian Arab Republic	Asia	Asia/Damascus	2026-07-09 13:01:42.844232+05:30
219	Turks and Caicos Islands		America/Grand_Turk	2026-07-09 13:01:42.844232+05:30
220	Chad	Africa	Africa/Ndjamena	2026-07-09 13:01:42.844232+05:30
221	Togo	Africa	Africa/Lome	2026-07-09 13:01:42.844232+05:30
222	Thailand	Asia	Asia/Bangkok	2026-07-09 13:01:42.844232+05:30
223	Tajikistan	Asia	Asia/Dushanbe	2026-07-09 13:01:42.844232+05:30
224	Tokelau	Oceania	Pacific/Fakaofo	2026-07-09 13:01:42.844232+05:30
225	Turkmenistan	Asia	Asia/Ashgabat	2026-07-09 13:01:42.844232+05:30
226	Timor-Leste		Asia/Dili	2026-07-09 13:01:42.844232+05:30
227	Tonga	Oceania	Pacific/Tongatapu	2026-07-09 13:01:42.844232+05:30
228	Trinidad and Tobago	Americas	America/Port_of_Spain	2026-07-09 13:01:42.844232+05:30
229	Tunisia	Africa	Africa/Tunis	2026-07-09 13:01:42.844232+05:30
230	Türkiye		Europe/Istanbul	2026-07-09 13:01:42.844232+05:30
231	Tuvalu	Oceania	Pacific/Funafuti	2026-07-09 13:01:42.844232+05:30
232	Taiwan, Province of China		Asia/Taipei	2026-07-09 13:01:42.844232+05:30
233	Tanzania, United Republic of		Africa/Dar_es_Salaam	2026-07-09 13:01:42.844232+05:30
234	Uganda	Africa	Africa/Kampala	2026-07-09 13:01:42.844232+05:30
235	Ukraine	Europe	Europe/Simferopol	2026-07-09 13:01:42.844232+05:30
236	United States Minor Outlying Islands		Pacific/Midway	2026-07-09 13:01:42.844232+05:30
237	Uruguay	Americas	America/Montevideo	2026-07-09 13:01:42.844232+05:30
238	United States	Americas	America/New_York	2026-07-09 13:01:42.844232+05:30
239	Uzbekistan	Asia	Asia/Samarkand	2026-07-09 13:01:42.844232+05:30
240	Holy See (Vatican City State)		Europe/Vatican	2026-07-09 13:01:42.844232+05:30
241	Saint Vincent and the Grenadines	Americas	America/St_Vincent	2026-07-09 13:01:42.844232+05:30
242	Venezuela, Bolivarian Republic of		America/Caracas	2026-07-09 13:01:42.844232+05:30
243	Virgin Islands, British		America/Tortola	2026-07-09 13:01:42.844232+05:30
244	Virgin Islands, U.S.		America/St_Thomas	2026-07-09 13:01:42.844232+05:30
245	Viet Nam		Asia/Ho_Chi_Minh	2026-07-09 13:01:42.844232+05:30
246	Vanuatu	Oceania	Pacific/Efate	2026-07-09 13:01:42.844232+05:30
247	Wallis and Futuna	Oceania	Pacific/Wallis	2026-07-09 13:01:42.844232+05:30
248	Samoa	Oceania	Pacific/Apia	2026-07-09 13:01:42.844232+05:30
249	Yemen	Asia	Asia/Aden	2026-07-09 13:01:42.844232+05:30
250	South Africa	Africa	Africa/Johannesburg	2026-07-09 13:01:42.844232+05:30
251	Zambia	Africa	Africa/Lusaka	2026-07-09 13:01:42.844232+05:30
252	Zimbabwe	Africa	Africa/Harare	2026-07-09 13:01:42.844232+05:30
\.


--
-- TOC entry 5296 (class 0 OID 24837)
-- Dependencies: 247
-- Data for Name: coupons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coupons (coupon_id, coupon_code, discount_percent, valid_from, valid_to, is_active) FROM stdin;
\.


--
-- TOC entry 5300 (class 0 OID 24879)
-- Dependencies: 251
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (order_item_id, order_id, product_id, quantity, unit_price, subtotal) FROM stdin;
\.


--
-- TOC entry 5308 (class 0 OID 24982)
-- Dependencies: 259
-- Data for Name: order_status_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_status_history (history_id, order_id, status, changed_at, remarks) FROM stdin;
\.


--
-- TOC entry 5298 (class 0 OID 24850)
-- Dependencies: 249
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, user_id, shipping_address_id, coupon_id, order_status, payment_status, total_amount, order_date) FROM stdin;
\.


--
-- TOC entry 5302 (class 0 OID 24905)
-- Dependencies: 253
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (payment_id, order_id, user_id, payment_method, transaction_id, amount, payment_status, payment_date) FROM stdin;
\.


--
-- TOC entry 5309 (class 0 OID 25057)
-- Dependencies: 260
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (id, description, user_id, user_user_id) FROM stdin;
\.


--
-- TOC entry 5286 (class 0 OID 24737)
-- Dependencies: 237
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_images (image_id, product_id, image_url, is_primary) FROM stdin;
\.


--
-- TOC entry 5290 (class 0 OID 24769)
-- Dependencies: 241
-- Data for Name: product_inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_inventory (inventory_id, product_id, warehouse_id, quantity_available, reorder_level) FROM stdin;
\.


--
-- TOC entry 5284 (class 0 OID 24708)
-- Dependencies: 235
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, product_name, description, sku, brand_id, category_id, price, discount_price, weight, is_active, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5304 (class 0 OID 24933)
-- Dependencies: 255
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (review_id, product_id, user_id, rating, review_text, created_at) FROM stdin;
\.


--
-- TOC entry 5275 (class 0 OID 24631)
-- Dependencies: 226
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (role_id, role_name) FROM stdin;
\.


--
-- TOC entry 5292 (class 0 OID 24795)
-- Dependencies: 243
-- Data for Name: shopping_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shopping_cart (cart_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5310 (class 0 OID 25064)
-- Dependencies: 261
-- Data for Name: user_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_details (id, email, name, password, registration_date_time) FROM stdin;
\.


--
-- TOC entry 5278 (class 0 OID 24664)
-- Dependencies: 229
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_roles (user_id, role_id) FROM stdin;
\.


--
-- TOC entry 5277 (class 0 OID 24642)
-- Dependencies: 228
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, first_name, last_name, email, phone, address_id, is_active, created_at, updated_at) FROM stdin;
10003	Sandeep	Mukherji	mrs.prarthana@gmail.com	9971515337	1	t	2026-07-10 20:16:53.253464	2026-07-10 20:16:53.254555
\.


--
-- TOC entry 5288 (class 0 OID 24755)
-- Dependencies: 239
-- Data for Name: warehouses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.warehouses (warehouse_id, warehouse_name, address_id) FROM stdin;
\.


--
-- TOC entry 5306 (class 0 OID 24959)
-- Dependencies: 257
-- Data for Name: wishlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wishlist (wishlist_id, user_id, product_id, created_at) FROM stdin;
\.


--
-- TOC entry 5338 (class 0 OID 0)
-- Dependencies: 223
-- Name: addresses_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_address_id_seq', 1, false);


--
-- TOC entry 5339 (class 0 OID 0)
-- Dependencies: 230
-- Name: brands_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_brand_id_seq', 1, false);


--
-- TOC entry 5340 (class 0 OID 0)
-- Dependencies: 244
-- Name: cart_items_cart_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_items_cart_item_id_seq', 1, false);


--
-- TOC entry 5341 (class 0 OID 0)
-- Dependencies: 232
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 1, false);


--
-- TOC entry 5342 (class 0 OID 0)
-- Dependencies: 221
-- Name: cities_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_city_id_seq', 644, true);


--
-- TOC entry 5343 (class 0 OID 0)
-- Dependencies: 219
-- Name: countries_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_country_id_seq', 252, true);


--
-- TOC entry 5344 (class 0 OID 0)
-- Dependencies: 246
-- Name: coupons_coupon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coupons_coupon_id_seq', 1, false);


--
-- TOC entry 5345 (class 0 OID 0)
-- Dependencies: 250
-- Name: order_items_order_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_order_item_id_seq', 1, false);


--
-- TOC entry 5346 (class 0 OID 0)
-- Dependencies: 258
-- Name: order_status_history_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_status_history_history_id_seq', 1, false);


--
-- TOC entry 5347 (class 0 OID 0)
-- Dependencies: 248
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);


--
-- TOC entry 5348 (class 0 OID 0)
-- Dependencies: 252
-- Name: payments_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_payment_id_seq', 1, false);


--
-- TOC entry 5349 (class 0 OID 0)
-- Dependencies: 262
-- Name: post_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_seq', 10004, false);


--
-- TOC entry 5350 (class 0 OID 0)
-- Dependencies: 236
-- Name: product_images_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_images_image_id_seq', 1, false);


--
-- TOC entry 5351 (class 0 OID 0)
-- Dependencies: 240
-- Name: product_inventory_inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_inventory_inventory_id_seq', 1, false);


--
-- TOC entry 5352 (class 0 OID 0)
-- Dependencies: 234
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 1, false);


--
-- TOC entry 5353 (class 0 OID 0)
-- Dependencies: 254
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 1, false);


--
-- TOC entry 5354 (class 0 OID 0)
-- Dependencies: 225
-- Name: roles_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_role_id_seq', 1, false);


--
-- TOC entry 5355 (class 0 OID 0)
-- Dependencies: 242
-- Name: shopping_cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shopping_cart_cart_id_seq', 1, false);


--
-- TOC entry 5356 (class 0 OID 0)
-- Dependencies: 263
-- Name: user_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_seq', 10003, true);


--
-- TOC entry 5357 (class 0 OID 0)
-- Dependencies: 227
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);


--
-- TOC entry 5358 (class 0 OID 0)
-- Dependencies: 238
-- Name: warehouses_warehouse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.warehouses_warehouse_id_seq', 1, false);


--
-- TOC entry 5359 (class 0 OID 0)
-- Dependencies: 256
-- Name: wishlist_wishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wishlist_wishlist_id_seq', 1, false);


--
-- TOC entry 5020 (class 2606 OID 24624)
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (address_id);


--
-- TOC entry 5032 (class 2606 OID 24693)
-- Name: brands brands_brand_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_brand_name_key UNIQUE (brand_name);


--
-- TOC entry 5034 (class 2606 OID 24691)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (brand_id);


--
-- TOC entry 5059 (class 2606 OID 24825)
-- Name: cart_items cart_items_cart_id_product_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_cart_id_product_id_key UNIQUE (cart_id, product_id);


--
-- TOC entry 5061 (class 2606 OID 24823)
-- Name: cart_items cart_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_pkey PRIMARY KEY (cart_item_id);


--
-- TOC entry 5036 (class 2606 OID 24706)
-- Name: categories categories_category_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_category_name_key UNIQUE (category_name);


--
-- TOC entry 5038 (class 2606 OID 24704)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- TOC entry 5018 (class 2606 OID 24604)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (city_id);


--
-- TOC entry 5014 (class 2606 OID 24593)
-- Name: countries countries_country_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_country_name_key UNIQUE (country_name);


--
-- TOC entry 5016 (class 2606 OID 24591)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_id);


--
-- TOC entry 5064 (class 2606 OID 24848)
-- Name: coupons coupons_coupon_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_coupon_code_key UNIQUE (coupon_code);


--
-- TOC entry 5066 (class 2606 OID 24846)
-- Name: coupons coupons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_pkey PRIMARY KEY (coupon_id);


--
-- TOC entry 5071 (class 2606 OID 24893)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id);


--
-- TOC entry 5088 (class 2606 OID 24993)
-- Name: order_status_history order_status_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_status_history
    ADD CONSTRAINT order_status_history_pkey PRIMARY KEY (history_id);


--
-- TOC entry 5069 (class 2606 OID 24862)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 5073 (class 2606 OID 24919)
-- Name: payments payments_order_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_order_id_key UNIQUE (order_id);


--
-- TOC entry 5075 (class 2606 OID 24917)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);


--
-- TOC entry 5077 (class 2606 OID 24921)
-- Name: payments payments_transaction_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_transaction_id_key UNIQUE (transaction_id);


--
-- TOC entry 5090 (class 2606 OID 25063)
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- TOC entry 5047 (class 2606 OID 24748)
-- Name: product_images product_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (image_id);


--
-- TOC entry 5051 (class 2606 OID 24781)
-- Name: product_inventory product_inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_inventory
    ADD CONSTRAINT product_inventory_pkey PRIMARY KEY (inventory_id);


--
-- TOC entry 5053 (class 2606 OID 24783)
-- Name: product_inventory product_inventory_product_id_warehouse_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_inventory
    ADD CONSTRAINT product_inventory_product_id_warehouse_id_key UNIQUE (product_id, warehouse_id);


--
-- TOC entry 5043 (class 2606 OID 24723)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 5045 (class 2606 OID 24725)
-- Name: products products_sku_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_sku_key UNIQUE (sku);


--
-- TOC entry 5080 (class 2606 OID 24945)
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);


--
-- TOC entry 5082 (class 2606 OID 24947)
-- Name: reviews reviews_product_id_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_product_id_user_id_key UNIQUE (product_id, user_id);


--
-- TOC entry 5022 (class 2606 OID 24638)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);


--
-- TOC entry 5024 (class 2606 OID 24640)
-- Name: roles roles_role_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_role_name_key UNIQUE (role_name);


--
-- TOC entry 5055 (class 2606 OID 24804)
-- Name: shopping_cart shopping_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart
    ADD CONSTRAINT shopping_cart_pkey PRIMARY KEY (cart_id);


--
-- TOC entry 5057 (class 2606 OID 24806)
-- Name: shopping_cart shopping_cart_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart
    ADD CONSTRAINT shopping_cart_user_id_key UNIQUE (user_id);


--
-- TOC entry 5092 (class 2606 OID 25071)
-- Name: user_details user_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (id);


--
-- TOC entry 5030 (class 2606 OID 24670)
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);


--
-- TOC entry 5026 (class 2606 OID 24658)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 5028 (class 2606 OID 24656)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 5049 (class 2606 OID 24762)
-- Name: warehouses warehouses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouses
    ADD CONSTRAINT warehouses_pkey PRIMARY KEY (warehouse_id);


--
-- TOC entry 5084 (class 2606 OID 24968)
-- Name: wishlist wishlist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_pkey PRIMARY KEY (wishlist_id);


--
-- TOC entry 5086 (class 2606 OID 24970)
-- Name: wishlist wishlist_user_id_product_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_user_id_product_id_key UNIQUE (user_id, product_id);


--
-- TOC entry 5062 (class 1259 OID 25003)
-- Name: idx_cart_items_cart; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cart_items_cart ON public.cart_items USING btree (cart_id);


--
-- TOC entry 5067 (class 1259 OID 25002)
-- Name: idx_orders_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_orders_user ON public.orders USING btree (user_id);


--
-- TOC entry 5039 (class 1259 OID 25001)
-- Name: idx_products_brand; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_products_brand ON public.products USING btree (brand_id);


--
-- TOC entry 5040 (class 1259 OID 25000)
-- Name: idx_products_category; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_products_category ON public.products USING btree (category_id);


--
-- TOC entry 5041 (class 1259 OID 24999)
-- Name: idx_products_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_products_name ON public.products USING btree (product_name);


--
-- TOC entry 5078 (class 1259 OID 25004)
-- Name: idx_reviews_product; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_reviews_product ON public.reviews USING btree (product_id);


--
-- TOC entry 5094 (class 2606 OID 24625)
-- Name: addresses addresses_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.cities(city_id);


--
-- TOC entry 5105 (class 2606 OID 24826)
-- Name: cart_items cart_items_cart_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_cart_id_fkey FOREIGN KEY (cart_id) REFERENCES public.shopping_cart(cart_id) ON DELETE CASCADE;


--
-- TOC entry 5106 (class 2606 OID 24831)
-- Name: cart_items cart_items_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- TOC entry 5093 (class 2606 OID 24607)
-- Name: cities cities_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(country_id);


--
-- TOC entry 5119 (class 2606 OID 25074)
-- Name: post fka3biitl48c71riii9uyelpdhb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT fka3biitl48c71riii9uyelpdhb FOREIGN KEY (user_id) REFERENCES public.user_details(id);


--
-- TOC entry 5120 (class 2606 OID 25080)
-- Name: post fkc1v0lj2ha44ctku5iqeyqklml; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT fkc1v0lj2ha44ctku5iqeyqklml FOREIGN KEY (user_user_id) REFERENCES public.users(user_id);


--
-- TOC entry 5110 (class 2606 OID 24894)
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id) ON DELETE CASCADE;


--
-- TOC entry 5111 (class 2606 OID 24899)
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- TOC entry 5118 (class 2606 OID 24994)
-- Name: order_status_history order_status_history_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_status_history
    ADD CONSTRAINT order_status_history_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id) ON DELETE CASCADE;


--
-- TOC entry 5107 (class 2606 OID 24873)
-- Name: orders orders_coupon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_coupon_id_fkey FOREIGN KEY (coupon_id) REFERENCES public.coupons(coupon_id);


--
-- TOC entry 5108 (class 2606 OID 24868)
-- Name: orders orders_shipping_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_shipping_address_id_fkey FOREIGN KEY (shipping_address_id) REFERENCES public.addresses(address_id);


--
-- TOC entry 5109 (class 2606 OID 24863)
-- Name: orders orders_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 5112 (class 2606 OID 24922)
-- Name: payments payments_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id) ON DELETE CASCADE;


--
-- TOC entry 5113 (class 2606 OID 24927)
-- Name: payments payments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 5100 (class 2606 OID 24749)
-- Name: product_images product_images_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id) ON DELETE CASCADE;


--
-- TOC entry 5102 (class 2606 OID 24784)
-- Name: product_inventory product_inventory_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_inventory
    ADD CONSTRAINT product_inventory_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id) ON DELETE CASCADE;


--
-- TOC entry 5103 (class 2606 OID 24789)
-- Name: product_inventory product_inventory_warehouse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_inventory
    ADD CONSTRAINT product_inventory_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.warehouses(warehouse_id);


--
-- TOC entry 5098 (class 2606 OID 24726)
-- Name: products products_brand_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brands(brand_id);


--
-- TOC entry 5099 (class 2606 OID 24731)
-- Name: products products_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(category_id);


--
-- TOC entry 5114 (class 2606 OID 24948)
-- Name: reviews reviews_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id) ON DELETE CASCADE;


--
-- TOC entry 5115 (class 2606 OID 24953)
-- Name: reviews reviews_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- TOC entry 5104 (class 2606 OID 24807)
-- Name: shopping_cart shopping_cart_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart
    ADD CONSTRAINT shopping_cart_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- TOC entry 5096 (class 2606 OID 24676)
-- Name: user_roles user_roles_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(role_id) ON DELETE CASCADE;


--
-- TOC entry 5097 (class 2606 OID 24671)
-- Name: user_roles user_roles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- TOC entry 5095 (class 2606 OID 24659)
-- Name: users users_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.addresses(address_id);


--
-- TOC entry 5101 (class 2606 OID 24763)
-- Name: warehouses warehouses_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouses
    ADD CONSTRAINT warehouses_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.addresses(address_id);


--
-- TOC entry 5116 (class 2606 OID 24976)
-- Name: wishlist wishlist_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id) ON DELETE CASCADE;


--
-- TOC entry 5117 (class 2606 OID 24971)
-- Name: wishlist wishlist_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


-- Completed on 2026-07-10 22:00:24

--
-- PostgreSQL database dump complete
--

\unrestrict G10271RyiBeHBId2JOXU5aTH2dXpMHRGlG5NcGhGHnB5mhYzMidZ8yL9KEHjJ9T

