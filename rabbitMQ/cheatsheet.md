# RABBITMQ

**Protocol:** [AMQP (Advanced Message Queuing Protocol)](https://www.amqp.org/)
**Port:** 5672

## Routing Key

A identifier that enables directing a message to a specific queue, determining the queue or consumer that will receive the message.
**Usage:** Used to determine which queue a message will be routed to when it is sent to an exchange. It is used to determine which queue the message will be delivered to.
**Example Usage:** If there are different services or components in a system, each service can have its own queue, and different RoutingKeys can be used to route messages to these queues.

## CorrelationId

**Usage:** Typically used to associate one message with another. It is used to determine the relationship between messages and express how a message is related to the previous one.
**Example Usage:** A client sends a request, and if processing that request occurs in several stages, different messages can be sent for each stage, using the same CorrelationId to establish the relationship between these messages.

## Exchange

Infrastructure where messages are published and routed to specific queues. Exchange directs messages to queues based on specific rules.

## Exchange Type

Exchange type determines how messages will be routed to queues.

- **Direct:** An exchange type that routes messages directly to queues with specified routing keys.
- **Fanout:** An exchange type that copies messages to all bound queues. Each queue receives the message independently.
- **Topic:** Messages are routed to queues that match a specific topic pattern. It allows writing to different queues according to the given key. For instance, if we have keys like sys.info, sys.error, app.error, we can send to those matching '_.error'. Moreover, multiple keys can be given. For example, 'app._', sys.info.

## Queue

A storage area where messages are stored, waiting, or consumed by a consumer. Each queue is identified by a name and is associated with a specific exchange.

## Publisher

The party that generates data and sends it to RabbitMQ. The publisher sends messages to a specific exchange.

## Consumer

The party that receives messages from RabbitMQ, processes these messages, and then sends an "acknowledge" indicating successful completion of the process.

## Channels

Represent multiple communication channels on a connection. Each channel can be used to perform an operation, and there can be multiple channels on the same connection, allowing operations to be performed independently.

### Exchange Type Diagram

Quick Note: Multiple Consumers for the same routing key, default: Round Robin.

## USECASES

- Pdf creation
- DB Backup
- Image scaling
- Report Generator
- Email sending
- Places with high processing volume
- Scenarios with intensive email sending
- Areas with intensive data processing
- Places where data loss is critical

# KAFKA VS RABBITMQ

## KAFKA

**Pub-Sub (Publisher-Subscriber):**

- Fundamental usage model where publishers send messages to specific topics, and subscribers subscribed to those topics receive messages.
  **Batch Processing:**
- Kafka provides a platform for applications that consume messages at specific intervals for batch processing.
  **Event Sourcing:**
- Kafka supports the event sourcing model. It can be used to maintain the application state over a series of events and store these events in log files.
  **Log Aggregation:**
- Kafka can be used to collect logs from different systems and create a central log service.
  **Stream Processing:**
- Kafka provides a strong foundation for stream processing applications. Tools like Kafka Streams API can be used to process data streams and obtain results.
  **Change Data Capture (CDC):**
- Kafka can be used to track changes in databases and store these changes in log files.

## RABBITMQ

**Point-to-Point (Direct Messaging):**

- In this model, a producer sends a message to a queue, and a consumer receives the message from that queue. Each message is processed by only one consumer.
  **Publish/Subscribe (Fanout Exchange):**
- In this model, a producer sends a message to an exchange, and multiple consumers subscribed to the exchange-bound queues can receive the message. Messages are copied to each bound queue, and each consumer receives messages from its queue.
  **Topic Exchange:**
- Similar to the Publish/Subscribe model, but messages are assigned to specific topics, and consumers subscribe to specific topics. This provides finer granularity of control.
  **Header Exchange:**
- Uses header information for message routing. Consumers can receive messages that match specific header criteria.
  **Request/Reply (RPC - Remote Procedure Call):**
- A client sends a message to a queue, and a server processes the message from that queue. The server returns the result to another queue or directly to the client.
