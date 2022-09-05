local ws,err = http.websocket("ws://localhost:8080")
print(ws)

if ws then
    local msg = ws.receive()
    print(msg)
    --loadstring() because CC turtles run an older version of Lua
    local func = loadstring(msg)
    func()
    ws.close()
end