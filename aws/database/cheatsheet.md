## AWS DATABASE

## Amazon RDS (Relational Database Service)

- Relational Database. (SQL)
- Aurora(MySQL), Aurora(PostgreSQL), MySQL, PostgreSQL, MariaDB, Oracle, MicrosoftSQL Server
- [Here is the SQL Basics Cheatsheet](https://learnsql.com/blog/sql-basics-cheat-sheet/sql-basics-cheat-sheet-a4.pdf)

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

## Amazon Neptune

- Graphical based Database

## Amazon Redshift

- [What is data warehouse?](https://aws.amazon.com/data-warehouse/)
- Data warehouse service.
- OLAP (Online analytical processing)
