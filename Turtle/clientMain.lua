local url = "wss://a604-2600-4040-2d70-c900-edde-f3ee-d742-1c13.ngrok.io"
local ws,err = http.websocket(url)
print(ws)

if ws then
    local msg = ws.receive()
    print(msg)
    --loadstring() because CC turtles run an older version of Lua
    --local func = loadstring(msg)
    --func()
    if(msg == 'turtle.detect()')
        then
            detect = shell.run('detect')
            print(detect)
        else
            print('not detect')
    end
end