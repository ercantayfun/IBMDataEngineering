---
markdown-version: v1
tool-type: theiaopenshift
branch: lab-2098-instruction
version-history-start-date: '2022-11-04T10:36:56Z'
locales-url: https://cf-courses-data.static.labs.skills.network/B2bCNKibC8jBufFsq5x_1w/Populating-datawarehouse-with-p-v1-locales.json
---
::page{title="Hands-on Lab: Populating a Data Warehouse using PostgreSQL"}

<center>
    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/module%201/images/SN_web_lightmode.png" width="300" alt="cognitiveclass.ai logo">
</center>



</br>

**Estimated time needed:** 1 hour

## Purpose of the Lab:

The lab is designed to provide hands-on experience in creating and managing a production database using PostgreSQL within the IBM Skills Network Labs (SN Labs) Cloud IDE. You will learn how to launch a PostgreSQL server instance, utilize the pgAdmin graphical user interface (GUI) for database operations, and execute essential tasks like creating a database, designing tables, and loading data. The lab focuses on building a foundation in database management by guiding learners through the process of setting up a \'Production\' database and populating it with data following a star schema design.

 

## Benefits of Learning the Lab:

Engaging in this lab offers significant benefits for learners seeking to deepen their understanding of database management systems, particularly PostgreSQL. By working through the lab, you will gain practical skills in SQL, database creation, table design, and data manipulation, which are crucial for roles in data engineering, database administration, and data science. The hands-on approach helps in consolidating knowledge of database schemas and SQL queries, thereby enhancing the learner\'s ability to manage and analyze data effectively in real-world scenarios. Additionally, familiarity with tools like pgAdmin and the Cloud IDE environment adds valuable experience to your skill set, preparing you for advanced database projects and tasks.

## Software Used in this Lab

</br>

To complete this lab you will utilize the <a href="https://www.postgresql.org/?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDB0110ENSkillsNetwork24601058-2021-01-01">PostgreSQL Database</a> relational database service available as part of IBM Skills Network Labs (SN Labs) Cloud IDE. SN Labs is a virtual lab environment used in this course.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0110EN-SkillsNetwork/labs/Lab%20-%20Create%20Tables%20and%20Load%20Data%20in%20PostgreSQL%20using%20pgAdmin/images/postgresql.png" alt="PostgreSQL" width="150">

::page{title="Database Used in this Lab"}

Production database is used in this lab.
The production database contains:

* DimCustomer
* DimMonth
* FactBilling

## Objectives

In this lab you will:

* Create production related database and tables in a PostgreSQL instance.
* Populate the production data warehouse byloading the tables from Scripts.

## Lab Structure

In this lab, you will complete several tasks in which you will learn how to create tables and load data in the PostgreSQL database service using the pgAdmin graphical user interface (GUI) tool.

::page{title="Data Used in this Lab"}

The following are the SQL data files used in this lab.

The production database contains:

* <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/PostgresData/DimCustomer.sql">DimCustomer</a>
* <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/PostgresData/DimMonth.sql">DimMonth</a>
* <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/PostgresData/FactBilling.sql">FactBilling</a>
* <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/PostgresData/star-schema.sql"> Star Schema</a>

::page{title="Task A: Create a database"}

First, to create a database on a PostgreSQL server instance, you\'ll first want to actually launch a PostgreSQL server instance on Cloud IDE and open up the pgAdmin Graphical User Interface.

1. Click on the Skills Network extension button on the left side of the window.
2. Open the **DATABASES** drop down menu.
3. Click on **PostgreSQL**
4. Click on the **Start** button. PostgreSQL may take a few moments to start.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/1.png)

5. Next, open the pgAdmin Graphical User Interface by clicking the **pgAdmin** button in the Cloud IDE interface.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/1.1.png)

6. Once the pgAdmin GUI opens, click on the **Servers** tab on the left side of the page. You will be prompted to enter a password.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/2.png)

7. To retrieve your password, click on the **PostgreSQL** tab near the top of the interface.

8. Click on the **Copy** icon to the right of your password to copy the session password onto your clipboard.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/2.1.png)

9. Navigate back to the **pgAdmin** tab and paste in your password, then click OK.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/2.2.png)

10. You will then be able to access the pgAdmin GUI tool.

11. In the left tree-view, right-click on **Databases> Create > Database**. 

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/3.png)

	In the Database box, type **Production** as the name for your new database, and then click **Save**. Proceed to Task B.

  	 <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/4.png">

::page{title="Task B: Create tables"}

