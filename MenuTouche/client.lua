ESX = nil


RMenu.Add('SaykoV1', 'main', RageUI.CreateMenu("SaykoV1", "SaykoV1"))



Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
    while true do 
        RageUI.IsVisible(RMenu:Get('SaykoV1', 'main'), true, true, true, function()

            RageUI.ButtonWithStyle("→  Touche", "~g~Menu F5", {RightLabel = "~r~F5"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("→  Touche", "~g~Menu Vaux Tenue", {RightLabel = "~r~+"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("→  Touche", "~g~Menu Telephone", {RightLabel = "~r~F1"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("→  Touche", "~g~Menu F2 pour les Sim", {RightLabel = "~r~F2"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("→  Touche", "~g~Menu Fermer Les Voiture", {RightLabel = "~r~U"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("→  Touche", "~g~Menu Vétemen", {RightLabel = "~r~Y"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('pistolet')
                end
            end)
        end, function()
        end)
        Citizen.Wait(0)
        if IsControlJustPressed(1,166) then 
            RageUI.Visible(RMenu:Get('SaykoV1', 'main'), not RageUI.Visible(RMenu:Get('SaykoV1', 'main')))
        end
    end
end)


