## AWS STORAGE

There are two different storage as Object based and Block based.

[What is Object Based Storage?](https://www.ibm.com/topics/object-storage)

- You can store objects like files, folders etc.
- You can not set up operating system on it.

[What is Block Based Storage?](https://www.ibm.com/topics/block-storage)

- You can store disk images.
- You can set up operating systems on it.

## AWS S3 (Simple Storage Service)

- Object based storage.
- 5TB limit for 1 file. (There is no limit for file count.)
- Buckets are the containers for the objects. (Region Based)
- When you store an object, it keeps the metadata that includes some information like content-length, created_at.

## AWS EFS (Elastic File System)

- Object based storage.
- Automatically scales down itself based on the requirements. Scale up when needed. Thanks to that, it optimizes storage size for the applications.

## Amazon Glacier

- Long term data archiving & data backup.
- We can keep data here that doesn't have to be used frequently.

## AWS Storage Gateway

AWS Storage Gateway is a set of hybrid cloud storage services that provide **on-premises** access to virtually unlimited cloud storage.
