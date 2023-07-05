const { Kafka } = require("kafkajs");

const kafka = new Kafka({
  brokers: [`localhost:9092`],
  clientId: "client_1",
});

const topic = "Test";
const consumer = kafka.consumer({ groupId: "test-group" });

const consume = async () => {
  try {
    await consumer.connect();
    await consumer.subscribe({ topic, fromBeginning: true });
    await consumer.run({
      // eachBatch: async ({ batch }) => {
      //   console.log(batch)
      // },
      eachMessage: async ({ topic, partition, message }) => {
        const prefix = `${topic}[${partition} | ${message.offset}] / ${message.timestamp}`;
        console.log(`- ${prefix} # Message: ${message.value}`);
      },
    });
  } catch (error) {
    console.error(`[example/consumer] ${error}`);
  }
};

consume();
