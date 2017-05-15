local modem = component.proxy(component.list("modem")())

modem.broadcast(1, "drone = component.proxy(component.list('drone')())")
while true do
	modem.broadcast(1, "drone.move(4, 0, 0)")
	sleep(1000)
	modem.broadcast(1, "drone.move(-4, 0, 0)")
	sleep(1000)
end