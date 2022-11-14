import { WebSocketServer } from 'ws';
import {functions} from './functions.js'

const wss = new WebSocketServer({ port: 8070 });

wss.on('connection', function connection(ws) {
  ws.on('message', function message(data) {
    console.log('received: %s', data);
  });
  var cmdToSend = functions['up'];
  while (true){
    ws.send(cmdToSend);
    
    console.log('Told turtle to: ' + cmdToSend);
  }
});

function turtleDo(cmd){
  cmdToSend = cmd
}