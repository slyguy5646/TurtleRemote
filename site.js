const ws = new WebSocket('ws://localhost:8080');

function turtleDo(hello){
    ws.send(hello);
}