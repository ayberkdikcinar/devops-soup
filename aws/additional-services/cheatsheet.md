# AWS ADDITIONAL SERVICES

## Amazon SQS (Simple Queue Service)

### What is SQS?
- SQS is a managed service for sending and receiving messages between different parts of your application.

### Key Concepts:
1. **Queue**: A virtual location where messages are temporarily stored.
2. **Message**: Information sent between components of your application.
3. **Producer**: Part of your application that sends messages to a queue.
4. **Consumer**: Part of your application that reads messages from a queue.

### Types of Queues:
1. **Standard Queue**:
   - Offers at-least-once delivery (messages might be duplicated).
   - Doesn't guarantee message order.
   - Provides high throughput.

2. **FIFO Queue**:
   - Guarantees exactly-once delivery (no duplicates).
   - Maintains message order.
   - Limited throughput (up to 300 transactions per second).

### Key Operations:
- **Create Queue**: Make a new queue with a unique name.
- **Send Message**: Add a message to a queue.
- **Receive Message**: Get messages from a queue.
- **Delete Message**: Remove a message from a queue.
- **Visibility Timeout**: Temporarily hide a message after it's read to avoid double processing.
- **Long Polling**: Efficiently wait for new messages without continuous polling.

### Important Features:
- **Dead Letter Queue**: Store messages that couldn't be processed for error handling.
- **Message Attributes**: Attach metadata to messages.
- **Message Deduplication**: Prevent duplicates in FIFO queues.
- **Message Grouping**: Ensure order within message groups in FIFO queues.
- **Delay Queues**: Delay message delivery by a specified time.

## Amazon SNS (Simple Notification Service)

### What is SNS?
- SNS is a managed service for sending messages or notifications to a distributed set of subscribers.
- It is a Push based notification service.

### Key Concepts:
1. **Topic**: A communication channel for sending messages.
2. **Publisher**: Part of your application that sends messages to a topic.
3. **Subscriber**: Part of your application that receives messages from a topic.

### Key Operations:
- **Create Topic**: Establish a new topic with a unique name.
- **Subscribe**: Add endpoints (like email, SMS, or Lambda functions) to a topic.
- **Publish**: Send a message to a topic.
- **Unsubscribe**: Remove endpoints from a topic.

### Important Features:
- **Subscriptions**: Multiple subscribers can get messages from a single topic.
- **Message Filtering**: Control which messages go to specific subscribers using filter policies.
- **Fanout**: Send the same message to multiple subscribers simultaneously.
- **Mobile Push Notifications**: Send push notifications to mobile devices.
- **Message Attributes**: Add metadata to messages.
- **Message Retention**: Decide how long messages are retained in a topic.
- **Integration with EventBridge**: Connect SNS with AWS EventBridge for event-driven architectures.


## Kinesis


## AWS SWF (Simple Workflow Service)


## AWS KMS (Key Management Service)

## AWS AutoScaling

## AWS Config

AWS Config primarily focuses on tracking and monitoring the configurations of your AWS resources over time. It provides a historical record of how your resources' configurations change.

- Create Rules for default configurations to be aware of the resources are fit to these rules or not.
- AWS Config helps visualize dependencies between resources.
- Understand how changes to one resource affect others.
- The data is saved in S3 Buckets.

## AWS OpsWorks

- OpsWorks is a configuration management service that helps you automate server provisioning and application deployment.

**Chef and Puppet**: Supported automation frameworks for defining configurations.
