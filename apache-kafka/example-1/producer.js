const { Kafka } = require("kafkajs");

const kafka = new Kafka({
  brokers: [`localhost:9092`],
  clientId: "client_1",
});

const topic = "TestWPart1";
const producer = kafka.producer();

const produce = async () => {
  try {
    await producer.connect();
    console.log("Connection succeeded.");
    const message_result = await producer.send({
      topic: topic,
      messages: [
        {
          value: "Partititon 0",
          partition: 0,
        },
        {
          value: "Partititon 1",
          partition: 1,
        },
        {
          value: "Partititon 2",
          partition: 2,
        },
      ],
    });

    console.log("Message sent. ", message_result);
    await producer.disconnect();
  } catch (error) {
    console.error(`[producer] ${error}`);
  }
};

produce();
