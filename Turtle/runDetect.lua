local ngrok = "" --paste ngrok url here (without http://)
local url = "wss://" + ngrok
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
            shell.run('detect')
        else
            print('not detect')
        end
    ws.close()
end