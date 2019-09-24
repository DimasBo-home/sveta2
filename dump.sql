--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO sveta;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO sveta;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO sveta;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO sveta;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO sveta;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO sveta;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: sveta
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


ALTER TABLE public.auth_user OWNER TO sveta;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO sveta;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO sveta;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO sveta;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO sveta;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO sveta;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: cart_cart; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.cart_cart (
    id integer NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    checked_out boolean NOT NULL
);


ALTER TABLE public.cart_cart OWNER TO sveta;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_cart_id_seq OWNER TO sveta;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart_cart.id;


--
-- Name: cart_item; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.cart_item (
    id integer NOT NULL,
    cart_id integer NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(18,2) NOT NULL,
    product_id integer NOT NULL,
    CONSTRAINT cart_item_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.cart_item OWNER TO sveta;

--
-- Name: cart_item_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.cart_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_item_id_seq OWNER TO sveta;

--
-- Name: cart_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.cart_item_id_seq OWNED BY public.cart_item.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: sveta
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


ALTER TABLE public.django_admin_log OWNER TO sveta;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO sveta;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO sveta;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO sveta;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO sveta;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO sveta;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO sveta;

--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.django_summernote_attachment (
    id integer NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO sveta;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_summernote_attachment_id_seq OWNER TO sveta;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: easy_thumbnails_source; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.easy_thumbnails_source OWNER TO sveta;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_source_id_seq OWNER TO sveta;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;


--
-- Name: easy_thumbnails_thumbnail; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.easy_thumbnails_thumbnail OWNER TO sveta;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnail_id_seq OWNER TO sveta;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;


--
-- Name: easy_thumbnails_thumbnaildimensions; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);


ALTER TABLE public.easy_thumbnails_thumbnaildimensions OWNER TO sveta;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnaildimensions_id_seq OWNER TO sveta;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;


--
-- Name: filer_clipboard; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.filer_clipboard OWNER TO sveta;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.filer_clipboard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboard_id_seq OWNER TO sveta;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.filer_clipboard_id_seq OWNED BY public.filer_clipboard.id;


--
-- Name: filer_clipboarditem; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);


ALTER TABLE public.filer_clipboarditem OWNER TO sveta;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.filer_clipboarditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboarditem_id_seq OWNER TO sveta;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.filer_clipboarditem_id_seq OWNED BY public.filer_clipboarditem.id;


--
-- Name: filer_file; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.filer_file (
    id integer NOT NULL,
    file character varying(255),
    _file_size bigint,
    sha1 character varying(40) NOT NULL,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    description text,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    folder_id integer,
    owner_id integer,
    polymorphic_ctype_id integer
);


ALTER TABLE public.filer_file OWNER TO sveta;

--
-- Name: filer_file_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.filer_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_file_id_seq OWNER TO sveta;

--
-- Name: filer_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.filer_file_id_seq OWNED BY public.filer_file.id;


--
-- Name: filer_folder; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.filer_folder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    owner_id integer,
    parent_id integer,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.filer_folder OWNER TO sveta;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.filer_folder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folder_id_seq OWNER TO sveta;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.filer_folder_id_seq OWNED BY public.filer_folder.id;


--
-- Name: filer_folderpermission; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.filer_folderpermission (
    id integer NOT NULL,
    type smallint NOT NULL,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint,
    folder_id integer,
    group_id integer,
    user_id integer
);


ALTER TABLE public.filer_folderpermission OWNER TO sveta;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.filer_folderpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folderpermission_id_seq OWNER TO sveta;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.filer_folderpermission_id_seq OWNED BY public.filer_folderpermission.id;


--
-- Name: filer_image; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.filer_image (
    file_ptr_id integer NOT NULL,
    _height integer,
    _width integer,
    date_taken timestamp with time zone,
    default_alt_text character varying(255),
    default_caption character varying(255),
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL,
    subject_location character varying(64) NOT NULL
);


ALTER TABLE public.filer_image OWNER TO sveta;

--
-- Name: filer_thumbnailoption; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);


ALTER TABLE public.filer_thumbnailoption OWNER TO sveta;

--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.filer_thumbnailoption_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_thumbnailoption_id_seq OWNER TO sveta;

--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.filer_thumbnailoption_id_seq OWNED BY public.filer_thumbnailoption.id;


--
-- Name: svetlyachokshop_category; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.svetlyachokshop_category (
    id integer NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.svetlyachokshop_category OWNER TO sveta;

--
-- Name: svetlyachokshop_category_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.svetlyachokshop_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.svetlyachokshop_category_id_seq OWNER TO sveta;

--
-- Name: svetlyachokshop_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.svetlyachokshop_category_id_seq OWNED BY public.svetlyachokshop_category.id;


--
-- Name: svetlyachokshop_category_translation; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.svetlyachokshop_category_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(50) NOT NULL,
    master_id integer
);


