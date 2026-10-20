--
-- PostgreSQL database dump
--

\restrict 7scEUFwKatOQASmOZf15x4Xd6ZBd4V4LIdOyGtldUpIndvKjHes6K4nfdYBV9gb

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-10-20 13:01:19

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
-- TOC entry 6 (class 2615 OID 16393)
-- Name: staging; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA staging;


ALTER SCHEMA staging OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16394)
-- Name: dim_production; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.dim_production (
    product_id character varying(10) NOT NULL,
    product_name character varying(100) NOT NULL,
    category character varying(50) NOT NULL,
    subcategory character varying(50)
);


ALTER TABLE staging.dim_production OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16402)
-- Name: dim_production_new; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.dim_production_new (
    product_id character varying(10),
    product_name character varying(100),
    category character varying(50),
    subcategory character varying(50)
);


ALTER TABLE staging.dim_production_new OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16411)
-- Name: productos_ferreteria_clean; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.productos_ferreteria_clean (
    id_producto character varying(10),
    nombre_producto character varying(100),
    categoria text,
    unidad_medida text,
    precio_unitario numeric(18,2),
    proveedor character varying(50)
);


ALTER TABLE staging.productos_ferreteria_clean OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16405)
-- Name: productos_ferreteria_raw; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.productos_ferreteria_raw (
    id_producto character varying(10) NOT NULL,
    nombre_producto character varying(100),
    categoria character varying(50),
    unidad_medida character varying(20),
    precio_unitario character varying(20),
    proveedor character varying(50)
);


ALTER TABLE staging.productos_ferreteria_raw OWNER TO postgres;

--
-- TOC entry 5019 (class 0 OID 16394)
-- Dependencies: 220
-- Data for Name: dim_production; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.dim_production (product_id, product_name, category, subcategory) FROM stdin;
P001	Notebook Classic	Office Supplies	Notebooks
P002	Ballpoint Pen	Office Supplies	Writing
P003	LED Monitor 24"	Technology	Monitors
P004	Wireless Mouse	Technology	Accessories
P005	Water Bottle 1L	Fitness	Hydration
P006	Yoga Mat	Fitness	Mats
P007	Desk Chair	Furniture	Chairs
P008	Standing Desk	Furniture	Desks
P009	Smartphone Stand	Technology	Accessories
P010	Highlighter Set	Office Supplies	Writing
\.


--
-- TOC entry 5020 (class 0 OID 16402)
-- Dependencies: 221
-- Data for Name: dim_production_new; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.dim_production_new (product_id, product_name, category, subcategory) FROM stdin;
P001	Notebook Classic	Office Supplies	Notebooks
P002	Ballpoint Pen	Office Supplies	Writing
P003	LED Monitor 25"	Technology	Monitors
P004	Wireless Mouse	Technology	Accessories
P005	Water Bottle 1L	Fitness	Hydration
P006	Yoga Mat	Fitness	Mats
P007	Desk Chair	Furniture	Chairs
P008	Standing Desk	Furniture	Desks
P009	Smartphone Stand	Technology	Accessories
P010	Highlighter Set	Office Supplies	Writing
\.


