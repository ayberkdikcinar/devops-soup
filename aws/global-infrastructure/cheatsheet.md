[Global Infrastructure of the AWS](https://aws.amazon.com/about-aws/global-infrastructure/)

# Regions

Regions are geographic locations worldwide where AWS hosts its data centers.

### Example:

- us-east-1 is the first Region created in the eastern US area. The geographical name for this Region is N. Virginia.
- ap-northeast-1 is the first Region created in the northeast Asia Pacific area. The geographical name for this Region is Tokyo.

# Availability Zones

Inside every Region is a cluster of Availability Zones. An Availability Zone consists of one or more data centers with redundant power, networking, and connectivity. These data centers operate in discrete facilities in undisclosed locations. They are connected using redundant high-speed and low-latency links.

### Example:

- us-east-1a is an Availability Zone in us-east-1 (N. Virginia Region).
- sa-east-1b is an Availability Zone in sa-east-1 (São Paulo Region).

### Maintaining resiliency (High availability)

To keep your application available, you must maintain high availability and resiliency. A well-known best practice for cloud architecture is to use Region-scoped, managed services. These services come with availability and resiliency built in. When that is not possible, make sure your workload is replicated across multiple Availability Zones. At a minimum, you should use two Availability Zones. That way, if an Availability Zone fails, your application will have infrastructure up and running in a second Availability Zone to take over the traffic.

# Edge Locations

Edge locations are global locations where content is cached. For example, if your media content is in London and you want to share video files with your customers in Sydney, you could have the videos cached in an edge location closest to Sydney. This would make it possible for your customers to access the cached videos more quickly than accessing them from London. Currently, there are over 400+ edge locations globally.

Amazon CloudFront delivers your content through a worldwide network of edge locations. When a user requests content that is being served with CloudFront, the request is routed to the location that provides the lowest latency. So that content is delivered with the best possible performance. CloudFront speeds up the distribution of your content by routing each user request through the AWS backbone network to the edge location that can best serve your content.