ALTER TABLE public.svetlyachokshop_category_translation OWNER TO sveta;

--
-- Name: svetlyachokshop_category_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.svetlyachokshop_category_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.svetlyachokshop_category_translation_id_seq OWNER TO sveta;

--
-- Name: svetlyachokshop_category_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.svetlyachokshop_category_translation_id_seq OWNED BY public.svetlyachokshop_category_translation.id;


--
-- Name: svetlyachokshop_order; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.svetlyachokshop_order (
    id integer NOT NULL,
    total_price numeric(9,2) NOT NULL,
    second_name character varying(200) NOT NULL,
    first_name character varying(200) NOT NULL,
    last_name character varying(200) NOT NULL,
    phone_number character varying(9) NOT NULL,
    email character varying(254),
    buying_type character varying(40) NOT NULL,
    address character varying(255) NOT NULL,
    status character varying(100) NOT NULL,
    comments text,
    date timestamp with time zone NOT NULL,
    cart_id integer
);


ALTER TABLE public.svetlyachokshop_order OWNER TO sveta;

--
-- Name: svetlyachokshop_order_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.svetlyachokshop_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.svetlyachokshop_order_id_seq OWNER TO sveta;

--
-- Name: svetlyachokshop_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.svetlyachokshop_order_id_seq OWNED BY public.svetlyachokshop_order.id;


--
-- Name: svetlyachokshop_page; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.svetlyachokshop_page (
    id integer NOT NULL,
    is_publish boolean NOT NULL,
    is_menu boolean NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.svetlyachokshop_page OWNER TO sveta;

--
-- Name: svetlyachokshop_page_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.svetlyachokshop_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.svetlyachokshop_page_id_seq OWNER TO sveta;

--
-- Name: svetlyachokshop_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.svetlyachokshop_page_id_seq OWNED BY public.svetlyachokshop_page.id;


--
-- Name: svetlyachokshop_page_translation; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.svetlyachokshop_page_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    meta_description text,
    meta_keywords character varying(255),
    master_id integer
);


ALTER TABLE public.svetlyachokshop_page_translation OWNER TO sveta;

--
-- Name: svetlyachokshop_page_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.svetlyachokshop_page_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.svetlyachokshop_page_translation_id_seq OWNER TO sveta;

--
-- Name: svetlyachokshop_page_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.svetlyachokshop_page_translation_id_seq OWNED BY public.svetlyachokshop_page_translation.id;


--
-- Name: svetlyachokshop_product; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.svetlyachokshop_product (
    id integer NOT NULL,
    is_publish boolean NOT NULL,
    price numeric(9,2) NOT NULL,
    count integer NOT NULL,
    slug character varying(50) NOT NULL,
    status character varying(20) NOT NULL,
    date timestamp with time zone NOT NULL,
    album_cover_id integer NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT svetlyachokshop_product_count_check CHECK ((count >= 0))
);


ALTER TABLE public.svetlyachokshop_product OWNER TO sveta;

--
-- Name: svetlyachokshop_product_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.svetlyachokshop_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.svetlyachokshop_product_id_seq OWNER TO sveta;

--
-- Name: svetlyachokshop_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.svetlyachokshop_product_id_seq OWNED BY public.svetlyachokshop_product.id;


--
-- Name: svetlyachokshop_product_translation; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.svetlyachokshop_product_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    title character varying(50) NOT NULL,
    description text NOT NULL,
    meta_description text,
    meta_keywords character varying(255),
    master_id integer
);


ALTER TABLE public.svetlyachokshop_product_translation OWNER TO sveta;

--
-- Name: svetlyachokshop_product_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.svetlyachokshop_product_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.svetlyachokshop_product_translation_id_seq OWNER TO sveta;

--
-- Name: svetlyachokshop_product_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.svetlyachokshop_product_translation_id_seq OWNED BY public.svetlyachokshop_product_translation.id;


--
-- Name: svetlyachokshop_productimage; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.svetlyachokshop_productimage (
    id integer NOT NULL,
    image_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.svetlyachokshop_productimage OWNER TO sveta;

--
-- Name: svetlyachokshop_productimage_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.svetlyachokshop_productimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.svetlyachokshop_productimage_id_seq OWNER TO sveta;

--
-- Name: svetlyachokshop_productimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.svetlyachokshop_productimage_id_seq OWNED BY public.svetlyachokshop_productimage.id;


--
-- Name: svetlyachokshop_question; Type: TABLE; Schema: public; Owner: sveta
--

CREATE TABLE public.svetlyachokshop_question (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    question text NOT NULL,
    date timestamp with time zone NOT NULL
);


ALTER TABLE public.svetlyachokshop_question OWNER TO sveta;

--
-- Name: svetlyachokshop_question_id_seq; Type: SEQUENCE; Schema: public; Owner: sveta
--

CREATE SEQUENCE public.svetlyachokshop_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.svetlyachokshop_question_id_seq OWNER TO sveta;

--
-- Name: svetlyachokshop_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sveta
--

ALTER SEQUENCE public.svetlyachokshop_question_id_seq OWNED BY public.svetlyachokshop_question.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: cart_cart id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.cart_cart ALTER COLUMN id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);


