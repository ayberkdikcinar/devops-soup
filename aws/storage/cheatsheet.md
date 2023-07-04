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
- Buckets are the containers for the objects. (Region Based) AND Bucket names should be unique.
- When you store an object, it keeps the metadata that includes some information like content-length, created_at.
- For controlling access to bucket, policies are used. Example policy for public access to bucket from everywhere can be found under assets file.
- There are some different storage tiers that suits specific purposes for the S3. Storage tiers list can be found under assets file.

## AWS EFS (Elastic File System)

- Object based storage.
- Automatically scales down itself based on the requirements. Scale up when needed. Thanks to that, it optimizes storage size for the applications.
- It can be reached by multiple EC2 instances simultaniously.
- You can connect it from NFS (2049) port.

### Example Usage:

Think that you have an e-commerce application that runs on multiple instances. One day you changed the application code, normally you should go all the instances one by one and update the application. Hovewer, if you put the application code into EFS, you can manage it centrally, that means you do not have to update one by one.

## Amazon Glacier

- Long term data archiving & data backup.
- We can keep data here that doesn't have to be used frequently.
- Retrieving files from this service takes at least 2-3 hours.

## AWS Storage Gateway

AWS Storage Gateway is a set of hybrid cloud storage services that provide **on-premises** access to virtually unlimited cloud storage.
