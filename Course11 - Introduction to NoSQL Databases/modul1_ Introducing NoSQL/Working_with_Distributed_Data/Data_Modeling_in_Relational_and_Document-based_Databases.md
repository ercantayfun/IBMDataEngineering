---
markdown-version: v1
tool-type: instructional-lab
branch: lab-8316-instruction
version-history-start-date: '2023-09-28T16:20:44Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-28T17:39:05Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-CS0101EN-Coursera/labs/Data_Modeling_in_Relational_and_Document-based_Databases.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/PriMuz1wkTZJMcGsgl_Uiw/Data%20Modeling%20in%20Relational%20and%20Document-based%20Databases-v1-locales.json
---
# Data Modeling in Relational and Document-based Databases

## Objectives

After completing this reading, you will be able to:
- Compare modeling the same data in relational and document databases.
- Describe the complexities of querying data.
- Describe how data duplication affects data modeling
- Describe the considerations associated with evolving the schema.

## Introduction

First, compare the information organization in a relational database to a NoSQL document database.

 A relational database organizes data into tables with predefined schemas and relationships among tables. In a relational model, you avoid duplicating any data so that the data is stored once and updated in one location. Wherever and whenever the data is needed, the data is referenced. That &#39;s the relational aspect of the data.

On the other hand, an excellent document-based design starts with using that data.

 Let&#39;s use the example of library books and data organization.

### **Example: A library book catalog**

Library book catalogs store information about books and their authors.

####

#### Using a relational database for a library books catalog

If you work with library book data using a relational database, you will create the Books, Authors, Genres and BookGenres tables:

### Books

| **BookID** | **Title** | **AuthorID** | **ISBN** | **Published Year** |
| --- | --- | --- | --- | --- |
| **1** | The Great Gatsby | 1 | 978-0743273565 | 1925 |
| 2 | To Kill a Mockingbird | 2 | 978-0061120084 | 1960 |
| 3 | 1984 | 3 | 978-0451524935 | 1949 |
| 4 | Pride and Prejudice | 4 | 978-0141439518 | 1813 |
| 5 | The Hobbit | 5 | 978-0618260300 | 1937 |

##

### Authors

| AuthorID | Name |
| --- | --- |
| 1 | F. Scott Fitzgerald |
| 2 | Harper Lee |
| 3 | George Orwell |
| 4 | Jane Austen |
| 5 | J.R.R. Tolkien |

### Genres

| **GenreID** | **Genre Name** |
| --- | --- |
| 1 | Fiction |
| 2 | Classic |
| 3 | Dystopian |
| 4 | Romance |
| 5 | Fantasy |

### BookGenres

| **BookID** | **GenreID** |
| --- | --- |
| 1 | 1 |
| 1 | 2 |
| 2 | 1 |
| 3 | 1 |
| 3 | 3 |
| 4 | 1 |
| 4 | 4 |
| 5 | 1 |
| 5 | 5 |

#### Using a cocument database for a library books catalog

In contrast, a document database is simplified and displayed as a single document with all the required information.

| {"\_id": 1,"title": "The Great Gatsby","author": "F. Scott Fitzgerald,""isbn": "978-0743273565","published\_year": 1925,"genres": ["Fiction", "Classic"]} |
| --- |

Next, compare the complexities of querying the data in relational and document databases.

## Complexities of querying data

Let&#39;s examine the complexities of querying the same book data using a relational database compared to a NoSQL database.


### Querying book data using a relational database


Now, query the data. You will need all the book details at once. You will structure your SQL query by performing a JOIN among those tables. Here&#39;s your SQL query example:

|  SELECTBooks.Title AS BookTitle,Authors.AuthorName AS Author,GROUP\_CONCAT(Genres.GenreName) AS GenresFROMBooksJOINAuthors ON Books.AuthorID = Authors.AuthorIDJOINBookGenres ON Books.BookID = BookGenres.BookIDJOINGenres ON BookGenres.GenreID = Genres.GenreIDGROUP BYBooks.Title, Authors.AuthorName; |
| --- |

The number of joins, use of the GROUP\_CONCAT function, and the GROUP BY function make this query complex. Here&#39;s how the query breaks down.