--
-- Name: cart_item id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.cart_item ALTER COLUMN id SET DEFAULT nextval('public.cart_item_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Name: easy_thumbnails_source id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnail id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnaildimensions id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);


--
-- Name: filer_clipboard id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_clipboard ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboard_id_seq'::regclass);


--
-- Name: filer_clipboarditem id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboarditem_id_seq'::regclass);


--
-- Name: filer_file id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_file ALTER COLUMN id SET DEFAULT nextval('public.filer_file_id_seq'::regclass);


--
-- Name: filer_folder id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_folder ALTER COLUMN id SET DEFAULT nextval('public.filer_folder_id_seq'::regclass);


--
-- Name: filer_folderpermission id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('public.filer_folderpermission_id_seq'::regclass);


--
-- Name: filer_thumbnailoption id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('public.filer_thumbnailoption_id_seq'::regclass);


--
-- Name: svetlyachokshop_category id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_category ALTER COLUMN id SET DEFAULT nextval('public.svetlyachokshop_category_id_seq'::regclass);


--
-- Name: svetlyachokshop_category_translation id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_category_translation ALTER COLUMN id SET DEFAULT nextval('public.svetlyachokshop_category_translation_id_seq'::regclass);


--
-- Name: svetlyachokshop_order id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_order ALTER COLUMN id SET DEFAULT nextval('public.svetlyachokshop_order_id_seq'::regclass);


--
-- Name: svetlyachokshop_page id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_page ALTER COLUMN id SET DEFAULT nextval('public.svetlyachokshop_page_id_seq'::regclass);


--
-- Name: svetlyachokshop_page_translation id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_page_translation ALTER COLUMN id SET DEFAULT nextval('public.svetlyachokshop_page_translation_id_seq'::regclass);


--
-- Name: svetlyachokshop_product id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_product ALTER COLUMN id SET DEFAULT nextval('public.svetlyachokshop_product_id_seq'::regclass);


--
-- Name: svetlyachokshop_product_translation id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_product_translation ALTER COLUMN id SET DEFAULT nextval('public.svetlyachokshop_product_translation_id_seq'::regclass);


--
-- Name: svetlyachokshop_productimage id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_productimage ALTER COLUMN id SET DEFAULT nextval('public.svetlyachokshop_productimage_id_seq'::regclass);


--
-- Name: svetlyachokshop_question id; Type: DEFAULT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_question ALTER COLUMN id SET DEFAULT nextval('public.svetlyachokshop_question_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: sveta
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
25	Can add source	7	add_source
26	Can change source	7	change_source
27	Can delete source	7	delete_source
28	Can view source	7	view_source
29	Can add thumbnail	8	add_thumbnail
30	Can change thumbnail	8	change_thumbnail
31	Can delete thumbnail	8	delete_thumbnail
32	Can view thumbnail	8	view_thumbnail
33	Can add thumbnail dimensions	9	add_thumbnaildimensions
34	Can change thumbnail dimensions	9	change_thumbnaildimensions
35	Can delete thumbnail dimensions	9	delete_thumbnaildimensions
36	Can view thumbnail dimensions	9	view_thumbnaildimensions
37	Can add clipboard	10	add_clipboard
38	Can change clipboard	10	change_clipboard
39	Can delete clipboard	10	delete_clipboard
40	Can view clipboard	10	view_clipboard
41	Can add clipboard item	11	add_clipboarditem
42	Can change clipboard item	11	change_clipboarditem
43	Can delete clipboard item	11	delete_clipboarditem
44	Can view clipboard item	11	view_clipboarditem
45	Can add file	12	add_file
46	Can change file	12	change_file
47	Can delete file	12	delete_file
48	Can view file	12	view_file
49	Can add Folder	13	add_folder
50	Can change Folder	13	change_folder
51	Can delete Folder	13	delete_folder
52	Can view Folder	13	view_folder
53	Can use directory listing	13	can_use_directory_listing
54	Can add folder permission	14	add_folderpermission
55	Can change folder permission	14	change_folderpermission
56	Can delete folder permission	14	delete_folderpermission
57	Can view folder permission	14	view_folderpermission
58	Can add image	15	add_image
59	Can change image	15	change_image
60	Can delete image	15	delete_image
61	Can view image	15	view_image
62	Can add thumbnail option	16	add_thumbnailoption
63	Can change thumbnail option	16	change_thumbnailoption
64	Can delete thumbnail option	16	delete_thumbnailoption
65	Can view thumbnail option	16	view_thumbnailoption
66	Can add Корзина	17	add_cart
67	Can change Корзина	17	change_cart
68	Can delete Корзина	17	delete_cart
69	Can view Корзина	17	view_cart
70	Can add Одиниця товару	18	add_item
71	Can change Одиниця товару	18	change_item
72	Can delete Одиниця товару	18	delete_item
73	Can view Одиниця товару	18	view_item
74	Can add attachment	19	add_attachment
75	Can change attachment	19	change_attachment
76	Can delete attachment	19	delete_attachment
77	Can view attachment	19	view_attachment
78	Can add Категорію	20	add_category
79	Can change Категорію	20	change_category
80	Can delete Категорію	20	delete_category
81	Can view Категорію	20	view_category
82	Can add Сторінку сайта	21	add_page
83	Can change Сторінку сайта	21	change_page
84	Can delete Сторінку сайта	21	delete_page
85	Can view Сторінку сайта	21	view_page
86	Can add Товар	22	add_product
87	Can change Товар	22	change_product
88	Can delete Товар	22	delete_product
89	Can view Товар	22	view_product
90	Can add Запитання	23	add_question
91	Can change Запитання	23	change_question
92	Can delete Запитання	23	delete_question
93	Can view Запитання	23	view_question
94	Can add фото	24	add_productimage
95	Can change фото	24	change_productimage
96	Can delete фото	24	delete_productimage
97	Can view фото	24	view_productimage
98	Can add Замовлення	28	add_order
99	Can change Замовлення	28	change_order
100	Can delete Замовлення	28	delete_order
101	Can view Замовлення	28	view_order
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$8zcCtoYaVyaC$IojxdK9evPI8oCOKGCNgOxM3CHjl3ymE/EKI7C3CQfI=	2019-09-24 11:17:53.594539+00	t	admin			1@1.com	t	t	2019-09-24 11:17:40.472713+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: cart_cart; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.cart_cart (id, creation_date, checked_out) FROM stdin;
1	2019-09-24 11:16:58.45654+00	f
\.


--
-- Data for Name: cart_item; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.cart_item (id, cart_id, quantity, unit_price, product_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	easy_thumbnails	source
8	easy_thumbnails	thumbnail
9	easy_thumbnails	thumbnaildimensions
10	filer	clipboard
11	filer	clipboarditem
12	filer	file
13	filer	folder
14	filer	folderpermission
15	filer	image
16	filer	thumbnailoption
17	cart	cart
18	cart	item
19	django_summernote	attachment
20	svetlyachokshop	category
21	svetlyachokshop	page
22	svetlyachokshop	product
23	svetlyachokshop	question
24	svetlyachokshop	productimage
25	svetlyachokshop	producttranslation
26	svetlyachokshop	pagetranslation
27	svetlyachokshop	categorytranslation
28	svetlyachokshop	order
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-09-24 11:16:28.37815+00
2	auth	0001_initial	2019-09-24 11:16:28.84618+00
3	admin	0001_initial	2019-09-24 11:16:29.654902+00
4	admin	0002_logentry_remove_auto_add	2019-09-24 11:16:29.804633+00
5	admin	0003_logentry_add_action_flag_choices	2019-09-24 11:16:29.889082+00
6	contenttypes	0002_remove_content_type_name	2019-09-24 11:16:30.05187+00
7	auth	0002_alter_permission_name_max_length	2019-09-24 11:16:30.090578+00
8	auth	0003_alter_user_email_max_length	2019-09-24 11:16:30.163995+00
9	auth	0004_alter_user_username_opts	2019-09-24 11:16:30.23525+00
10	auth	0005_alter_user_last_login_null	2019-09-24 11:16:30.312181+00
11	auth	0006_require_contenttypes_0002	2019-09-24 11:16:30.334323+00
12	auth	0007_alter_validators_add_error_messages	2019-09-24 11:16:30.391999+00
13	auth	0008_alter_user_username_max_length	2019-09-24 11:16:30.489052+00
14	auth	0009_alter_user_last_name_max_length	2019-09-24 11:16:30.541465+00
15	auth	0010_alter_group_name_max_length	2019-09-24 11:16:30.597945+00
16	auth	0011_update_proxy_permissions	2019-09-24 11:16:30.653373+00
17	filer	0001_initial	2019-09-24 11:16:31.528906+00
18	svetlyachokshop	0001_initial	2019-09-24 11:16:33.094326+00
19	svetlyachokshop	0002_order	2019-09-24 11:16:34.079501+00
20	cart	0001_initial	2019-09-24 11:16:34.268984+00
21	cart	0002_remove_item_content_type	2019-09-24 11:16:34.836116+00
22	cart	0003_auto_20190915_0723	2019-09-24 11:16:34.902443+00
23	cart	0004_auto_20190915_0724	2019-09-24 11:16:35.162105+00
24	cart	0005_item2	2019-09-24 11:16:35.306683+00
25	cart	0006_auto_20190915_0746	2019-09-24 11:16:35.501245+00
26	cart	0007_auto_20190915_0752	2019-09-24 11:16:35.678312+00
27	cart	0008_auto_20190924_1116	2019-09-24 11:16:35.955962+00
28	django_summernote	0001_initial	2019-09-24 11:16:36.042177+00
29	django_summernote	0002_update-help_text	2019-09-24 11:16:36.075927+00
30	easy_thumbnails	0001_initial	2019-09-24 11:16:36.333792+00
31	easy_thumbnails	0002_thumbnaildimensions	2019-09-24 11:16:36.853568+00
32	filer	0002_auto_20150606_2003	2019-09-24 11:16:36.974605+00
33	filer	0003_thumbnailoption	2019-09-24 11:16:37.042088+00
34	filer	0004_auto_20160328_1434	2019-09-24 11:16:37.125613+00
35	filer	0005_auto_20160623_1425	2019-09-24 11:16:37.367797+00
36	filer	0006_auto_20160623_1627	2019-09-24 11:16:37.479247+00
37	filer	0007_auto_20161016_1055	2019-09-24 11:16:37.544106+00
38	filer	0008_auto_20171117_1313	2019-09-24 11:16:37.602579+00
39	filer	0009_auto_20171220_1635	2019-09-24 11:16:37.864354+00
40	filer	0010_auto_20180414_2058	2019-09-24 11:16:37.976596+00
41	filer	0011_auto_20190418_0137	2019-09-24 11:16:38.255643+00
42	sessions	0001_initial	2019-09-24 11:16:38.35399+00
43	svetlyachokshop	0003_order_cart	2019-09-24 11:16:38.53223+00
44	svetlyachokshop	0004_auto_20190915_0930	2019-09-24 11:16:38.61907+00
45	svetlyachokshop	0005_auto_20190915_0932	2019-09-24 11:16:38.652182+00
46	svetlyachokshop	0006_auto_20190915_1141	2019-09-24 11:16:38.75727+00
47	svetlyachokshop	0007_auto_20190915_1436	2019-09-24 11:16:38.914594+00
48	svetlyachokshop	0008_auto_20190916_1349	2019-09-24 11:16:39.079168+00
49	svetlyachokshop	0009_auto_20190924_1116	2019-09-24 11:16:39.214963+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
dyvir4pz3q72s9majg5s2btgp44lu9sl	ZDc4NjEyOGYxOTZmMjNmMjAxNmE3OWU2YmU2ZjdmMjAxNWIwNjBhMzp7IkNBUlQtSUQiOjEsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNTRlZDFlOTZiZTEzMDM3ZjhiNjc3ZjRmMDI5MDE4ZDk1MjQzNzcxIn0=	2019-10-08 11:17:53.613517+00
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
\.


--
-- Data for Name: easy_thumbnails_source; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
\.


--
-- Data for Name: easy_thumbnails_thumbnail; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
\.


--
-- Data for Name: easy_thumbnails_thumbnaildimensions; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
\.


--
-- Data for Name: filer_clipboard; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.filer_clipboard (id, user_id) FROM stdin;
\.


--
-- Data for Name: filer_clipboarditem; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
\.


--
-- Data for Name: filer_file; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
\.


--
-- Data for Name: filer_folder; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
\.


--
-- Data for Name: filer_folderpermission; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
\.


--
-- Data for Name: filer_image; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
\.


--
-- Data for Name: filer_thumbnailoption; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
\.


--
-- Data for Name: svetlyachokshop_category; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.svetlyachokshop_category (id, slug) FROM stdin;
\.


--
-- Data for Name: svetlyachokshop_category_translation; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.svetlyachokshop_category_translation (id, language_code, name, master_id) FROM stdin;
\.


--
-- Data for Name: svetlyachokshop_order; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.svetlyachokshop_order (id, total_price, second_name, first_name, last_name, phone_number, email, buying_type, address, status, comments, date, cart_id) FROM stdin;
\.


--
-- Data for Name: svetlyachokshop_page; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.svetlyachokshop_page (id, is_publish, is_menu, slug) FROM stdin;
\.


--
-- Data for Name: svetlyachokshop_page_translation; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.svetlyachokshop_page_translation (id, language_code, title, description, meta_description, meta_keywords, master_id) FROM stdin;
\.


--
-- Data for Name: svetlyachokshop_product; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.svetlyachokshop_product (id, is_publish, price, count, slug, status, date, album_cover_id, category_id) FROM stdin;
\.


--
-- Data for Name: svetlyachokshop_product_translation; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.svetlyachokshop_product_translation (id, language_code, title, description, meta_description, meta_keywords, master_id) FROM stdin;
\.


--
-- Data for Name: svetlyachokshop_productimage; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.svetlyachokshop_productimage (id, image_id, product_id) FROM stdin;
\.


--
-- Data for Name: svetlyachokshop_question; Type: TABLE DATA; Schema: public; Owner: sveta
--

COPY public.svetlyachokshop_question (id, name, email, question, date) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 101, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.cart_cart_id_seq', 1, true);


--
-- Name: cart_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.cart_item_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 28, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 49, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, false);


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 1, false);


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 1, false);


