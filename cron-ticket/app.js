console.log('Hello World!');

const cron = require('node-cron');
let times = 0;

console.log('Cron job started');
cron.schedule('1-59/5 * * * * *', () => {
  console.log('Tick cada 5 segundos', times);
  times++;
});