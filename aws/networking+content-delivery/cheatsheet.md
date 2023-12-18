## AWS NETWORKING & CONTENT DELIVERY SERVICES

## VPC (Virtual Private Cloud)

- Creates a virtual network that is special to you.
- Hosts your resources, such as servers and databases.
- Uses private IP address ranges.
- Highly customizable to fit your needs.
- It exists in the infrastructures of all the systems that we created.

## CloudFront

Amazon CloudFront is a web service that speeds up distribution of your static and dynamic web content, such as .html, .css, .js, and image files, to your users. CloudFront delivers your content through a worldwide network of data centers called edge locations. When a user requests content that you're serving with CloudFront, the request is routed to the edge location that provides the lowest latency (time delay), so that content is delivered with the best possible performance.

- If the content is already in the edge location with the lowest latency, CloudFront delivers it immediately.
- If the content is not in that edge location, CloudFront retrieves it from an origin that you've defined—such as an Amazon S3 bucket, a MediaPackage channel, or an HTTP server (for example, a web server) that you have identified as the source for the definitive version of your content.

* It is a [CDN (Content Delivery Network)](https://www.cloudflare.com/learning/cdn/what-is-a-cdn/) service.
* Low latency

## Route 53

- It is a [DNS](https://www.cdnetworks.com/web-performance-blog/what-is-a-dns-server/) service.

### TTL (Time To Live) value

- Value in seconds. it caches the data for the domain and wont ask for data from the domain server until the time expires.

### DNS Basic Record Types

- A: Address Record - Maps a domain name to an IPv4 address.
- CNAME: Canonical Name Record - Creates an alias for a domain name, pointing to another domain's A or AAAA record.
- SOA: Start of Authority Record - Contains authoritative information about a DNS zone, including the primary name server and administrator contact information.
- NS: Specifies the authoritative name servers for a domain, delegating DNS resolution to those servers.
- Alias(Specific to the Route53): This is a record type unique to Amazon Route 53 called "Alias Record." It functions similarly to a CNAME but can be used for specific AWS resources like S3 buckets, CloudFront distributions, and Elastic Beanstalk environments. It allows you to map a domain or subdomain to these AWS resources.

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

## Virtual Private Gateway

A virtual private gateway connects your VPC to another private network. When you create and attach a virtual private gateway to a VPC, the gateway acts as anchor on the AWS side of the connection. On the other side of the connection, you will need to connect a customer gateway to the other private network. A customer gateway device is a physical device or software application on your side of the connection. When you have both gateways, you can then establish an encrypted virtual private network (VPN) connection between the two sides.

## AWS Direct Connect

To establish a secure physical connection between your on-premises data center and your Amazon VPC, you can use AWS Direct Connect. With AWS Direct Connect, your internal network is linked to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. This connection allows you to create virtual interfaces directly to public AWS services or to your VPC.

## Security Group

- Resource (EC2 Instances, RDS Instances etc.) level security.
- As default settings, It blocks all inbound traffic and allows all outbound traffic.

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