--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);


--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.filer_clipboard_id_seq', 1, false);


--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.filer_clipboarditem_id_seq', 1, false);


--
-- Name: filer_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.filer_file_id_seq', 1, false);


--
-- Name: filer_folder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.filer_folder_id_seq', 1, false);


--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.filer_folderpermission_id_seq', 1, false);


--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.filer_thumbnailoption_id_seq', 1, false);


--
-- Name: svetlyachokshop_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.svetlyachokshop_category_id_seq', 1, false);


--
-- Name: svetlyachokshop_category_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.svetlyachokshop_category_translation_id_seq', 1, false);


--
-- Name: svetlyachokshop_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.svetlyachokshop_order_id_seq', 1, false);


--
-- Name: svetlyachokshop_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.svetlyachokshop_page_id_seq', 1, false);


--
-- Name: svetlyachokshop_page_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.svetlyachokshop_page_translation_id_seq', 1, false);


--
-- Name: svetlyachokshop_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.svetlyachokshop_product_id_seq', 1, false);


--
-- Name: svetlyachokshop_product_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.svetlyachokshop_product_translation_id_seq', 1, false);


--
-- Name: svetlyachokshop_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.svetlyachokshop_productimage_id_seq', 1, false);


--
-- Name: svetlyachokshop_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sveta
--

