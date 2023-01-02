local ox_inventory = exports.ox_inventory


lib.callback.register('ars_disassemble-weapons:getWeapons', function(source, weapon, w)
    local items = exports.ox_inventory:GetInventoryItems(source)

    return items
end)

