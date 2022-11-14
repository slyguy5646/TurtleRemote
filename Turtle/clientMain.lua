local url = "wss://250b-2600-4040-2d70-c900-e921-66d5-f515-93a2.ngrok.io"
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