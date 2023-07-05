const { Kafka } = require("kafkajs");

const kafka = new Kafka({
  clientId: "client_1",
  brokers: ["localhost:9092"],
});

async function createTopic() {
  try {
    const admin = kafka.admin();
    await admin.connect();
    console.log("Connected.");
    await admin.createTopics({
      topics: [
        {
          topic: "Test",
          numPartitions: 1,
        },
      ],
    });
    console.log("topic created");
  } catch (error) {
    console.log(error);
  }
}

createTopic();
