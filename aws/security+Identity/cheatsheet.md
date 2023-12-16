## AWS Security and Identity

## IAM (Identity Access Manager)

Central AWS Account Management service. (Not requires any region selection)

We have 4 objects that we can create under IAM Service.

- User: It is an user that connects to the aws console.
- Group: Groups are the objects that includes users with some common authorization rules. (System Admins, Developers, Read-Only etc.) Thanks to groups, we do not have to assign authorities one by one.
- Role: It is used for delegating permissions to entities such as AWS services, applications, or users from other AWS accounts. Roles define what actions can be performed and what resources can be accessed by the entity assuming the role. Roles enable secure access across accounts and are often used for cross-account access or for granting permissions to AWS services.
- Policy: It is the object that defines the rules for users or groups as a json formatted file. For exp: Read-Write S3 Bucket Policy, Read EC2 Instance Policy... [Here is some examples for the policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_examples.html)

### IAM Policy Example

- Most policies are stored in AWS as JSON documents with several policy elements. The following example provides admin access through an IAM identity-based policy.

```
{
"Version": "2012-10-17",
"Statement": [{
"Effect": "Allow",
"Action": "*",
"Resource": "*"
}]
}

```

This policy has four major JSON elements: Version, Effect, Action, and Resource.

- The Version element defines the version of the policy language. It specifies the language syntax rules that are needed by AWS to process a policy. To use all the available policy features, include "Version": "2012-10-17" before the "Statement" element in your policies.

- The Effect element specifies whether the policy will allow or deny access. In this policy, the Effect is "Allow", which means you’re providing access to a particular resource.

- The Action element describes the type of action that should be allowed or denied. In the example policy, the action is "\*". This is called a wildcard, and it is used to symbolize every action inside your AWS account.

- The Resource element specifies the object or objects that the policy statement covers. In the policy example, the resource is the wildcard "\*". This represents all resources inside your AWS console.

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "DenyS3AccessOutsideMyBoundary",
      "Effect": "Deny",
      "Action": [
        "s3:*"
      ],
      "Resource": "*",
      "Condition": {
        "StringNotEquals": {
          "aws:ResourceAccount": [
            "222222222222"
          ]
        }
      }
    }
  ]
}

```

- This policy uses a Deny effect to block access to Amazon S3 actions, unless the Amazon S3 resource that's being accessed is in account 222222222222. This ensures that any Amazon S3 principals are accessing only the resources that are inside of a trusted AWS account.
