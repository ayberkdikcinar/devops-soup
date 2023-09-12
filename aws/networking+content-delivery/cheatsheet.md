## AWS NETWORKING & CONTENT DELIVERY SERVICES

## VPC (Virtual Private Cloud)

- Creates a virtual network that is special to you.
- Hosts your resources, such as servers and databases.
- Uses private IP address ranges.
- Highly customizable to fit your needs.
- It exists in the infrastructures of all the systems that we created.

## CloudFront

- It is a [CDN (Content Delivery Network)](https://www.cloudflare.com/learning/cdn/what-is-a-cdn/) service.
- Low latency

## Route 53

- It is a [DNS](https://www.cdnetworks.com/web-performance-blog/what-is-a-dns-server/) service.

### TTL (Time To Live) value
- Value in seconds. it caches the data for the domain and wont ask for data from the domain server until the time expires.

### DNS Basic Record Types
- A:
- CNAME:
- SOA:
- NS:
- Alias(Specific to the Route53): 

## Amazon API Gateway

- Amazon API Gateway allows you to create RESTful APIs and WebSocket APIs to provide access to your backend services, such as AWS Lambda functions, AWS Step Functions, or HTTP endpoints. It acts as a front door for your applications, allowing you to control access, apply security measures, and monitor usage.

## What are the fundemantal concepts in network?

## Public Subnet

- Hosts resources with internet accessibility.
- Utilizes public IP addresses.
- Ideal for web servers, application servers, etc.
- Directly accessible from the internet.

## Private Subnet

- Hosts resources without direct internet accessibility.
- Uses private IP addresses.
- Suitable for secure resources like databases, internal service servers, etc.
- Provides an additional layer of network security.

## NAT (Network Address Translation)

- Enables internet access for resources in a private subnet.
- Utilizes a public IP address.
- Translates private IP addresses to the public IP address.
- Offers enhanced security and privacy for private subnet resources.

## Route Table

- Controls the flow of network traffic within a VPC.
- Contains rules for routing IP addresses to specific destinations.
- Directs traffic from public subnets to the internet.
- Routes traffic from private subnets through NAT devices.
- Associated with each subnet within the VPC.
- Automatically created when VPC created.

## Internet Gateway

- Provides connectivity between your VPC and the internet.

Acts as a bridge between your VPC and the internet, facilitating communication and enabling resources within your VPC to be publicly accessible. It's important to configure appropriate security measures to control access and be aware of any associated costs.

## Security Group

- Resource (EC2 Instances, RDS Instances etc.) level security.

## Network ACL (Access Control List)

- Subnet level security.
- Each subnet has to be attached to 1 Network ACL.
- You can attach different subnets into same Network ACL.

## Endpoints

- Provides quick connection from the internal network instead of going to the Internet for the determined endpoints.
- We can do it for aws services, privateLink Ready partner services, aws marketplace services etc.

## Peering Connection

- Enables connectivity between two VPCs in the same or different AWS accounts.
- The VPCs must not have overlapping IP address ranges.
- After creation, Route tables should be properly configured to allow traffic between peered VPCs.


## Network Interfaces

