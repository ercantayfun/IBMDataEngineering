---
tool-type: theiadocker
markdown-version: v1
branch: lab-3513-instruction
version-history-start-date: '2023-01-09T06:53:03Z'
locales-url: https://cf-courses-data.static.labs.skills.network/uNBNp39X8liiGjEKKRq3fw/Setting%20up%20a%20staging%20area-v1-locales.json
---
::page{title="Hands-on Lab: Setting up a staging area"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/assets/logos/SN_web_lightmode.png" width="300">

### Estimated time needed: **30** minutes

## Purpose of the Lab: 

The purpose of the lab is to equip you with practical skills in setting up and managing a staging server for a data warehouse, specifically using PostgreSQL. The lab focuses on teaching how to design and implement a database schema, load data into tables, and run sample queries to interact with the data. This is aimed at providing you with a hands-on understanding of the intricacies involved in preparing and managing a data warehouse environment. 

 

## Benefits of Learning the Lab: 

The key benefit of this lab is the hands-on experience it offers in data warehousing concepts and practices. By working in the Skills Network Cloud IDE, an interactive environment, you can practice and hone your database management skills. This practical exposure is crucial for developing a solid foundation in data management and analysis, skills that are highly valued in real-world business scenarios. The lab helps you to understand the operational aspects of data warehouses, making you better prepared for challenges in data management and analysis in professional settings. 

## Objectives

In this lab you will:

- Setup a staging server for a data warehouse
- Create the schema to store the data
- Load the data into the tables
- Run a sample query

## About Skills Network Cloud IDE

Skills Network Cloud IDE (based on Theia and Docker) provides an environment for hands on labs for course and project related labs. Theia is an open source IDE (Integrated Development Environment), that can be run on desktop or on the cloud. To complete this lab, we will be using the Cloud IDE based on Theia running in a Docker container.

## Important Notice about this lab environment

Please be aware that sessions for this lab environment are not persistent. A new environment is created for you every time you connect to this lab. Any data you may have saved in an earlier session will get lost. To avoid losing your data, please plan to complete these labs in a single session.

::page{title="Exercise 1 - Start the PostgreSQL server"}

We will be using the PostgreSQL server as our staging server.

Start the PostgreSQL server from the SN Toolbox as shown in the image below.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/FalhPp-wYqPZB3sbQeIFUQ/start-postgres.png)

::page{title="Exercise 2 - Create Database"}

Create the database on the data warehouse.

Now, open a new terminal, by clicking on the menu bar and selecting Terminal->New Terminal. This will open a new terminal at the bottom of the screen.

Run the commands below on the newly opened terminal. (You can copy the code by clicking on the little copy button on the bottom right of the codeblock below and then paste it, wherever you wish.)

Using the createdb command of the PostgreSQL server, we can directly create the database from the terminal. Before that, export your password by replacing <your_password> with your PostgreSQL server password(that can be found under the connection information tab) in the below command and execute it.

```bash
export PGPASSWORD=<your_password>;
```
Then run the below command which will create a database named billingDW.

```bash
createdb -h postgres -U postgres -p 5432 billingDW
```

In the above command 

- `-h` mentions that the database server is accessible using the hostname "postgres"
- `-U` mentions that we are using the user name postgres to log into the database
- `-p` mentions that the database server is running on port number 5432

You should see an output like this.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Setting%20up%20a%20staging%20area/images/postgres-createdb.png)

::page{title="Exercise 3 - Create data warehouse schema"}

Step 1: 
Download the schema files.

The commands to create the schema are available in the file below.

https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Setting%20up%20a%20staging%20area/billing-datawarehouse.tgz
Run the commands below to download and extract the schema files.

```bash
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Setting%20up%20a%20staging%20area/billing-datawarehouse.tgz

tar -xvzf billing-datawarehouse.tgz
ls *.sql
```

You should see 4 .sql files listed in the output

Step 2: Create the schema

Run the command below to create the schema in the `billingDW` database.

```bash
psql  -h postgres -U postgres -p 5432 billingDW < star-schema.sql
```

