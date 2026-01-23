# Databricks notebook source
print("Hello from Terraform")

# COMMAND ----------

# Display some information
print("This notebook was created using Terraform!")
print("Language: Python")

# COMMAND ----------

# Example: Create a simple DataFrame
from pyspark.sql import SparkSession

spark = SparkSession.builder.getOrCreate()
data = [("Alice", 34), ("Bob", 45), ("Charlie", 28)]
df = spark.createDataFrame(data, ["Name", "Age"])
display(df)
