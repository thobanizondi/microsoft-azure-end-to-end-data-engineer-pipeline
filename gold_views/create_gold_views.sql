/* ============================================================
   GOLD LAYER
   VIEWS
   ============================================================ */


/* ============================================================
   CALENDAR VIEW
   ============================================================ */

CREATE VIEW gold.calendar
AS
SELECT
    *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakethobani.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS Query_Calendar;


/* ============================================================
   CUSTOMERS VIEW
   ============================================================ */

CREATE VIEW gold.customers
AS
SELECT
    *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakethobani.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS Query_Customers;


/* ============================================================
   TERRITORIES VIEW
   ============================================================ */

CREATE VIEW gold.territories
AS
SELECT
    *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakethobani.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS Query_Territories;


/* ============================================================
   PRODUCT CATEGORIES VIEW
   ============================================================ */

CREATE VIEW gold.product_categories
AS
SELECT
    *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakethobani.blob.core.windows.net/silver/AdventureWorks_Categories/',
    FORMAT = 'PARQUET'
) AS Query_Categories;


/* ============================================================
   PRODUCT SUBCATEGORIES VIEW
   ============================================================ */

CREATE VIEW gold.product_subcategories
AS
SELECT
    *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakethobani.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
) AS Query_Product_Subcategories;


/* ============================================================
   PRODUCTS VIEW
   ============================================================ */

CREATE VIEW gold.products
AS
SELECT
    *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakethobani.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS Query_Products;


/* ============================================================
   RETURNS VIEW
   ============================================================ */

CREATE VIEW gold.returns
AS
SELECT
    *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakethobani.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS Query_Returns;


/* ============================================================
   SALES VIEW
   ============================================================ */

CREATE VIEW gold.sales
AS
SELECT
    *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakethobani.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS Query_Sales;