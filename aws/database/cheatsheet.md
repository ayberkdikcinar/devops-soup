## AWS DATABASE

## Amazon RDS (Relational Database Service)

- Relational Database. (SQL)
- Aurora(MySQL), Aurora(PostgreSQL), MySQL, PostgreSQL, MariaDB, Oracle, MicrosoftSQL Server
- [Here is the SQL Basics Cheatsheet](https://learnsql.com/blog/sql-basics-cheat-sheet/sql-basics-cheat-sheet-a4.pdf)
- Amazon Aurora is an rds solution by AWS Itself.

### Multi-AZ

- Copy of the DB that is sync to the original db in the same region
- Active - Passive cluster
- Automated Failover
- Does not provide extra performance

### Read Replica

- Copies of the DB that is async to the original db in the same or different region.
- It is not a cluster
- Read only copy
- Increases the performance

## Amazon DynamoDB

- Non Relational Database (NoSQL)
- Infrastructure of the DynamoDB managed by AWS.
- 1 write capacity = 1kb
- 1 read capacity = 1kb x 2
- DAX ?? Caching cluster,(in-memory caching). Faster read/write.

## Amazon ElastiCache

- Service that created with very fast memories.
- It provides fully managed Redis & Memcached.

## Amazon DocumentDB
Amazon DocumentDB is a fully managed document database from AWS. A document database is a type of NoSQL database you can use to store and query rich documents in your application. These types of databases work well for the following use cases: content management systems, profile management, and web and mobile applications. Amazon DocumentDB has API compatibility with MongoDB. This means you can use popular open-source libraries to interact with Amazon DocumentDB, or you can migrate existing databases to Amazon DocumentDB with minimal hassle.

## Amazon Neptune

- Graphical based Database

## Amazon Quantum Ledger Database (Amazon QLDB)
With traditional databases, you can overwrite or delete data, so developers use techniques, such as audit tables and audit trails to help track data lineage. These approaches can be difficult to scale and put the burden of ensuring that all data is recorded on the application developer. Amazon QLDB is a purpose-built ledger database that provides a complete and cryptographically verifiable history of all changes made to your application data.

## Amazon Redshift

- [What is data warehouse?](https://aws.amazon.com/data-warehouse/)
- Data warehouse service.
- OLAP (Online analytical processing)
