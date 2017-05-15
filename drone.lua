local modem = component.proxy(component.list("modem")())
modem.open(1)
while true do
	local e, _, _, _, _, command = computer.pullSignal()
	if e == "modem_message" then
		pcall(load(command))
	end
end