SELECT pg_catalog.setval('public.svetlyachokshop_question_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cart_cart cart_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_pkey PRIMARY KEY (id);


--
-- Name: cart_item cart_item_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);


--
-- Name: filer_clipboard filer_clipboard_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);


--
-- Name: filer_clipboarditem filer_clipboarditem_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);


--
-- Name: filer_file filer_file_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);


--
-- Name: filer_folder filer_folder_parent_id_name_bc773258_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);


--
-- Name: filer_folder filer_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);


--
-- Name: filer_folderpermission filer_folderpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);


--
-- Name: filer_image filer_image_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);


--
-- Name: filer_thumbnailoption filer_thumbnailoption_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);


--
-- Name: svetlyachokshop_category_translation svetlyachokshop_category_language_code_master_id_ad5b3024_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_category_translation
    ADD CONSTRAINT svetlyachokshop_category_language_code_master_id_ad5b3024_uniq UNIQUE (language_code, master_id);


--
-- Name: svetlyachokshop_category svetlyachokshop_category_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_category
    ADD CONSTRAINT svetlyachokshop_category_pkey PRIMARY KEY (id);


--
-- Name: svetlyachokshop_category svetlyachokshop_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_category
    ADD CONSTRAINT svetlyachokshop_category_slug_key UNIQUE (slug);


