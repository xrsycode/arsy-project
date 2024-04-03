function notification(icon,appname,title, message, time ,sound)
	if sound == nil then
		sound = 'default'
	end
	SendNUIMessage({
		action = 'open',
		sound = sound,
		icon = icon,
		title = title,
		message = message,
		time = time,
		appname = appname
	})
end

RegisterNetEvent('notification:show')
AddEventHandler('notification:show', function(icon,appname,title, message, time ,sound)
	notification(icon,appname,title, message, time ,sound)
end)

---- Example cmd 
--- Tuturial 
--[[

 color : https://getbootstrap.com/docs/4.0/utilities/colors/
 icon : https://fontawesome.com/v5.15/icons/keyboard

	
	exports['Atanotify']:Notification('ICON COLOR',appname,title, message , time ,sound)

	time = 5000 - 15000 good

	sound = default or not1 or not2 and you can add new sound to html/sound


]]--
RegisterCommand('long', function()
	exports['ataNotification']:notification('far fa-keyboard text-primary','Long text test',"This is long text test", "Lorem, ipsum dolor sit amet consectetur adipisicing elit. odio harum explicabo eligendi quibusdam pariatur temporibus ducimus, ea iste! Fugit temporibus aliquam tempore sint ipsum? Beatae, sed. Perspiciatis mollitia voluptatum aperiam est!		", 15000,'not1')
end)

RegisterCommand('gmail', function()
	exports['ataNotification']:notification('far fa-envelope-open text-danger','GMAIL',"", "You have been accepted to Harvard University. Click on the link below to see more information", 15000)
end)

RegisterCommand('error', function()
	exports['ataNotification']:notification('fas fa-exclamation-circle text-danger','Server',"ERROR", "You do not have permission to do this", 15000)
end)
RegisterCommand('whatsapp', function()
	exports['ataNotification']:notification('fab fa-whatsapp text-success','WHATSAPP',"Carl Johnson", "Hello Where Are You ??", 15000,'not2')
end)


RegisterCommand('visa', function()
	exports['ataNotification']:notification('fab fa-cc-visa text-info','Visa',"Transfer Money", "You Have Sent 300$ To Ata!", 15000,"not1")
end)

RegisterCommand('test', function()
	exports['ataNotification']:notification('far fa-check-circle text-success','Your Server Name',"SUCCESS", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia.", 15000)
end)
