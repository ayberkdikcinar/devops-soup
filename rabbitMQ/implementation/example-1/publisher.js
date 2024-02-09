const amqp = require('amqplib');
const { argv } = require('node:process');

const message = {
  message: `Content of the message. Queue:${argv[2]}`,
};

const queue = argv[2];

async function connectMQ() {
  try {
    const connection = await amqp.connect('amqp://localhost:5672');
    const channel = await connection.createChannel();
    await channel.assertQueue(queue);
    console.log('connected.');

    setInterval(() => {
      message.date = new Date().getTime();
      channel.sendToQueue(queue, Buffer.from(JSON.stringify(message)));
      console.log('message sent. Message:', message);
    }, 10000);
  } catch (error) {
    console.error('err:', error);
  }
}

connectMQ();
