--  LEAKED BY YaniBarbayani#1096 -- 
--  https://discord.gg/dreamparadiserp -- 
--  dreamparadise.com -- 

local Ran = false
ESX = nil
--local ESX = exports 'esx:getSharedObject'() 

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        Citizen.SetTimeout(1250, function()
            TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)    
        end)
    end
end)
-- Wait until client is loaded into the map
RegisterCommand("ShutdownLoadingScreenNui", function()
	ShutdownLoadingScreenNui()
end)

RegisterNetEvent('esx:onPlayerSpawn')
AddEventHandler('esx:onPlayerSpawn', function()
	if not Ran then
		-- Close loading screen resource
                Citizen.Wait(3000)
		ShutdownLoadingScreenNui()
		-- Set as ran
		Ran = true
	end
end)