Now, that you have your PostgreSQL service active and have created the **Production database** using pgAdmin, let\'s go ahead and create a few tables to populate the database and store the data that we wish to eventually upload into it.

1. Click on the Production database and in the top of the page go to **Query tool** and then click on **Open File**. Next a new page pops up called **Select File**. Click on **Upload** icon as shown in the screenshot.

> Note: Ensure that you upload the files to this path: /var/lib/pgadmin/

   ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/p0-0dtNsi4Dbd6rQ2OvaJA/6.png)

2. In the new blank page that appears drag and drop the **star-schema.sql** file inside the blank page. Once the **star-schema.sql** file is successfully loaded, click on the **X** icon on the right hand side of the page as shown in the screenshot.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/7.png)

3. Once you click on the **X** icon a new page appears with the file **star-schema.sql**. Select the **star-schema.sql** file from the list and click the **Select** tab.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/8.png)

4. Once the file opens up click on the **Run** option to execute the **star-schema.sql** file.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/9.png)

5. Next, right-click on the **Production database** and click on the **Refresh** option from the dropdown.
 


   <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/10.png">

	After the database is refreshed the 3 tables (DimCustomer, DimMonth,FactBilling) are created under the **Databases >  Production > Schemas > Public > Tables**.

   <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/11.png">

::page{title="Task C: Load tables"}

1. Click on **Query tool** and then click  **Open** file and click on **Upload** icon.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/13.png)

2. In the new blank page that appears drag and drop the **DimCustomer.sql** file inside the blank page. Once the **DimCustomer.sql** file is successfully loaded.

Click on the small **X** icon on the right hand side of the page as shown in the screenshot.
    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/14.png)

3. Once you click on the **X** icon a new page appears with the file **DimCustomer.sql**. Select the **DimCustomer.sql** file from the list and click on **Select** tab.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/15.png)

4. Once the file opens up, click on the **Run** option to execute the **DimCustomer.sql** file.

    ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/16.png)

>Note: Repeat the steps as given in Task C to upload the remaining sql files to insert data in **DimMonth and FactBilling**.

5. Let\'s run the command below on the PostgreSQL Tool.

```
select count(*) from public."DimMonth";
```

  

You should see an output as seen in the image below.

  <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/BIWorkaroundFiles/week2/images/29.png">

You are encouraged to run more SQL queries. 

::page{title="Practice exercises"}

#### Problem 1: Using the PostgreSQL tool, find the count of rows in the table FactBilling

<details>
<summary>Click here for Hint</summary>

Use the select statement along with count function on the table FactBilling.

</details>

<details>
<summary>Click here for Solution</summary>

```
select count(*) from public."FactBilling";
```

</details>

#### Problem 2: Using the PostgreSQL tool, create a simple Materialized views named avg_customer_bill with fields customerid and averagebillamount.

<details>

<summary>Click here for Hint</summary>

Use the create materilized view command.

</details>

<details>

<summary>Click here for Solution</summary>

```
CREATE MATERIALIZED VIEW  avg_customer_bill (customerid, averagebillamount) AS
(select customerid, avg(billedamount)
from public."FactBilling"
group by customerid
);
```

Click the **Run All** Button to run the statement. You should see status as **Success** in the **Result** section.

</details>

#### Problem 3: Refresh the newly created Materialized views

<details>
<summary>Click here for Hint</summary>

Use the refresh materialized view command.

</details>

<details>
<summary>Click here for Solution</summary>

```
REFRESH MATERIALIZED VIEW avg_customer_bill;

```

</details>

#### Problem 4: Using the newly created Materialized views find the customers whose average billing is more than 11000.

<details>
<summary>Click here for Hint</summary>

Use the select statement on the Materialized views with a where clause on the column averagebillamount.

</details>

<details>
<summary>Click here for Solution</summary>

```
select * from avg_customer_bill where averagebillamount > 11000;

```

</details>

### Congratulations! You have successfully finished the Populating a Data Warehouse lab.

## Author

Amrutha Rao

<!---

## Change Log

| Date (YYYY-MM-DD) | Version | Changed By        | Change Description                        |
| ----------------- | ------- | ----------------- | ----------------------------------------- |
| 2022-07-29        | 0.3     | Lakshmi Holla       | updated HTML tags |
| 2022-04-21        | 0.2     | Amrutha Rao            | Converted initial version to postgreSQL workaround. |
| 2021-09-29	    | 0.1	  | Ramesh Sannareddy	   |Created initial version of the lab

<hr> --->

## <h3 align="center"> © IBM Corporation 2022. All rights reserved. <h3/>