--
-- Name: svetlyachokshop_category_translation svetlyachokshop_category_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_category_translation
    ADD CONSTRAINT svetlyachokshop_category_translation_pkey PRIMARY KEY (id);


--
-- Name: svetlyachokshop_order svetlyachokshop_order_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_order
    ADD CONSTRAINT svetlyachokshop_order_pkey PRIMARY KEY (id);


--
-- Name: svetlyachokshop_page svetlyachokshop_page_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_page
    ADD CONSTRAINT svetlyachokshop_page_pkey PRIMARY KEY (id);


--
-- Name: svetlyachokshop_page_translation svetlyachokshop_page_tra_language_code_master_id_fa528ba8_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_page_translation
    ADD CONSTRAINT svetlyachokshop_page_tra_language_code_master_id_fa528ba8_uniq UNIQUE (language_code, master_id);


--
-- Name: svetlyachokshop_page_translation svetlyachokshop_page_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_page_translation
    ADD CONSTRAINT svetlyachokshop_page_translation_pkey PRIMARY KEY (id);


--
-- Name: svetlyachokshop_product_translation svetlyachokshop_product__language_code_master_id_e2cb622e_uniq; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_product_translation
    ADD CONSTRAINT svetlyachokshop_product__language_code_master_id_e2cb622e_uniq UNIQUE (language_code, master_id);


