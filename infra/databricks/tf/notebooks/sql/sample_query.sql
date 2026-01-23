-- Databricks notebook source
-- Sample SQL Query

SELECT 'Hello from Terraform SQL Notebook' AS message;

-- COMMAND ----------

-- Create a sample table
CREATE OR REPLACE TEMP VIEW sample_data AS
SELECT 'Alice' AS name, 34 AS age
UNION ALL
SELECT 'Bob' AS name, 45 AS age
UNION ALL
SELECT 'Charlie' AS name, 28 AS age;

-- COMMAND ----------

-- Query the sample data
SELECT * FROM sample_data ORDER BY age DESC;
