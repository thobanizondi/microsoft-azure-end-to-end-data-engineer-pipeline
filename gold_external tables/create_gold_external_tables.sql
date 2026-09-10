/* ============================================================
   GOLD LAYER
   EXTERNAL DATA SOURCES, FILE FORMAT & EXTERNAL TABLES
   ============================================================ */


/* ============================================================
   DATABASE SCOPED CREDENTIAL
   ============================================================ */

CREATE DATABASE SCOPED CREDENTIAL cred_zondi
WITH
    IDENTITY = 'Managed Identity';


/* ============================================================
   SILVER LAYER EXTERNAL DATA SOURCE
   ============================================================ */

CREATE EXTERNAL DATA SOURCE source_silver_layer
WITH
(
    LOCATION = 'https://awstoragedatalakethobani.blob.core.windows.net/silver',
    CREDENTIAL = cred_zondi
);


/* ============================================================
   GOLD LAYER EXTERNAL DATA SOURCE
   ============================================================ */

CREATE EXTERNAL DATA SOURCE source_gold_layer
WITH
(
    LOCATION = 'https://awstoragedatalakethobani.blob.core.windows.net/gold',
    CREDENTIAL = cred_zondi
);


/* ============================================================
   4. EXTERNAL FILE FORMAT
   ============================================================ */

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);


/* ============================================================
   EXTERNAL TABLE: SALES
   ============================================================ */

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT
    *
FROM gold.sales;


/* ============================================================
   EXTERNAL TABLE: CALENDAR
   ============================================================ */

CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT
    *
FROM gold.calendar;


/* ============================================================
   EXTERNAL TABLE: CUSTOMERS
   ============================================================ */

CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT
    *
FROM gold.customers;


/* ============================================================
   EXTERNAL TABLE: PRODUCTS
   ============================================================ */

CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT
    *
FROM gold.products;


/* ============================================================
   EXTERNAL TABLE: PRODUCT CATEGORIES
   ============================================================ */

CREATE EXTERNAL TABLE gold.extproduct_categories
WITH
(
    LOCATION = 'gold.extproduct_categories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT
    *
FROM gold.extproduct_categories;


/* ============================================================
   EXTERNAL TABLE: PRODUCT SUBCATEGORIES
   ============================================================ */

CREATE EXTERNAL TABLE gold.extproduct_subcategories
WITH
(
    LOCATION = 'gold.extproduct_subcategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT
    *
FROM gold.extproduct_subcategories;


/* ============================================================
   EXTERNAL TABLE: RETURNS
   ============================================================ */

CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT
    *
FROM gold.returns;


/* ============================================================
   EXTERNAL TABLE: TERRITORIES
   ============================================================ */

CREATE EXTERNAL TABLE gold.extterritories
WITH
(
    LOCATION = 'extterritories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT
    *
FROM gold.territories;