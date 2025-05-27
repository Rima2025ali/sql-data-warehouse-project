/*
-----------------------------------------------
Create database and Schemas
-----------------------------------------------
The following script is used to initialize the Data Warehouse environment by creating a new database named DatabaseWarehouse and three schemas to represent the layered architecture: bronz, sliver, and gold.

These layers follow the Bronze–Silver–Gold architecture pattern commonly used in data engineering:

Bronz: Raw data layer
Sliver: Cleaned and transformed data
Gold: Curated business-level data and models
🔒 Warning
⚠️ This script connects to the master database and will create a new database. If you modify this script to include a DROP DATABASE command or rerun it carelessly, you risk deleting an existing database. Always double-check the database name before executing.
Make sure you are not overwriting or affecting a production environment.
*/
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'DatabaseWarehouse'
)
CREATE DATABASE DatabaseWarehouse
GO
Create SCHEMA bronz
GO
Create SCHEMA sliver
GO
create schema gold
Go
