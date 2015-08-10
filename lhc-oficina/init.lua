wifi.setmode(wifi.STATION)
wifi.sta.config("ssid","senha")

function try_connect()
    if (wifi.sta.status() == 5) then
        print("Conectado!")
        print(wifi.sta.getip())
        tmr.stop(0)
        dofile("server.lua")
    else
        print("Conectando...")
    end
end

tmr.alarm(0,1000,1, function() try_connect() end )