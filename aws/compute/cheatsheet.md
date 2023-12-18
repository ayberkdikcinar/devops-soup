## AWS COMPUTE

This cheatsheet provides an overview of commonly used AWS compute services.

# Amazon EC2 (Elastic Compute Cloud)

- Virtual machines (servers) in the cloud.
- Choose from various instance types based on your needs.
- Provides complete control over your virtual machines.
- [Here is the link for ec2 instance families comperision site](https://ec2instances.info).

## Load Balancer:

- Load Balancer automatically distributes incoming network traffic across multiple EC2 instances, which helps to achieve more reliable and scalable applications.
- Different types: Application Load Balancer (ALB, operates at the application level, Layer 7), Network Load Balancer (NLB, Layer 4, ultra-low latency), Classic Load Balancer (CLB, old type, operates between Layers 4 and 7)

### Example Usage

Used when the application needs to run across many EC2 instances and the incoming traffic needs to be equally distributed across all instances. This prevents overload on a specific instance and ensures seamless operation of the application.

## Placement Group:

EC2 Instances that runs on the same pyhsical machine for the high throughput and low latency. (*All instances should be created with the same image,
*Add all the machines on the first time, do not alter any machine after creation.)

## Auto Scaling Group:

- Auto Scaling Groups automatically scale your EC2 instances. Scaling is based on demand, ensuring that a certain number of healthy instances are always up and running.
- Auto Scaling policies can be defined by the user, and these can be based on metrics like CPU usage, network traffic, etc.

### Example Usage

An e-commerce site can use Auto Scaling Groups to ensure scalability during high traffic events like Black Friday. This means starting more EC2 instances when site traffic increases and automatically stopping instances when demand falls.

## Target Groups

- Target Groups are a way to group EC2 instances that will be directed by a load balancer.
- Each target group contains a set of targets (like EC2 instances) that listen on a certain port and protocol.

### Example Usage

Target Groups are used to scale and load balance different services of an application separately. For instance, an application might have both a web server service and a backend processing service. A separate target group is created for each service, allowing each one to be managed and scaled independently by the load balancer.

## Launch Templates

- Launch Templates store configuration specifications used to launch EC2 instances.
- They include settings such as instance type, key pair, security groups, storage, and network configuration.

### Example Usage

When many EC2 instances with the same configuration need to be launched for a specific application, a launch template can be created instead of doing it manually. This ensures consistency and reduces errors. For example, if many instances need to be launched in a testing environment, they should all have the same configuration, and a launch template simplifies this process.


**Note**  Three components of Amazon EC2 Auto Scaling are Launch template, scaling policies, Amazon EC2 Auto Scaling group.

# Amazon LightSail

- Easiest way to have a virtual server and managing it on aws.
- Fixed price package that includes virtual machine, SSD based storage, DNS Management and static IP.
- Like a hosting providers (hostinger, godady etc).
- If your only need is using some virtual machine on the aws platform. That is what you need.

# Amazon ECS (Elastic Container Service)

- Orchestrates and manages Docker containers.
- Easily run and scale containerized applications.

# Amazon EKS (Elastic Kubernetes Service)

- Managed Kubernetes service.
- Simplifies deployment, management, and scaling of containerized applications using Kubernetes.

# AWS Lambda

[AWS Lambda](https://aws.amazon.com/lambda/)

- Serverless compute service.
- Runs your code without provisioning or managing servers.
- Pay only for the compute time consumed.
- You can run it for almost everything. Just upload your code and left the rest to the aws Lambda.
- You can set them for automatic runs or you can call them from your application.
- Lambda functions can be configured to run up to 15 minutes per execution.

## Function

When you create the Lambda function, it can be authored in several ways:

- You can create the function from scratch.
- You can use a blueprint that AWS provides.
- You can select a container image to deploy for your function

# AWS Fargate

Fargate supports both Amazon ECS and Amazon EKS architecture and provides workload isolation and improved security by design.

- Serverless compute engine for containers.
- Runs containers without managing the underlying infrastructure.
- Pay only for the resources consumed by your containers.

# AWS Batch

[What is batch Processing?](https://aws.amazon.com/what-is/batch-processing/)

- Fully managed batch processing service.
- Run large-scale batch computing workloads.
- Automatically scales resources based on workload demands.

# AWS Elastic Beanstalk

[Elastic Beanstalk](https://aws.amazon.com/elasticbeanstalk/)

- Platform as a Service (PaaS) offering.
- Deploy, manage, and scale applications easily. (Similar to Heroku)
- Supports various programming languages and platforms.

# AWS App Runner

- Fully managed service for deploying and scaling applications.
- Automatically builds, deploys, and scales containerized applications.
- Supports multiple deployment options, including from source code or container images.