--
-- Name: svetlyachokshop_product svetlyachokshop_product_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_product
    ADD CONSTRAINT svetlyachokshop_product_pkey PRIMARY KEY (id);


--
-- Name: svetlyachokshop_product svetlyachokshop_product_slug_key; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_product
    ADD CONSTRAINT svetlyachokshop_product_slug_key UNIQUE (slug);


--
-- Name: svetlyachokshop_product_translation svetlyachokshop_product_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_product_translation
    ADD CONSTRAINT svetlyachokshop_product_translation_pkey PRIMARY KEY (id);


--
-- Name: svetlyachokshop_productimage svetlyachokshop_productimage_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_productimage
    ADD CONSTRAINT svetlyachokshop_productimage_pkey PRIMARY KEY (id);


--
-- Name: svetlyachokshop_question svetlyachokshop_question_pkey; Type: CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_question
    ADD CONSTRAINT svetlyachokshop_question_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: cart_item_cart_id_157ecf5f; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX cart_item_cart_id_157ecf5f ON public.cart_item USING btree (cart_id);


--
-- Name: cart_item_product_id_17acb13c; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX cart_item_product_id_17acb13c ON public.cart_item USING btree (product_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_name_5fe0edc6; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);


--
-- Name: easy_thumbnails_source_name_5fe0edc6_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_source_id_5b57bc77; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);


--
-- Name: filer_clipboard_user_id_b52ff0bc; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_clipboard_user_id_b52ff0bc ON public.filer_clipboard USING btree (user_id);


--
-- Name: filer_clipboarditem_clipboard_id_7a76518b; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON public.filer_clipboarditem USING btree (clipboard_id);


--
-- Name: filer_clipboarditem_file_id_06196f80; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_clipboarditem_file_id_06196f80 ON public.filer_clipboarditem USING btree (file_id);


--
-- Name: filer_file_folder_id_af803bbb; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_file_folder_id_af803bbb ON public.filer_file USING btree (folder_id);


--
-- Name: filer_file_owner_id_b9e32671; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_file_owner_id_b9e32671 ON public.filer_file USING btree (owner_id);


--
-- Name: filer_file_polymorphic_ctype_id_f44903c1; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON public.filer_file USING btree (polymorphic_ctype_id);


--
-- Name: filer_folder_owner_id_be530fb4; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_folder_owner_id_be530fb4 ON public.filer_folder USING btree (owner_id);


--
-- Name: filer_folder_parent_id_308aecda; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_folder_parent_id_308aecda ON public.filer_folder USING btree (parent_id);


--
-- Name: filer_folder_tree_id_b016223c; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_folder_tree_id_b016223c ON public.filer_folder USING btree (tree_id);


--
-- Name: filer_folder_tree_id_lft_088ce52b_idx; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_folder_tree_id_lft_088ce52b_idx ON public.filer_folder USING btree (tree_id, lft);


--
-- Name: filer_folderpermission_folder_id_5d02f1da; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON public.filer_folderpermission USING btree (folder_id);


--
-- Name: filer_folderpermission_group_id_8901bafa; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_folderpermission_group_id_8901bafa ON public.filer_folderpermission USING btree (group_id);


--
-- Name: filer_folderpermission_user_id_7673d4b6; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON public.filer_folderpermission USING btree (user_id);


--
-- Name: svetlyachokshop_category_language_code_4aa6255a_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_category_language_code_4aa6255a_like ON public.svetlyachokshop_category_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: svetlyachokshop_category_slug_080bf41a_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_category_slug_080bf41a_like ON public.svetlyachokshop_category USING btree (slug varchar_pattern_ops);


--
-- Name: svetlyachokshop_category_translation_language_code_4aa6255a; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_category_translation_language_code_4aa6255a ON public.svetlyachokshop_category_translation USING btree (language_code);


--
-- Name: svetlyachokshop_category_translation_master_id_747b1747; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_category_translation_master_id_747b1747 ON public.svetlyachokshop_category_translation USING btree (master_id);


--
-- Name: svetlyachokshop_order_cart_id_d10e24e5; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_order_cart_id_d10e24e5 ON public.svetlyachokshop_order USING btree (cart_id);


--
-- Name: svetlyachokshop_page_slug_18953634; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_page_slug_18953634 ON public.svetlyachokshop_page USING btree (slug);


--
-- Name: svetlyachokshop_page_slug_18953634_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_page_slug_18953634_like ON public.svetlyachokshop_page USING btree (slug varchar_pattern_ops);


--
-- Name: svetlyachokshop_page_translation_language_code_56e28098; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_page_translation_language_code_56e28098 ON public.svetlyachokshop_page_translation USING btree (language_code);


