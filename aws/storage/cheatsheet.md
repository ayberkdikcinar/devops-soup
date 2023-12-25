# AWS STORAGE

AWS storage services are grouped into three categories: file storage, block storage, and object storage. In file storage, data is stored as files in a hierarchy. In block storage, data is stored in fixed-size blocks. And in object storage, data is stored as objects in buckets

[What is Object Based Storage?](https://www.ibm.com/topics/object-storage)

- You can store objects like files, folders etc.
- You can not set up operating system on it.

[What is Block Based Storage?](https://www.ibm.com/topics/block-storage)

- You can store disk images.
- You can set up operating systems on it.

## AWS S3 (Simple Storage Service)

- Object based storage.
- 5TB limit for 1 file. (There is no limit for file count.)
- Buckets are the containers for the objects. **(Region Based)** AND **Bucket names must be unique**.
- When you store an object, it keeps the metadata that includes some information like content-length, created_at.
- For controlling access to bucket, policies are used. Example policy for public access to bucket from everywhere can be found in the folder.
- Policies can only be placed on buckets. (Can not be used for folders or objects directly)
- There are some different storage tiers that suits specific purposes for the S3. Storage tiers list can be found in the folder.
- You pay for what you use (you don’t have to provision storage in advance).
- Amazon S3 is not storage attached to compute.
- Once created, you cannot change a bucket name. 
- Buckets are permanent storage entities and only removable when they are empty. After deleting a bucket, the name becomes available for reuse by any account after 24 hours if not taken by another account.


## Amazon S3 Glacier

- Long term data archiving & data backup.
- We can keep data here that doesn't have to be used frequently.
- Retrieving files from this service takes at least 2-3 hours.

## Amazon EFS (Elastic File System)

- It is file storage.
- There is no need for provisioning or managing storage capacity and performance.
- Automatically scales down itself based on the requirements. Scale up when needed. Thanks to that, it optimizes storage size for the applications.
- It can be reached by multiple EC2 instances simultaniously.
- You can connect it from NFS (2049) port.
- Amazon EFS is a multi-Availability Zone file storage service that uses NFS access protocol.

### Example Usage:

Think that you have an e-commerce application that runs on multiple instances. One day you changed the application code, normally you should go all the instances one by one and update the application. Hovewer, if you put the application code into EFS, you can manage it centrally, that means you do not have to update one by one.

## Amazon EBS

As the name implies, Amazon Elastic Block Store (Amazon EBS) is block-level storage that you can attach to an Amazon EC2 instance. You can compare this to how you much attach an external drive to your laptop. This attachable storage is called an EBS volume. EBS volumes act similarly to external drives in more than one way.

You create an EBS volume in a specific Availability Zone, and then attach it to an EC2 instance in that same Availability Zone.
To make a volume available outside of the Availability Zone, you can create a snapshot and restore that snapshot to a new volume anywhere in the same AWS Region. You can also copy snapshots to other AWS Regions and then restore them to new volumes there.

- Detachable
- Distinct
- Size-limited
- 1-to-1 connection
- HDD and SSD type support.
- You pay for what you provision (you have to provision storage in advance).

**Note:** AWS announced the Amazon EBS multi-attach feature that permits Provisioned IOPS SSD (io1 or io2) volumes to be attached to multiple EC2 instances at one time. This feature is not available for all instance types, and all instances must be in the same Availability Zone.

## AWS Storage Gateway

- AWS Storage Gateway is a set of hybrid cloud storage services that provide **on-premises** access to virtually unlimited cloud storage.
- It provides integration between an organization’s on-premises IT environment and the AWS storage infrastructure.
- Storage Gateway offers four different types of gateways: Amazon S3 File Gateway, Amazon FSx File Gateway, Volume Gateway, and Tape Gateway.

### Use-cases

- Moving backups to the cloud
- Using on-premises file shares backed by cloud storage
- Providing low-latency access to data in AWS for on-premises applications. Local caching reduces network latency for both read and write activities

## Amazon FSx

Amazon FSx is a fully managed service that offers reliability, security, scalability, and a broad set of capabilities that make it convenient and cost effective to launch, run, and scale high-performance file systems in the cloud. With Amazon FSx, you can choose between four widely used file systems: Lustre, NetApp ONTAP, OpenZFS, and Windows File Server.

# Data Transfer And Migration Services

### Aws Transfer Family

The AWS Transfer Family provides fully managed support for file transfers directly into and out of Amazon Simple Storage Service (Amazon S3) or Amazon Elastic File System (Amazon EFS). AWS Transfer Family supports Secure File Transfer Protocol (SFTP), File Transfer Protocol Secure (FTPS), and File Transfer Protocol (FTP).

- You can import your existing user credentials or integrate an identity provider such as Microsoft Active Directory or LDAP.
- You don't need to modify your applications or run any file transfer protocol infrastructure.

### Aws DataSync

AWS DataSync is an online data transfer service that simplifies, automates, and accelerates moving data between on-premises storage systems and AWS Storage services. It can also transfer data between AWS Storage services.

### Aws Snow Family

- Offline data transfers are performed using AWS Snow Family devices.
- These services help to physically transport up to exabytes of data into and out of AWS

### Application Migration Service

With AWS Application Migration Service (AWS MGN), formerly CloudEndure Migration, you can quickly realize the benefits of migrating applications to the cloud without changes and with minimal downtime.

AWS MGN is the primary migration service recommended for lift-and-shift migrations to AWS. 
