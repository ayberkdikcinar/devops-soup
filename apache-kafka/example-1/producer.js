const { Kafka } = require("kafkajs");

const kafka = new Kafka({
  brokers: [`localhost:9092`],
  clientId: "client_1",
});

const topic = "Test";
const producer = kafka.producer();

const run = async () => {
  await producer.connect();
  console.log("Connection succeeded.");
  const message_result = await producer.send({
    topic: topic,
    messages: [
      {
        value: "Hello, this message comes from the producer.",
        partition: 0,
      },
    ],
  });

  console.log("Message sent. ", message_result);
  await producer.disconnect();
};

run().catch((e) => console.error(`[producer] ${e.message}`, e));
