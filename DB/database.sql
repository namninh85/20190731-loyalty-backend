-- Authentication DB ;
create table oauth_client_details (
  client_id VARCHAR(255) PRIMARY KEY,
  resource_ids VARCHAR(255),
  client_secret VARCHAR(255),
  scope VARCHAR(255),
  authorized_grant_types VARCHAR(255),
  web_server_redirect_uri VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove VARCHAR(255)
);

create table oauth_client_token (
  token_id VARCHAR(255),
  token BYTEA,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255)
);

create table oauth_access_token (
  token_id VARCHAR(255),
  token BYTEA,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255),
  authentication BYTEA,
  refresh_token VARCHAR(255)
);

create table oauth_refresh_token (
  token_id VARCHAR(255),
  token BYTEA,
  authentication BYTEA
);

create table oauth_code (
  code VARCHAR(255), authentication BYTEA
);

create table oauth_approvals (
	userId VARCHAR(255),
	clientId VARCHAR(255),
	scope VARCHAR(255),
	status VARCHAR(10),
	expiresAt TIMESTAMP(0),
	lastModifiedAt TIMESTAMP(0) DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO oauth_client_details(client_id, resource_ids, client_secret, scope, authorized_grant_types, authorities, access_token_validity, refresh_token_validity, autoapprove)
VALUES ('project_client', 'api-resource', '{bcrypt}$2a$10$1LET485G2Dc/vB.5jGKpCuNQBmcLFro3RoKb36v.C5MflNQVJVBkC', 'read,write', 'password,refresh_token', '', '43200', '2592000', 'false');

-- Table: public.role

-- DROP TABLE public.role;

CREATE SEQUENCE public.role_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
  
-- Sequence: public.userdb_id_seq

-- DROP SEQUENCE public.userdb_id_seq;

CREATE SEQUENCE public.userdb_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;


CREATE TABLE role
(
  id bigint NOT NULL DEFAULT nextval('role_id_seq'::regclass),
  role character varying(255),
  CONSTRAINT role_pkey PRIMARY KEY (id)
);


-- Table: public.userdb

-- DROP TABLE public.userdb;

CREATE TABLE userdb
(
  id bigint NOT NULL DEFAULT nextval('userdb_id_seq'::regclass),
  active boolean NOT NULL,
  created timestamp without time zone,
  email character varying(255),
  password character varying(255),
  CONSTRAINT userdb_pkey PRIMARY KEY (id)
);


CREATE TABLE user_role
(
  fk_user bigint NOT NULL,
  fk_role bigint NOT NULL,
  CONSTRAINT fkgbu0pflljt9n66vaqmpdh304n FOREIGN KEY (fk_role)
      REFERENCES public.role (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fky8u1slclhdcguyubfx7aqdv2 FOREIGN KEY (fk_user)
      REFERENCES public.userdb (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Loyalty DB ;

CREATE TABLE product_category(
   product_category_id serial,
   code character varying(255) ,
   description character varying(500) ,
    image character varying(500) ,
	name character varying(255) ,
    parent_id bigint,
    web_link character varying(255) ,
    is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(product_category_id)
);


CREATE TABLE product(
    product_id serial,
    code character varying(255),
    description text,
    has_new boolean,
    image character varying(500),
    name character varying(255),
    web_link character varying(500),
    is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
   	PRIMARY KEY(product_id)
);




CREATE TABLE product_in_pd_category(
   pipc_id serial,
   product_id int,
   product_category_id int,
   PRIMARY KEY(pipc_id)
);

CREATE TABLE price(
   price_id serial,
   product_id int,
   value decimal,
   start_date date,
   end_date  date,
   is_active boolean  DEFAULT 'TRUE',
   is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(price_id)
);

CREATE TABLE store(
   store_id serial,
   address character varying(500) ,
	latitude double precision,
    longitude double precision,
    name character varying(255) ,
    phone character varying(255) ,
    utilities character varying(255) ,
    is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(store_id)
);

CREATE TABLE product_in_store(
   product_in_store_id serial,
   product_id int,
   store_id int,
   stock_amount int,
   is_active boolean  DEFAULT 'TRUE',
   is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(product_in_store_id)
);


CREATE TABLE customer(
   customer_id serial,
   address character varying(500) ,
    avartar_img text ,
    banner_header_img character varying(255) ,
    dob date,
    email character varying(255) ,
    first_name character varying(255) ,
    interested_fields character varying(255) ,
	lang character varying(255) ,
    last_name character varying(255) ,
    phone character varying(255) ,
    qrcode_img character varying(500) ,
    total_offer integer,
    total_point integer,
    total_voucher integer,
   is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(customer_id)
);


CREATE TABLE customer_like_product(
   customer_id int,
   product_id int
);

CREATE TABLE voucher(
   voucher_id serial,
   currency character varying(255) ,
    description character varying(255) ,
    image character varying(255) ,
	name character varying(255) ,
    number_date_use integer,
    value integer,
    is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(voucher_id)
);

CREATE TABLE voucher_code(
   voucher_code_id serial,
   voucher_id int,
   voucher_code varchar(250),
   is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(voucher_code_id)
);

CREATE TABLE loyalty_program(
   loyalty_program_id serial,
   available integer,
    end_date date,
	point integer,
    start_date date,
    total_release integer,
    voucher_id bigint,
    is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(loyalty_program_id)
);

CREATE TABLE customer_rewards_log(
   customer_rewards_log_id serial,
   customer_id bigint NOT NULL,
	loyalty_program_id bigint NOT NULL,
    point_burn_earn integer,
    reward_date date,
    voucher_code_id bigint,
    is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(customer_rewards_log_id)
);

CREATE TABLE customer_has_voucher(
   customer_has_voucher_id serial,
   customer_id bigint,
    expired_date date,
	received_date date,
    voucher_code_id bigint,
    is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(customer_has_voucher_id)
);

CREATE TABLE history_log(
   history_log_id serial,
   date bigint,
   table_name varchar(250),
   content_log text,
   PRIMARY KEY(history_log_id)
);



-- 2019/06/02 : Nin - New Table: special_offer
CREATE TABLE special_offer
(
   special_offer_id serial,
   code character varying(255) ,
    image character varying(255) ,
	name character varying(255) ,
    web_link character varying(255) ,
    is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
   PRIMARY KEY(special_offer_id)

);

--2019/06/06 - Dieu - Create table app-data-config
CREATE TABLE app_data_config(
    app_data_config_id serial,
    banner_header_img character varying(255) ,
    interested_fields character varying(255),
    logo character varying(255) ,
    privacy_link character varying(255) ,
    term_conditions_link character varying(255) ,
    is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
    PRIMARY KEY(app_data_config_id)
);

--2019/06/06 - Dieu - Create table interested_field
CREATE TABLE interested_field (
    interested_field_id serial,
    name VARCHAR(255),
    is_active boolean  DEFAULT 'TRUE',
    is_deleted boolean  DEFAULT 'FALSE',
    PRIMARY KEY (interested_field_id)
);

-- 
CREATE TABLE public.utility
(
    utility_id serial,
    image character varying(255) ,
    is_active boolean,
    is_deleted boolean,
    name character varying(255) ,
    web_link character varying(255) ,
    PRIMARY KEY (utility_id)
);