- The SELECT command obtains the book title, author name, and a concatenated list of genres for each book.
- The JOIN command joins the Books table with the Authors table on the AuthorID field to get the author's name.
- The JOIN command joins the Books table with the BookGenres table on the BookID field to associate books with genres.
- The JOIN command joins the BookGenres table with the Genres table on the GenreID field to get genre names.
-  The query uses the GROUP\_CONCAT function (the exact function may vary depending on your SQL database system; GROUP\_CONCAT is used in MySQL and STRING\_AGG in PostgreSQL) to concatenate multiple genre names into a single string.
- The query uses GROUP BY to display the results by book title and author name.

Here is an example output:

| **BookTitle** | **Author** | **Genres** |
| --- | --- | --- |
| 1984 | George Orwell | Fiction, Dystopian |
| Pride and Prejudice | Jane Austen | Fiction, Romance |
| The Great Gatsby | F. Scott Fitzgerald | Fiction, Classic |
| The Hobbit | J.R.R. Tolkien | Fiction, Fantasy |
| To Kill a Mockingbird | Harper Lee | Fiction |

### Querying book data using a NoSQL document database

You already know the output you need and that the output is a first-order criterion in a document database. Remember that your book document looks like this:

| {"\_id": 1,"title": "The Great Gatsby","author": "F. Scott Fitzgerald,""isbn": "978-0743273565","published\_year": 1925,"genres": ["Fiction", "Classic"]} |
| --- |

When creating a document database query, using MongoDB, for example, you specify empty brackets as the first argument denoting you want to see all documents. The second argument, called projection, allows you to choose which fields to present to the client information. You won &#39;t always need to show all of the fields all of the time. And you&#39;ll notice the simplicity of this query, as it didn &#39;t need any joins with other collections.

Here is your query:

| Db.books.find({}, { title:1, author: 1, genres: 1 }) |
| --- |

The data you need to fulfill the request is already in the document and does not require any joins with other collections.


### **Important! What about data duplication?**

Data duplication is a common practice and is known as &quot;denormalization.&quot; Data duplication can improve read performance by avoiding complex joins and queries. However, you will face challenges with data consistency and increased storage requirements.
For example, imagine that the author, J.R.R. Tolkien, wants to be known by his full name, John Ronald Reuel Tolkien, and you need to make this change in a relational database and a document database. How would you implement this change in these two different types of databases?


| Relational database | Document database |
| --- | --- |
| This request requires only one change in the Authors table in a relational database. | Since the author has written 12 books in a document database, you must update this information in 12 documents, which is a small price to pay, as this is a rare event.


Next, explore the considerations associated with evolving a schema.

## Schema Evolution Considerations

Changing the schema in a database can be necessary to accommodate evolving application requirements. However, a significant difference exists in how a relational and document database enables schema changes.

In relational databases, changing the schema typically involves modifying existing tables, adding new tables, or altering relationships between tables. Here &apos;s an example:

| ALTER TABLE table\_nameADD column\_name data\_type; |
| --- |

After making schema changes, you might need to migrate existing data to match the new schema, which can involve data transformation and migration scripts.

In document databases like MongoDB, the schema is typically more flexible, and you can often add or remove fields to documents (individual documents, as there is generally no collection-wide enforced schema) without a predefined structure. Here &apos;s an example:

| Db.books.update ({ \_id: 1 },{$set: {Newfield: "Some value"}}); |
| --- |

## Summary

In this reading, you learned that:

- A relational database organizes data into tables with predefined schemas and relationships among tables.
- A good document-based design starts with the usage of data.
- The number of SELECT, JOIN, GROUP, and additional commands contribute to the complexity of building a relational database query.
- For document database queries, you won &#39;t always need to show all of the fields all of the time, and you&#39;ll notice the simplicity of these queries, as the queries might not need joins with other collections.
- In relational databases, changing the schema typically involves modifying existing tables, adding new tables, or altering relationships between tables.
- In document databases, such as MongoDB, the schema is typically more flexible, and you can often add or remove fields to documents without a predefined structure.  




<br>

<h3> Congratulations! You have completed this reading and are ready for the next topic. <h3/>

<br>

## Author(s)
- [Muhammad Yahya](https://www.linkedin.com/in/1muhammadyahya/)


### Other Contributor(s) 
- [Patsy R. Kravitz](https://www.linkedin.com/in/thiswomanworks/)
	
	<footer> 

<img align="left" src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-CS0101EN-Coursera/images/SNIBMfooter.png" alt=""> 

</footer> 
	

<br>
<br>
	

<!--!-- ## Change Log
| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 2024-01-29 | 0.1 | Patsy R. Kravitz |Typographical updates |
| 2023-09-28 | 0.1 | Patsy R. Kravitz | Initial version created |-->

