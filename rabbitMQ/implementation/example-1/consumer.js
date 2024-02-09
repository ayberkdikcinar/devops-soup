const amqp = require('amqplib');
const { argv } = require('node:process');

const queue = argv[2];

async function connectMQ() {
  try {
    const connection = await amqp.connect('amqp://localhost:5672');
    const channel = await connection.createChannel();
    channel.assertQueue(queue);
    console.log('Ready to listen. Routing Key:', queue);
    channel.consume(queue, (msg) => {
      console.log('msg full:', msg);
      console.log('received. Message:', msg.content.toString());
      channel.ack(msg);
    });
  } catch (error) {
    console.error('err:', error);
  }
}

connectMQ();
