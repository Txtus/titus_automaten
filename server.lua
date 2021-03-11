ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('coffe')
AddEventHandler('coffe', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local money = xPlayer.getMoney(source)
	local item = 'coffe'
	local price = 3
	local xItem = xPlayer.getInventoryItem(item)
	if money >= price then
		if xItem.limit ~= -1 and (xItem.count + 1) > xItem.limit then
			TriggerClientEvent("pNotify:SendNotification", source, {text = "Du hast nicht genung Platz für Kaffee", type = "error", timeout = math.random(1000, 1000), layout = "bottomRight"})
		else
			TriggerClientEvent("pNotify:SendNotification", source, {text = "Kaffee für 3$ gekauft", type = "success", timeout = math.random(1000, 1000), layout = "bottomRight"})
			xPlayer.removeMoney(price)
			xPlayer.addInventoryItem(item, 1)
		end
	else
		TriggerClientEvent("pNotify:SendNotification", source, {text = "Du hast nicht genung Geld um dir ein Kaffee zu kaufen", type = "error", timeout = math.random(1000, 1000), layout = "bottomRight"})
	end
end)
RegisterNetEvent('cola')
AddEventHandler('cola', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local money = xPlayer.getMoney(source)
	local item = 'cocacola'
	local itemlabel = ESX.GetItemLabel(item)
	local price = 3
	local xItem = xPlayer.getInventoryItem(item)
	if money >= price then
		if xItem.limit ~= -1 and (xItem.count + 1) > xItem.limit then
			TriggerClientEvent("pNotify:SendNotification", source, {text = "Du hast nicht genung Platz für "..itemlabel.."", type = "error", timeout = math.random(1000, 1000), layout = "bottomRight"})
		else
			TriggerClientEvent("pNotify:SendNotification", source, {text = itemlabel.." für "..price.."$ gekauft", type = "success", timeout = math.random(1000, 1000), layout = "bottomRight"})
			xPlayer.removeMoney(price)
			xPlayer.addInventoryItem(item, 1)
		end
	else
		TriggerClientEvent("pNotify:SendNotification", source, {text = "Du hast nicht genung Geld um dir "..itemlabel.."  zu kaufen", type = "error", timeout = math.random(1000, 1000), layout = "bottomRight"})
	end
end)
RegisterNetEvent('water')
AddEventHandler('water', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local money = xPlayer.getMoney(source)
	local item = 'water'
	local itemlabel = ESX.GetItemLabel(item)
	local price = 2
	local xItem = xPlayer.getInventoryItem(item)
	if money >= price then
		if xItem.limit ~= -1 and (xItem.count + 1) > xItem.limit then
			TriggerClientEvent("pNotify:SendNotification", source, {text = "Du hast nicht genung Platz für "..itemlabel.."", type = "error", timeout = math.random(1000, 1000), layout = "bottomRight"})
		else
			TriggerClientEvent("pNotify:SendNotification", source, {text = itemlabel.." für "..price.."$ gekauft", type = "success", timeout = math.random(1000, 1000), layout = "bottomRight"})
			xPlayer.removeMoney(price)
			xPlayer.addInventoryItem(item, 1)
		end
	else
		TriggerClientEvent("pNotify:SendNotification", source, {text = "Du hast nicht genung Geld um dir "..itemlabel.."  zu kaufen", type = "error", timeout = math.random(1000, 1000), layout = "bottomRight"})
	end
end)

RegisterNetEvent('milch')
AddEventHandler('milch', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local money = xPlayer.getMoney(source)
	local item = 'milk'
	local itemlabel = ESX.GetItemLabel(item)
	local price = 2
	local xItem = xPlayer.getInventoryItem(item)
	if money >= price then
		if xItem.limit ~= -1 and (xItem.count + 1) > xItem.limit then
			TriggerClientEvent("pNotify:SendNotification", source, {text = "Du hast nicht genung Platz für "..itemlabel.."", type = "error", timeout = math.random(1000, 1000), layout = "bottomRight"})
		else
			TriggerClientEvent("pNotify:SendNotification", source, {text = itemlabel.." für "..price.."$ gekauft", type = "success", timeout = math.random(1000, 1000), layout = "bottomRight"})
			xPlayer.removeMoney(price)
			xPlayer.addInventoryItem(item, 1)
		end
	else
		TriggerClientEvent("pNotify:SendNotification", source, {text = "Du hast nicht genung Geld um dir "..itemlabel.."  zu kaufen", type = "error", timeout = math.random(1000, 1000), layout = "bottomRight"})
	end
end)