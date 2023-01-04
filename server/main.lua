local ox_inventory = exports.ox_inventory

RegisterNetEvent("ars_disassemble-weapons:assembleWeapon", function(weapon, slot, w, ...)
    for i, v in pairs(Config.WeaponNames) do
        if string.find(i, string.upper(weapon)) then
            if Config.SaveDurability and Config.SaveSerialNumber then
                ox_inventory:AddItem(source, weapon, 1, ...)
            elseif Config.SaveDurability then
                ox_inventory:AddItem(source, weapon, 1, ...)
            elseif Config.SaveSerialNumber then
                ox_inventory:AddItem(source, weapon, 1, ...)
            else
                ox_inventory:AddItem(source, weapon, 1)
            end
            print(slot)
            ox_inventory:RemoveItem(source, w, 1, nil, slot)
            break
        end
    end
end)

RegisterNetEvent("ars_disassemble-weapons:disassembleWeapon", function(slot)
    local getWeaponInfo = ox_inventory:GetSlot(source, slot)    

    local metadata = getWeaponInfo.metadata

    if Config.Accessories then
        if metadata.components[1] ~= nil then
            for i = 1, #metadata.components do
                ox_inventory:AddItem(source, metadata.components[i], 1)
                if i == #metadata.components then
                    ox_inventory:RemoveItem(source, getWeaponInfo.name, 1, nil, slot)
                    if Config.SaveDurability and Config.SaveSerialNumber then
                        ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1, {durability = getWeaponInfo.metadata.durability, serial = getWeaponInfo.metadata.serial})
                    elseif Config.SaveDurability then
                        ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1, {durability = getWeaponInfo.metadata.durability})
                    elseif Config.SaveSerialNumber then
                        ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1, {serial = getWeaponInfo.metadata.serial})
                    else
                        ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1)
                    end
                end
            end
            return
        end
    else
        ox_inventory:RemoveItem(source, getWeaponInfo.name, 1, nil, slot)
        if Config.SaveDurability and Config.SaveSerialNumber then
            ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1, {durability = getWeaponInfo.metadata.durability, serial = getWeaponInfo.metadata.serial})
        elseif Config.SaveDurability then
            ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1, {durability = getWeaponInfo.metadata.durability})
        elseif Config.SaveSerialNumber then
            ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1, {serial = getWeaponInfo.metadata.serial})
        else
            ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1)
        end_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1)
        end

        return
    end
    ox_inventory:RemoveItem(source, getWeaponInfo.name, 1, nil, slot)
    if Config.SaveDurability and Config.SaveSerialNumber then
        ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1, {durability = getWeaponInfo.metadata.durability, serial = getWeaponInfo.metadata.serial})
    elseif Config.SaveDurability then
        ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1, {durability = getWeaponInfo.metadata.durability})
    elseif Config.SaveSerialNumber then
        ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1, {serial = getWeaponInfo.metadata.serial})
    else
        ox_inventory:AddItem(source, Config.WeaponNames[getWeaponInfo.name], 1)
    end
end)

