-----------------------------------------------
--Welcome Notify V0.2 by IllusiveTea
-----------------------------------------------
AddEventHandler("playerSpawned", function(spawn)

   local time = 20
   local messagetime = 30 --Change this for how long the message should display!
Citizen.CreateThread(function()
	while true do
	Citizen.Wait(0)
		while time < messagetime do
			Citizen.Trace(time)
			Citizen.Wait(1000)
 			time = time +1
		end
	end
end)

Citizen.CreateThread(function()
	while true do
	Citizen.Wait(0)
	local playerName = GetPlayerName( PlayerId() )
		while time < messagetime do
			Citizen.Wait(0)
			DrawText1("Bienvenue  "..playerName.." . toute L'equipe te souhaite la bienvenue dans ta Nouvelle ville !")
			   DrawText2("~g~Ce Serveur a etait cree et fournie par l equipe de Notre Hebergeur TheFamilyServ !!")
		end
	end
end)

end)


function DrawText1(text)
	SetTextFont(0)
	SetTextProportional(1)
	SetTextScale(0.0, 0.50)
	SetTextDropshadow(1, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.15, 0.10)
end

function DrawText2(text)
	SetTextFont(0)
	SetTextProportional(1)
	SetTextScale(0.0, 0.50)
	SetTextDropshadow(1, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.15, 0.13)
end

