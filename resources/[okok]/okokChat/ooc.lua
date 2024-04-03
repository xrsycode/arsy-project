QBCore = nil

Citizen.CreateThread(function()
	while QBCore == nil do
		TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)
		Citizen.Wait(0)
    end
end)

RegisterNetEvent('chat:ooc')
AddEventHandler('chat:ooc', function(id, name, message, time)
    local id1 = PlayerId()
    local id2 = GetPlayerFromServerId(id) 
    if id2 == id1 then
        TriggerEvent('chat:addMessage', {
			template = '<div class="chat-message ooc"> <b><span style="color: #FFFFFF">[OOC] {0}</span>&nbsp;<span style="font-size: 14px; color: #FFFFFF;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
			args = { name, message, time }
		})
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(id1)), GetEntityCoords(GetPlayerPed(id2)), true) < Config.OOCDistance then
        TriggerEvent('chat:addMessage', {
			template = '<div class="chat-message ooc"> <b><span style="color: #FFFFFF">[OOC] {0}</span>&nbsp;<span style="font-size: 14px; color: #FFFFFF;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
			args = { name, message, time }
		})
    end
end)