--
-- Name: svetlyachokshop_page_translation_language_code_56e28098_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_page_translation_language_code_56e28098_like ON public.svetlyachokshop_page_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: svetlyachokshop_page_translation_master_id_c469d24c; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_page_translation_master_id_c469d24c ON public.svetlyachokshop_page_translation USING btree (master_id);


--
-- Name: svetlyachokshop_product_album_cover_id_fba8b6e1; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_product_album_cover_id_fba8b6e1 ON public.svetlyachokshop_product USING btree (album_cover_id);


--
-- Name: svetlyachokshop_product_category_id_009016d8; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_product_category_id_009016d8 ON public.svetlyachokshop_product USING btree (category_id);


--
-- Name: svetlyachokshop_product_slug_1f559d55_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_product_slug_1f559d55_like ON public.svetlyachokshop_product USING btree (slug varchar_pattern_ops);


--
-- Name: svetlyachokshop_product_translation_language_code_0d9b7a58; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_product_translation_language_code_0d9b7a58 ON public.svetlyachokshop_product_translation USING btree (language_code);


--
-- Name: svetlyachokshop_product_translation_language_code_0d9b7a58_like; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_product_translation_language_code_0d9b7a58_like ON public.svetlyachokshop_product_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: svetlyachokshop_product_translation_master_id_7747d603; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_product_translation_master_id_7747d603 ON public.svetlyachokshop_product_translation USING btree (master_id);


--
-- Name: svetlyachokshop_productimage_image_id_61059c47; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_productimage_image_id_61059c47 ON public.svetlyachokshop_productimage USING btree (image_id);


--
-- Name: svetlyachokshop_productimage_product_id_fa142723; Type: INDEX; Schema: public; Owner: sveta
--

CREATE INDEX svetlyachokshop_productimage_product_id_fa142723 ON public.svetlyachokshop_productimage USING btree (product_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_item cart_item_cart_id_157ecf5f_fk_cart_cart_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_cart_id_157ecf5f_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart_cart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_item cart_item_product_id_17acb13c_fk_svetlyachokshop_product_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_product_id_17acb13c_fk_svetlyachokshop_product_id FOREIGN KEY (product_id) REFERENCES public.svetlyachokshop_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES public.filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_owner_id_b9e32671_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: svetlyachokshop_category_translation svetlyachokshop_cate_master_id_747b1747_fk_svetlyach; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_category_translation
    ADD CONSTRAINT svetlyachokshop_cate_master_id_747b1747_fk_svetlyach FOREIGN KEY (master_id) REFERENCES public.svetlyachokshop_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: svetlyachokshop_order svetlyachokshop_order_cart_id_d10e24e5_fk_cart_cart_id; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_order
    ADD CONSTRAINT svetlyachokshop_order_cart_id_d10e24e5_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart_cart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: svetlyachokshop_page_translation svetlyachokshop_page_master_id_c469d24c_fk_svetlyach; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_page_translation
    ADD CONSTRAINT svetlyachokshop_page_master_id_c469d24c_fk_svetlyach FOREIGN KEY (master_id) REFERENCES public.svetlyachokshop_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: svetlyachokshop_product svetlyachokshop_prod_album_cover_id_fba8b6e1_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_product
    ADD CONSTRAINT svetlyachokshop_prod_album_cover_id_fba8b6e1_fk_filer_ima FOREIGN KEY (album_cover_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: svetlyachokshop_product svetlyachokshop_prod_category_id_009016d8_fk_svetlyach; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_product
    ADD CONSTRAINT svetlyachokshop_prod_category_id_009016d8_fk_svetlyach FOREIGN KEY (category_id) REFERENCES public.svetlyachokshop_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: svetlyachokshop_productimage svetlyachokshop_prod_image_id_61059c47_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_productimage
    ADD CONSTRAINT svetlyachokshop_prod_image_id_61059c47_fk_filer_ima FOREIGN KEY (image_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: svetlyachokshop_product_translation svetlyachokshop_prod_master_id_7747d603_fk_svetlyach; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_product_translation
    ADD CONSTRAINT svetlyachokshop_prod_master_id_7747d603_fk_svetlyach FOREIGN KEY (master_id) REFERENCES public.svetlyachokshop_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: svetlyachokshop_productimage svetlyachokshop_prod_product_id_fa142723_fk_svetlyach; Type: FK CONSTRAINT; Schema: public; Owner: sveta
--

ALTER TABLE ONLY public.svetlyachokshop_productimage
    ADD CONSTRAINT svetlyachokshop_prod_product_id_fa142723_fk_svetlyach FOREIGN KEY (product_id) REFERENCES public.svetlyachokshop_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

