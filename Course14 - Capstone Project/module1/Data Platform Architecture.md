---
markdown-version: v1
tool-type: theia
branch: lab-6675-instruction
version-history-start-date: '2023-04-26T21:44:37Z'
locales-url: https://cf-courses-data.static.labs.skills.network/sRHtoKidgvd4ncNwWKUZrw/Data%20Platform%20Architecture-v1-locales.json
---
![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/Readings/data_platform_architecture.png)

::page{title="Environment:"}

This document introduces you to the data platform architecture of an ecommerce company named SoftCart.

SoftCart uses a hybrid architecture, with some of its databases on premises and some on cloud.

## Tools and Technologies:

- OLTP database - MySQL
- NoSql database - MongoDB
- Production Data warehouse – DB2 on Cloud
- Staging Data warehouse – PostgreSQL
- Big data platform - Hadoop
- Big data analytics platform – Spark
- Business Intelligence Dashboard - IBM Cognos Analytics
- Data Pipelines -  Apache Airflow

## Process:

SoftCart\'s online presence is primarily through its website, which customers access using a variety of devices like laptops, mobiles and tablets.

All the catalog data of the products is stored in the MongoDB NoSQL server.

All the transactional data like inventory and sales are stored in the MySQL database server.

SoftCart\'s webserver is driven entirely by these two databases.

Data is periodically extracted from these two databases and put into the staging data warehouse running on PostgreSQL.

The production data warehouse is on the cloud instance of IBM DB2 server.

BI teams connect to the IBM DB2 for operational dashboard creation. IBM Cognos Analytics is used to create dashboards.

SoftCart uses Hadoop cluster as its big data platform where all the data is collected for analytics purposes.

Spark is used to analyse the data on the Hadoop cluster.

To move data between OLTP, NoSQL and the data warehouse, ETL pipelines are used and these run on Apache Airflow.