You should see an output similar to the one below.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Setting%20up%20a%20staging%20area/images/postgres-createschema.png)

::page{title="Exercise 4 - Load data into Dimension tables"}

When we load data into the tables, it is a good practice to load the data into dimension tables first.

Step 1: Load data into DimCustomer table

Run the command below to load the data into DimCustomer table  in `billingDW` database.

```bash
psql  -h postgres -U postgres -p 5432 billingDW < DimCustomer.sql
```

Step 2: Load data into DimMonth table

Run the command below to load the data into DimMonth table in `billingDW` database.

```bash
psql  -h postgres -U postgres -p 5432 billingDW < DimMonth.sql
```

::page{title="Exercise 5 - Load data into Fact table"}

Load data into FactBilling table

Run the command below to load the data into FactBilling table in `billingDW` database.

```bash
psql  -h postgres -U postgres -p 5432 billingDW < FactBilling.sql
```

::page{title="Exercise 6 - Run a sample query"}

Run the command below to check the number of rows in all the tables in the `billingDW` database.

```bash
psql  -h postgres -U postgres -p 5432 billingDW < verify.sql
```

You should see an output similar to the one below.

![Screenshot of output](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Setting%20up%20a%20staging%20area/images/verify.png)

Your data warehouse staging area is now ready.

::page{title="Practice exercises"}

In this practice session, you will create a database named `practice` and load the data into it.

If you are using a new terminal for this practice exercise, remember to export the password again, just as you did in the earlier steps.

1.  Problem:

> _Create a database named `practice`._

<details>
<summary>Click here for Hint</summary>

> _use the createdb command _

</details>

<details>
<summary>Click here for Solution</summary>

```bash
createdb -h postgres -U postgres -p 5432 practice
```

</details>
    

2. Problem:

> _In the `practice` database, create a schema using `star-schema.sql`._

<details>
<summary>Click here for Hint</summary>

> Use the psql command, make sure you are setting the database to `practice`.

</details>

<details>
<summary>Click here for Solution</summary>

```bash
psql  -h postgres -U postgres -p 5432 practice < star-schema.sql
```
</details>

3. Problem:

> _In the `practice` database, load the data into all tables using the DimMonth.sql, DimCustomer.sql and FactBilling.sql._

<details>
<summary>Click here for Hint</summary>

> Use the psql command, make sure you are setting the database to `practice`.

</details>

<details>
<summary>Click here for Solution</summary>

```bash
psql  -h postgres -U postgres -p 5432 practice < DimMonth.sql
psql  -h postgres -U postgres -p 5432 practice < DimCustomer.sql
psql  -h postgres -U postgres -p 5432 practice < FactBilling.sql

```

</details>

4. Problem:

> _Verify that you have correctly loaded the data into the `practice` database.

<details>
<summary>Click here for Hint</summary>

> Use the verify.sql and run it on the `practice` database.

</details>

<details>
<summary>Click here for Solution</summary>

```bash
psql  -h postgres -U postgres -p 5432 practice < verify.sql

```

</details>

Congratulations!! You have successfully finished the Setting up a staging server lab.

### Authors

Ramesh Sannareddy

### Other Contributors

Rav Ahuja
<!---
## Change Log
| Date (YYYY-MM-DD) | Version | Changed By        | Change Description                 |
| ----------------- | ------- | ----------------- | ---------------------------------- |
|2023-05-11| 0.6 | Eric Hao & Vladislav Boyko | Updated Page Frames |
|2023-05-10| 0.5 | Eric Hao & Vladislav Boyko | Updated Page Frames |
|2023-05-10| 0.4 | Eric Hao & Vladislav Boyko | Updated Page Frames |
| 2021-09-4        | 0.1     | Ramesh Sannareddy | Created initial version of the lab |
| 2022-07-29        | 0.2     | Lakshmi Holla | Updated markdown |
| 2023-05-05        | 0.3     | Vladislav Boyko | Updated markdown, removed create terminal image |
--->
## <h3 align="center"> © IBM Corporation 2023. All rights reserved. <h3/>