--
-- TOC entry 5022 (class 0 OID 16411)
-- Dependencies: 223
-- Data for Name: productos_ferreteria_clean; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.productos_ferreteria_clean (id_producto, nombre_producto, categoria, unidad_medida, precio_unitario, proveedor) FROM stdin;
F001	Martillo de uña	Herramientas	1 und	8.50	AceroMax
F002	Destornillador plano	Herramientas	1 und	3.25	MetalTools
F003	Destornillador estrella	Herramientas	1 und	3.50	MetalTools
F004	Broca para concreto 8mm	Herramientas	1 und	2.10	DrillPro
F005	Taladro eléctrico 600W	Herramientas	1 und	45.00	ElectroFix
F006	Llave inglesa 10”	Herramientas	1 und	9.80	AceroMax
F007	Llave inglesa 8”	Herramientas	1 und	8.50	AceroMax
F008	Serrucho madera	Herramientas	1 und	6.00	CorteFino
F009	Sierra circular 7”	Herramientas	1 und	55.00	PowerCut
F010	Pintura blanca 1Lt	Pinturas	1 L	5.00	Colorin
F011	Pintura azul 1Lt	Pinturas	1 L	5.10	Colorin
F012	Pintura negra 4 litros	Pinturas	4 L	18.50	Colorin
F013	Pintura roja 1lt	Pinturas	1 L	5.00	Colorin
F014	Rodillo 9”	Pinturas	1 und	2.75	PintaPro
F015	Brocha 2”	Pinturas	1 und	1.50	PintaPro
F016	Brocha 3”	Pinturas	1 und	2.00	PintaPro
F017	Bandeja de pintura	Pinturas	1 und	2.80	PintaPro
F018	Cinta masking 18mm	Pinturas	1 rollo	1.20	FixAll
F019	Cinta masking 24mm	Pinturas	1 rollo	1.30	FixAll
F020	Clavos 2” caja 100u	Ferretería	1 caja	2.75	FixAll
F021	Clavos 3” caja 100u	Ferretería	1 caja	3.00	FixAll
F022	Clavos 1½” caja 100u	Ferretería	1 caja	2.60	FixAll
F023	Tornillos 3/4 pulg.	Ferretería	1 caja	4.20	FixAll
F024	Tornillos 1 pulg.	Ferretería	1 caja	4.50	FixAll
F025	Tornillos 2 pulg.	Ferretería	1 caja	4.75	FixAll
F026	Tornillos autorroscantes	Ferretería	1 caja	5.10	FixAll
F027	Tuercas 1/2 pulg.	Ferretería	1 caja	3.80	FixAll
F028	Arandelas metálicas	Ferretería	1 caja	3.60	FixAll
F029	Pernos 3/8 pulg.	Ferretería	1 caja	3.90	FixAll
F030	Pernos 1/2 pulg.	Ferretería	1 caja	4.10	FixAll
F031	Pegamento de contacto	Adhesivos	1 tubo	2.50	Construmax
F032	Silicón transparente	Selladores	1 tubo	4.80	Construmax
F033	Silicón blanco	Selladores	1 tubo	4.70	Construmax
F034	Espuma expansiva 750ml	Selladores	1 und	7.50	Construmax
F035	Cemento de contacto 1L	Adhesivos	1 L	3.20	Construmax
F036	Pega PVC 120ml	Adhesivos	1 frasco	1.80	PlastiCo
F037	Teflón 1/2”	Fontanería	1 rollo	1.00	PlastiCo
F038	Cinta teflón 3/4”	Fontanería	1 rollo	1.20	PlastiCo
F039	Llave de paso 1/2”	Fontanería	1 und	2.75	HidroMax
F040	Codo PVC 90° 1/2”	Fontanería	1 und	0.85	HidroMax
F041	Codo PVC 45° 1/2”	Fontanería	1 und	0.90	HidroMax
F042	Tubo PVC 3m 1/2”	Fontanería	1 und	3.50	HidroMax
F043	Tubo PVC 3m 3/4”	Fontanería	1 und	4.00	HidroMax
F044	Cinta selladora roscas	Fontanería	1 rollo	1.10	PlastiCo
F045	Teflón industrial	Fontanería	1 rollo	2.50	PlastiCo
F046	Guantes de trabajo	Seguridad	1 par	2.50	SafePro
F047	Gafas protectoras	Seguridad	1 und	3.80	SafePro
F048	Casco amarillo	Seguridad	1 und	9.00	SafePro
F049	Casco blanco	Seguridad	1 und	9.00	SafePro
F050	Botas industriales	Seguridad	1 par	25.00	SafePro
F051	Chaleco reflectivo	Seguridad	1 und	8.00	SafePro
F052	Cinta aislante negra	Electricidad	1 rollo	1.50	ElectroFix
F053	Cinta aislante roja	Electricidad	1 rollo	1.50	ElectroFix
F054	Enchufe doble	Electricidad	1 und	3.50	ElectroFix
F055	Tomacorriente simple	Electricidad	1 und	2.00	ElectroFix
F056	Interruptor sencillo	Electricidad	1 und	1.80	ElectroFix
F057	Interruptor doble	Electricidad	1 und	2.20	ElectroFix
F058	Cable #12 negro	Electricidad	1 m	1.00	ElectroFix
F059	Cable #14 blanco	Electricidad	1 m	0.80	ElectroFix
F060	Cable #10 rojo	Electricidad	1 m	1.20	ElectroFix
F061	Cinta de señalización amarilla	Seguridad	1 rollo	2.00	SafePro
F062	Llave combinada 12mm	Herramientas	1 und	4.50	AceroMax
F063	Llave combinada 14mm	Herramientas	1 und	4.80	AceroMax
F064	Llave combinada 17mm	Herramientas	1 und	5.00	AceroMax
F065	Alicate universal 8”	Herramientas	1 und	6.50	MetalTools
F066	Alicate corte diagonal	Herramientas	1 und	6.80	MetalTools
F067	Juego de llaves Allen	Herramientas	1 set	7.50	AceroMax
F068	Juego de destornilladores	Herramientas	1 set	9.00	MetalTools
F069	Juego de llaves combinadas	Herramientas	1 set	12.00	AceroMax
F070	Llave ajustable 12”	Herramientas	1 und	11.00	AceroMax
F071	Lija grano 120	Pinturas	1 hoja	0.50	PintaPro
F072	Lija grano 220	Pinturas	1 hoja	0.55	PintaPro
F073	Lija grano 80	Pinturas	1 hoja	0.45	PintaPro
F074	Cinta de enmascarar 2”	Pinturas	1 rollo	1.20	PintaPro
F075	Cinta de enmascarar 1”	Pinturas	1 rollo	1.00	PintaPro
F076	Brocha 1”	Pinturas	1 und	1.20	PintaPro
F077	Sellador acrílico	Selladores	1 tubo	4.50	Construmax
F078	Pega instantánea	Adhesivos	1 frasco	2.00	Construmax
F079	Espátula metálica 3”	Herramientas	1 und	2.80	MetalTools
F080	Cinta de teflón profesional	Fontanería	1 rollo	2.10	PlastiCo
F081	Tubo PVC 1”	Fontanería	1 und	5.00	HidroMax
F082	Tubo PVC 2”	Fontanería	1 und	6.00	HidroMax
F083	Pega PVC 240ml	Adhesivos	1 frasco	2.80	PlastiCo
F084	Brocha 4”	Pinturas	1 und	2.50	PintaPro
F085	Brocha 5”	Pinturas	1 und	2.80	PintaPro
F086	Rodillo 4”	Pinturas	1 und	2.50	PintaPro
F087	Rodillo 7”	Pinturas	1 und	2.70	PintaPro
F088	Tubo galvanizado 1”	Ferretería	1 und	10.00	FixAll
F089	Tubo galvanizado 2”	Ferretería	1 und	12.00	FixAll
F090	Cerradura metálica	Ferretería	1 und	7.50	FixAll
F091	Candado acero 40mm	Ferretería	1 und	6.50	FixAll
F092	Candado acero 50mm	Ferretería	1 und	7.00	FixAll
F093	Candado acero 60mm	Ferretería	1 und	8.00	FixAll
F094	Cadena galvanizada metro	Ferretería	1 m	2.50	FixAll
F095	Bisagra 3”	Ferretería	1 par	3.00	FixAll
F096	Bisagra 4”	Ferretería	1 par	3.50	FixAll
F097	Tornillo cabeza hexagonal	Ferretería	1 caja	4.80	FixAll
F098	Tornillo cabeza plana	Ferretería	1 caja	4.60	FixAll
F099	Broca para madera 10mm	Herramientas	1 und	2.40	DrillPro
F100	Martillo carpintero	Herramientas	1 und	9.00	AceroMax
\.


