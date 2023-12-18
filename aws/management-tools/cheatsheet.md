## AWS MANAGEMENT TOOLS

## Amazon CloudWatch

Amazon CloudWatch is a **monitoring and observability** service offered by AWS. It collects metrics, logs, and events from AWS resources and applications. Key features include:

- Metrics: Collect and monitor metrics from AWS services and custom sources.
- Logs: Centralized log management for applications and resources.
- Events: Respond to changes and trigger actions based on events.
- Alarms: Set notifications and automated actions based on predefined thresholds.
- Dashboards: Create customizable visualizations of monitoring data.
- Anomaly Detection: ML-powered detection of abnormal behavior.
- Container Insights: Enhanced monitoring for containerized applications.
- Integration: Works with other AWS services like CloudTrail and X-Ray.
- Cross-Account and Cross-Region Monitoring: Monitor multiple accounts and regions.
- Note: Memory metrics for ec2 is not available.+

### Alarms
- An alarm can be invoked when it transitions from one state to another. After an alarm is invoked, it can initiate an action. Actions can be an Amazon EC2 action, an automatic scaling action, or a notification sent to Amazon Simple Notification Service (Amazon SNS).

#### Three possible states of an alarm
- OK: The metric is within the defined threshold. Everything appears to be operating like normal.
- ALARM (In Alarm): The metric is outside the defined threshold. This might be an operational issue.
- INSUFFICIENT_DATA: The alarm has just started, the metric is not available, or not enough data is available for the metric to determine the alarm state.

## Amazon CloudTrail

Amazon CloudTrail is a service provided by Amazon Web Services (AWS) that enables you to monitor and log API activity and account-related events within your AWS infrastructure. It records and stores a history of actions taken by users, services, and resources, providing an audit trail for security analysis, compliance, and troubleshooting purposes.

- Event Logging: CloudTrail captures and logs events related to API calls made within your AWS account. It records details such as the identity of the caller, the timestamp of the action, the specific API invoked, and the resources involved. These logs are saved to an Amazon S3 bucket or delivered to CloudWatch Logs.

- Visibility and Governance: CloudTrail helps you gain visibility into the activity occurring across your AWS resources and accounts. It provides an audit trail that allows you to track changes, investigate security incidents, perform forensic analysis, and meet compliance requirements.

## AWS Trusted Advisor

AWS Trusted Advisor provides recommendations that help you follow AWS best practices. Trusted Advisor evaluates your account by using checks. These checks identify ways to optimize your AWS infrastructure, improve security and performance, reduce costs, and monitor service quotas. You can then follow the recommendations to optimize your services and resources.

## Amazon CloudFormation

## AWS AutoScaling

## AWS Config

## AWS OpsWorks
