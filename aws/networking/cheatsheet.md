## AWS NETWORKING

<p><strong>VPC (Virtual Private Cloud):</strong></p>
<ul>
<li>Creates a virtual network.</li>
<li>Hosts your resources, such as servers and databases.</li>
<li>Uses private IP address ranges.</li>
<li>Highly customizable to fit your needs.</li>
</ul>

<p><strong>Public Subnet:</strong></p>
<ul>
<li>Hosts resources with internet accessibility.</li>
<li>Utilizes public IP addresses.</li>
<li>Ideal for web servers, application servers, etc.</li>
<li>Directly accessible from the internet.</li>
</ul>

<p><strong>Private Subnet:</strong></p>
<ul>
<li>Hosts resources without direct internet accessibility.</li>
<li>Uses private IP addresses.</li>
<li>Suitable for secure resources like databases, internal service servers, etc.</li>
<li>Provides an additional layer of network security.</li>
</ul>

<p><strong>NAT (Network Address Translation):</strong></p>
<ul>
<li>Enables internet access for resources in a private subnet.</li>
<li>Utilizes a public IP address.</li>
<li>Translates private IP addresses to the public IP address.</li>
<li>Offers enhanced security and privacy for private subnet resources.</li>
</ul>

<p><strong>Route Table:</strong></p>
<ul>
<li>Controls the flow of network traffic within a VPC.</li>
<li>Contains rules for routing IP addresses to specific destinations.</li>
<li>Directs traffic from public subnets to the internet.</li>
<li>Routes traffic from private subnets through NAT devices.</li>
<li>Associated with each subnet within the VPC.</li>
</ul>
