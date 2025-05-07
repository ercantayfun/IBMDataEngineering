---
markdown-version: v1
tool-type: theiadocker
branch: lab-2361-instruction
version-history-start-date: '2022-11-16T16:10:08Z'
locales-url: https://cf-courses-data.static.labs.skills.network/JhxVTCYwkMtzIrxVkJqKeA/nosql-v1-locales.json
---
<center>
    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/Images/SN_web_lightmode.png" width="300">
</center>

# Querying data in NoSQL databases

Estimated time needed: **30** minutes.

It is highly recommened that you finish the <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/labs/Final%20Assignment/Setup%20and%20Practice%20Assignment.md.html" target="_blank">Setup and Practice Assignment Lab</a> before you proceed with this Assignment.

::page{title=""}


## About This SN Labs Cloud IDE

This Skills Network Labs Cloud IDE provides a hands-on environment for course and project related labs. It utilizes Theia, an open-source IDE (Integrated Development Environment) platform, that can be run on desktop or on the cloud. To complete this lab, we will be using the Cloud IDE based on Theia and Mongodb running in a Docker container.

## Important Notice about this lab environment

Please be aware that sessions for this lab environment are not persisted. Every time you connect to this lab, a new environment is created for you. Any data you may have saved in the earlier session would get lost. Plan to complete these labs in a single session, to avoid losing your data.

## Scenario

You are a data engineer at an e-commerce company. Your company needs you to design a data platform that uses MongoDB as a NoSQL database. You will be using MongoDB to store the e-commerce catalog data.

::page{title=""}

## Objectives

In this assignment you will:

- import data into a MongoDB database.
- query data in a MongoDB database.
- export data from MongoDB.

## Tools / Software

 - MongoDB Server
 - MongoDB Command Line Backup Tools

## Note - Screenshots

Throughout this lab you will be prompted to take screenshots and save them on your own device. You will need these screenshots to either answer graded quiz questions or to upload as your submission for peer review at the end of this course. You can use various free screengrabbing tools to do this or use your operating system\'s shortcut keys to do this (for example Alt+PrintScreen in Windows).

::page{title=""}

# Exercise 1 - Check the lab environment

Before you proceed with the assignment :

 - Check if you have the 'mongoimport' and 'mongoexport' installed on the lab, otherwise install them.
 - Download the `catalog.json` file from https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/nosql/catalog.json.
 

::page{title=""}

# Exercise 2 - Working with MongoDB

### Task 1 - Import 'catalog.json' into mongodb server into a database named 'catalog' and a collection named 'electronics'

Take a screenshot of the command you used and the output.

Name the screenshot as `mongoimport.jpg`. (images can be saved with either .jpg or .png extension)

### Task 2 - List out all the databases

Take a screenshot of the command you used and the output.

Name the screenshot as `list-dbs.jpg`. (images can be saved with either .jpg or .png extension)

### Task 3 - List out all the collections in the database `catalog`.

Take a screenshot of the command you used and the output.

Name the screenshot as `list-collections.jpg`. (images can be saved with either .jpg or .png extension)

### Task 4 - Create an index on the field "type"

Take a screenshot of the command you used and the output.

Name the screenshot as `create-index.jpg`. (images can be saved with either .jpg or .png extension)

### Task 5 - Write a query to find the count of laptops

Take a screenshot of the command you used and the output.

Name the screenshot as `mongo-query-laptops.jpg`. (images can be saved with either .jpg or .png extension)

### Task 6 - Write a query to find the number of `smart phones` with screen size of 6 inches.

Take a screenshot of the command you used and the output.

Name the screenshot as `mongo-query-mobiles1.jpg`. (images can be saved with either .jpg or .png extension)

### Task 7. Write a query to find out the average screen size of `smart phones`.

Take a screenshot of the command you used and the output.

Name the screenshot as `mongo-query-mobiles2.jpg`. (images can be saved with either .jpg or .png extension)

### Task 8 - Export the fields `_id`, "type", "model", from the 'electronics' collection into a file named `electronics.csv`

Take a screenshot of the command you used and the output.

Name the screenshot as `mongoexport.jpg`. (images can be saved with either .jpg or .png extension)

End of assignment.

::page{title=""}

## Authors

Ramesh Sannareddy

## Other Contributors

Rav Ahuja

<center><h5>Copyright (c) 2022 IBM Corporation. All rights reserved.</h5></center>

<!--

## Change Log

| Date (YYYY-MM-DD) | Version | Changed By        | Change Description                 |
| ----------------- | ------- | ----------------- | ---------------------------------- |
| 2022-04-14        | 0.2     |Lakshmi Holla | Changed question |
| 2021-14-18        | 0.1     | Ramesh Sannareddy | Created initial version |


