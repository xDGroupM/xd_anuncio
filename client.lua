local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
------------------------------------------------------------------------
------------------------------------------------------------------------

RegisterNetEvent("xd_notify")
AddEventHandler("xd_notify", function(source)

	TriggerServerEvent('InteractSound_SV:PlayOnAll', 'california', 0.5)
	Wait(183600)
	TriggerServerEvent('InteractSound_SV:PlayOnAll', 'avengers', 0.3)
end)



