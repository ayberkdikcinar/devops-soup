## AWS Security and Identity

## IAM (Identity Access Manager)

Central AWS Account Management service. (Not requires any region selection)

We have 4 objects that we can create under IAM Service.

- User: It is an user that connects to the aws console.
- Group: Groups are the objects that includes users with some common authorization rules. (System Admins, Developers, Read-Only etc.) Thanks to groups, we do not have to assign authorities one by one.
- Role: It is used for delegating permissions to entities such as AWS services, applications, or users from other AWS accounts. Roles define what actions can be performed and what resources can be accessed by the entity assuming the role. Roles enable secure access across accounts and are often used for cross-account access or for granting permissions to AWS services.
- Policy: It is the object that defines the rules for users or groups as a json formatted file. For exp: Read-Write S3 Bucket Policy, Read EC2 Instance Policy... [Here is some examples for the policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_examples.html)
