# Microsoft Azure End-to-End Data Engineering Pipeline

## Overview
This project is an end-to-end data engineering pipeline built entirely on **Microsoft Azure**, following the **Medallion Architecture** (Bronze, Silver, Gold) using the **AdventureWorks** sales dataset. It demonstrates a complete cloud data flow, from raw ingestion through to analytics-ready reporting, using Azure's native data engineering and analytics services.

The pipeline ingests raw sales data with **Azure Data Factory**, lands it in **Azure Data Lake Storage Gen2** (Bronze), transforms and cleans it using **Azure Databricks (PySpark)** (Silver), and models it into analytics-ready datasets in **Azure Synapse Analytics** (Gold), with final reporting delivered through **Power BI**.

## Table of Contents
- [Overview](#overview)
- [Architecture](#architecture)
  - [Bronze Layer - Raw Ingestion](#bronze-layer---raw-ingestion)
  - [Silver Layer - Transformation](#silver-layer---transformation)
  - [Gold Layer - Analytics-Ready Modelling](#gold-layer---analytics-ready-modelling)
  - [Reporting](#reporting)
- [Technologies Used](#technologies-used)
- [Key Features](#key-features)
- [Data Source](#data-source)
- [Installation & Setup](#installation--setup)
  - [Prerequisites](#prerequisites)
  - [Steps to Reproduce](#steps-to-reproduce)
- [Future Enhancements](#future-enhancements)
- [Contributors](#contributors)

## Architecture

```
AdventureWorks Dataset (GitHub, retrieved via HTTPS)
        |
        v
Azure Data Factory  ----------->  Azure Data Lake Storage Gen2 (Bronze)
        (Ingestion)                     Raw, unprocessed data
                                            |
                                            v
                              Azure Databricks + PySpark (Silver)
                              Cleansed, validated, transformed data
                                            |
                                            v
                              Azure Synapse Analytics (Gold)
                              Analytics-ready, modelled data
                                            |
                                            v
                                       Power BI
                                  Reporting & Dashboards
```

### Bronze Layer - Raw Ingestion
- Azure Data Factory pipelines retrieve the AdventureWorks sales dataset over HTTPS from GitHub and ingest it into Azure Data Lake Storage Gen2.
- Data is landed in its raw, unmodified form to preserve a single source of truth.

### Silver Layer - Transformation
- Azure Databricks notebooks (PySpark) read the raw Bronze data.
- Data cleaning, validation, deduplication, and schema standardization are applied.
- Cleaned datasets are written back to Data Lake Gen2 in a structured, query-friendly format.

### Gold Layer - Analytics-Ready Modelling
- Azure Synapse Analytics models the Silver data into curated, analytics-ready tables.
- Supports business-focused querying and reporting (e.g. sales performance, product, customer, and regional analysis).

### Reporting
- Power BI connects to the Gold layer for interactive dashboards and business reporting.

## Technologies Used
- **Ingestion:** Azure Data Factory
- **Storage:** Azure Data Lake Storage Gen2
- **Transformation:** Azure Databricks, PySpark
- **Analytics & Modelling:** Azure Synapse Analytics
- **Reporting & Visualization:** Power BI
- **Dataset:** AdventureWorks Sales dataset (retrieved via HTTPS from GitHub)

## Key Features
- **Medallion Architecture** implementation (Bronze to Silver to Gold) for clear separation of raw, cleansed, and curated data.
- **Scalable ingestion** of sales data using Azure Data Factory pipelines, sourced directly over HTTPS from GitHub.
- **Distributed transformation** using Azure Databricks and PySpark for efficient large-scale data processing.
- **Analytics-ready modelling** in Azure Synapse Analytics for fast, reliable querying.
- **End-to-end cloud-native workflow**, entirely built on Microsoft Azure services.
- **Business intelligence reporting** through Power BI, connected directly to curated Gold-layer data.

## Data Source
- AdventureWorks Sales dataset, retrieved via HTTPS directly from GitHub (a widely used sample dataset for data engineering and analytics projects, representing a fictional bicycle manufacturer's sales, products, and customer data).

## Installation & Setup

### Prerequisites
- An active Azure subscription
- Azure Data Factory instance
- Azure Data Lake Storage Gen2 account
- Azure Databricks workspace
- Azure Synapse Analytics workspace
- Power BI Desktop (for report development)

### Steps to Reproduce
1. Clone the repository:
   ```sh
   git clone https://github.com/thobanizondi/microsoft-azure-end-to-end-data-engineer-pipeline.git
   cd microsoft-azure-end-to-end-data-engineer-pipeline
   ```
2. Provision the required Azure resources (Data Factory, Data Lake Gen2, Databricks, Synapse Analytics).
3. In Azure Data Factory, configure an HTTP-based source pointing to the AdventureWorks dataset's raw GitHub URL, and set the sink to the Bronze container in Data Lake Storage Gen2.
4. Run the Azure Data Factory pipeline(s) to ingest the raw data into the Bronze layer.
5. Run the Databricks notebooks to transform Bronze data into the Silver layer.
6. Use Azure Synapse Analytics to model the Silver data into the Gold layer.
7. Connect Power BI to the Synapse Gold layer to build and view reports.

## Future Enhancements
- Automate pipeline orchestration and scheduling with Azure Data Factory triggers.
- Add data quality checks and validation at each layer (Bronze, Silver, Gold).
- Implement CI/CD for Databricks notebooks and Synapse artifacts via Azure DevOps.
- Add incremental/delta loading instead of full loads.
- Introduce monitoring and alerting for pipeline failures.

## Contributors
Developed by **Thobani Antony Zondi**
Contact: thobanizondi69@gmail.com
LinkedIn: [linkedin.com/in/thobani-zondi](https://linkedin.com/in/thobani-zondi)