--
-- TOC entry 5021 (class 0 OID 16405)
-- Dependencies: 222
-- Data for Name: productos_ferreteria_raw; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.productos_ferreteria_raw (id_producto, nombre_producto, categoria, unidad_medida, precio_unitario, proveedor) FROM stdin;
F001	Martillo de uña	Herramientas	1 und	$8.50	AceroMax
F002	Destornillador plano	Htas.	1 unidad	$3.25	MetalTools
F003	Destornillador estrella	Herramientas 	1u	$3.50	MetalTools
F004	Broca para concreto 8mm	herramientas	1 und	$2.10	DrillPro
F005	Taladro eléctrico 600W	HERRAMIENTAS	1 und	$45.00	ElectroFix
F006	Llave inglesa 10”	herram.	1 und	$9.80	AceroMax
F007	Llave inglesa 8”	Herramientas	1 Unidad	$8.50	AceroMax
F008	Serrucho madera	Htas	1 und	$6.00	CorteFino
F009	Sierra circular 7”	Herramienta	1 und	$55.00	PowerCut
F010	Pintura blanca 1Lt	Pinturas	1L	$5.00	Colorin
F011	Pintura azul 1Lt	pintura	1 Lt	$5.10	Colorin
F012	Pintura negra 4 litros	PINTURAS	4L	$18.50	Colorin
F013	Pintura roja 1lt	Pint.	1 litro	$5.00	Colorin
F014	Rodillo 9”	Pint	1 und	$2.75	PintaPro
F015	Brocha 2”	pintura	1 unidad	$1.50	PintaPro
F016	Brocha 3”	Pinturas	1 unidad	$2.00	PintaPro
F017	Bandeja de pintura	PINTURA	1 und	$2.80	PintaPro
F018	Cinta masking 18mm	Pint	1 rollo	$1.20	FixAll
F019	Cinta masking 24mm	PINTURAS	1 rl	$1.30	FixAll
F020	Clavos 2” caja 100u	Ferretería	Caja	$2.75	FixAll
F021	Clavos 3” caja 100u	ferreteria	caja	$3.00	FixAll
F022	Clavos 1½” caja 100u	FERRETERIA	CJ	$2.60	FixAll
F023	Tornillos 3/4 pulg.	Ferretería	Caja	$4.20	FixAll
F024	Tornillos 1 pulg.	FERRETERIA	CJ	$4.50	FixAll
F025	Tornillos 2 pulg.	Ferre	CAJA	$4.75	FixAll
F026	Tornillos autorroscantes	ferreteria	Caja	$5.10	FixAll
F027	Tuercas 1/2 pulg.	FERRETERIA	CJ	$3.80	FixAll
F028	Arandelas metálicas	Ferretería	caja	$3.60	FixAll
F029	Pernos 3/8 pulg.	ferre	caja	$3.90	FixAll
F030	Pernos 1/2 pulg.	ferretería	Caja	$4.10	FixAll
F031	Pegamento de contacto	Adhesivos	1 tubo	$2.50	Construmax
F032	Silicón transparente	Selladores	1 tubo	$4.80	Construmax
F033	Silicón blanco	sellador	1 tubo	$4.70	Construmax
F034	Espuma expansiva 750ml	Selladores	1 und	$7.50	Construmax
F035	Cemento de contacto 1L	Adhesivo	1 litro	$3.20	Construmax
F036	Pega PVC 120ml	adhesivos	1 frasco	$1.80	PlastiCo
F037	Teflón 1/2”	fontaneria	1 rollo	$1.00	PlastiCo
F038	Cinta teflón 3/4”	Fontanería	1 rl	$1.20	PlastiCo
F039	Llave de paso 1/2”	FONTANERIA	1 und	$2.75	HidroMax
F040	Codo PVC 90° 1/2”	Fontaneria	1 und	$0.85	HidroMax
F041	Codo PVC 45° 1/2”	Fontanería	1 und	$0.90	HidroMax
F042	Tubo PVC 3m 1/2”	Fontanería	1 und	$3.50	HidroMax
F043	Tubo PVC 3m 3/4”	fontanería	1 und	$4.00	HidroMax
F044	Cinta selladora roscas	Fontaneria	1 rollo	$1.10	PlastiCo
F045	Teflón industrial	FONTANERIA	1 rollo	$2.50	PlastiCo
F046	Guantes de trabajo	Seguridad	1 par	$2.50	SafePro
F047	Gafas protectoras	seguridad	1 und	$3.80	SafePro
F048	Casco amarillo	SEGURIDAD	1 unidad	$9.00	SafePro
F049	Casco blanco	Seguridad	1 und	$9.00	SafePro
F050	Botas industriales	seguridad	1 par	$25.00	SafePro
F051	Chaleco reflectivo	Seguridad	1 und	$8.00	SafePro
F052	Cinta aislante negra	Electricidad	1 rollo	$1.50	ElectroFix
F053	Cinta aislante roja	electricidad	1 rollo	$1.50	ElectroFix
F054	Enchufe doble	ELECTRICIDAD	1 und	$3.50	ElectroFix
F055	Tomacorriente simple	Electric.	1 und	$2.00	ElectroFix
F056	Interruptor sencillo	Electricidad	1 und	$1.80	ElectroFix
F057	Interruptor doble	Electricidad	1 und	$2.20	ElectroFix
F058	Cable #12 negro	electricidad	1 metro	$1.00	ElectroFix
F059	Cable #14 blanco	Electricidad	1 m	$0.80	ElectroFix
F060	Cable #10 rojo	electr.	1 mt	$1.20	ElectroFix
F061	Cinta de señalización amarilla	Seguridad	1 rollo	$2.00	SafePro
F062	Llave combinada 12mm	Herramientas	1 und	$4.50	AceroMax
F063	Llave combinada 14mm	herram.	1 und	$4.80	AceroMax
F064	Llave combinada 17mm	htas.	1 und	$5.00	AceroMax
F065	Alicate universal 8”	Herramientas	1 unidad	$6.50	MetalTools
F066	Alicate corte diagonal	Herramientas	1 und	$6.80	MetalTools
F067	Juego de llaves Allen	herramientas	1 set	$7.50	AceroMax
F068	Juego de destornilladores	htas	1 set	$9.00	MetalTools
F069	Juego de llaves combinadas	Herramienta	1 set	$12.00	AceroMax
F070	Llave ajustable 12”	herram.	1 und	$11.00	AceroMax
F071	Lija grano 120	Pinturas	1 hoja	$0.50	PintaPro
F072	Lija grano 220	pintura	1 hoja	$0.55	PintaPro
F073	Lija grano 80	PINTURA	1 hoja	$0.45	PintaPro
F074	Cinta de enmascarar 2”	Pint.	1 rollo	$1.20	PintaPro
F075	Cinta de enmascarar 1”	Pint	1 rl	$1.00	PintaPro
F076	Brocha 1”	Pinturas	1 und	$1.20	PintaPro
F077	Sellador acrílico	Selladores	1 tubo	$4.50	Construmax
F078	Pega instantánea	adhesivos	1 frasco	$2.00	Construmax
F079	Espátula metálica 3”	Herramientas	1 und	$2.80	MetalTools
F080	Cinta de teflón profesional	fontaneria	1 rollo	$2.10	PlastiCo
F081	Tubo PVC 1”	FONTANERIA	1 und	$5.00	HidroMax
F082	Tubo PVC 2”	Fontaneria	1 und	$6.00	HidroMax
F083	Pega PVC 240ml	Adhesivos	1 frasco	$2.80	PlastiCo
F084	Brocha 4”	Pintura	1 unidad	$2.50	PintaPro
F085	Brocha 5”	PINTURA	1 unidad	$2.80	PintaPro
F086	Rodillo 4”	Pinturas	1 und	$2.50	PintaPro
F087	Rodillo 7”	pint.	1 und	$2.70	PintaPro
F088	Tubo galvanizado 1”	Ferreteria	1 und	$10.00	FixAll
F089	Tubo galvanizado 2”	FERRETERIA	1 und	$12.00	FixAll
F090	Cerradura metálica	Ferretería	1 und	$7.50	FixAll
F091	Candado acero 40mm	Ferreteria	1 und	$6.50	FixAll
F092	Candado acero 50mm	FERRETERÍA	1 und	$7.00	FixAll
F093	Candado acero 60mm	Ferre	1 und	$8.00	FixAll
F094	Cadena galvanizada metro	Ferreteria	1 metro	$2.50	FixAll
F095	Bisagra 3”	Ferretería	1 par	$3.00	FixAll
F096	Bisagra 4”	ferre	1 par	$3.50	FixAll
F097	Tornillo cabeza hexagonal	FERRETERIA	Caja	$4.80	FixAll
F098	Tornillo cabeza plana	Ferre	CAJA	$4.60	FixAll
F099	Broca para madera 10mm	herramientas	1 und	$2.40	DrillPro
F100	Martillo carpintero	Htas	1 und	$9.00	AceroMax
\.


--
-- TOC entry 4869 (class 2606 OID 16401)
-- Name: dim_production dim_production_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.dim_production
    ADD CONSTRAINT dim_production_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4871 (class 2606 OID 16410)
-- Name: productos_ferreteria_raw productos_ferreteria_raw_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.productos_ferreteria_raw
    ADD CONSTRAINT productos_ferreteria_raw_pkey PRIMARY KEY (id_producto);


-- Completed on 2026-10-20 13:01:19

--
-- PostgreSQL database dump complete
--

\unrestrict 7scEUFwKatOQASmOZf15x4Xd6ZBd4V4LIdOyGtldUpIndvKjHes6K4nfdYBV9gb

