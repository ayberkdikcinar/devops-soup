## AWS COMPUTE

This cheatsheet provides an overview of commonly used AWS compute services.

## Amazon EC2 (Elastic Compute Cloud)

- Virtual machines (servers) in the cloud.
- Choose from various instance types based on your needs.
- Provides complete control over your virtual machines.
- [Here is the link for ec2 instance families comperision site](https://ec2instances.info).

# Placement Group:

EC2 Instances that runs on the same pyhsical machine for the high throughput and low latency. (*All instances should be created with the same image,
*Add all the machines on the first time, do not alter any machine after creation.)

# Auto Scaling Group:

An Auto Scaling group is a collection of Amazon EC2 instances that are treated as a logical unit. You configure settings for a group and its instances as well as define the group’s minimum, maximum, and desired capacity. Setting different minimum and maximum capacity values forms the bounds of the group, which allows the group to scale as the load on your application spikes higher or lower, based on demand. To scale the Auto Scaling group, you can either make manual adjustments to the desired capacity or let Amazon EC2 Auto Scaling automatically add and remove capacity to meet changes in demand.

## Amazon LightSail

- Easiest way to have a virtual server and managing it on aws.
- Fixed price package that includes virtual machine, SSD based storage, DNS Management and static IP.
- Like a hosting providers (hostinger, godady etc).
- If your only need is using some virtual machine on the aws platform. That is what you need.

## Amazon ECS (Elastic Container Service)

- Orchestrates and manages Docker containers.
- Easily run and scale containerized applications.

## Amazon EKS (Elastic Kubernetes Service)

- Managed Kubernetes service.
- Simplifies deployment, management, and scaling of containerized applications using Kubernetes.

## AWS Lambda

[AWS Lambda](https://aws.amazon.com/lambda/)

- Serverless compute service.
- Runs your code without provisioning or managing servers.
- Pay only for the compute time consumed.
- You can run it for almost everything. Just upload your code and left the rest to the aws Lambda.
- You can set them for automatic runs or you can call them from your application.

## AWS Batch

[What is batch Processing?](https://aws.amazon.com/what-is/batch-processing/)

- Fully managed batch processing service.
- Run large-scale batch computing workloads.
- Automatically scales resources based on workload demands.

## AWS Elastic Beanstalk

[Elastic Beanstalk](https://aws.amazon.com/elasticbeanstalk/)

- Platform as a Service (PaaS) offering.
- Deploy, manage, and scale applications easily. (Similar to Heroku)
- Supports various programming languages and platforms.

## AWS Fargate

- Serverless compute engine for containers.
- Runs containers without managing the underlying infrastructure.
- Pay only for the resources consumed by your containers.

## AWS App Runner

- Fully managed service for deploying and scaling applications.
- Automatically builds, deploys, and scales containerized applications.
- Supports multiple deployment options, including from source code or container images.
