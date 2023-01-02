lib.locale()

local ox_inventory = exports.ox_inventory

function assembleWeapon(data)
	ox_inventory:useItem(data, function(data)
		if lib.progressBar({
			duration = 2000,
			label = locale("assembling_weapon"),
			useWhileDead = false,
			canCancel = true,
			disable = {
				car = true,
			},
			anim = {
				dict = 'mini@repair',
				clip = 'fixing_a_ped'
			},
		}) then 
			
			for k, v in pairs(Config.WeaponNames) do
				if data.name == v then
					Config.Notification(locale("weapon_assembled"))
					if Config.SaveDurability then
						TriggerServerEvent("ars_disassemble-weapons:assembleWeapon", k, data.name)
					else
						TriggerServerEvent("ars_disassemble-weapons:assembleWeapon", k, data.name, data.metadata.durability)
					end

					break
				end
			end

		else
			Config.Notification(locale("assembelation_canceled"))
		end
	end)
end


exports("assembleWeapon", assembleWeapon)


function disassembleWeapon(slot)
	if lib.progressBar({
		duration = 2000,
		label = locale("disassembling_weapon"),
		useWhileDead = false,
		canCancel = true,
		disable = {
			car = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_ped'
		},
	}) then 
		Config.Notification(locale("weapon_disassembled"))
		SetCurrentPedWeapon(cache.ped, 0xA2719263)
		TriggerServerEvent("ars_disassemble-weapons:disassembleWeapon", slot)
	else
		Config.Notification(locale("disassembelation_canceled"))
	end
end


exports("disassembleWeapon", disassembleWeapon)



