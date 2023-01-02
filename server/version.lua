CreateThread(function()
    lib.versionCheck('Arius-Development/ars_disassemble_weapons')
    if Config.EnableMenu then
        local success, msg = lib.checkDependency('ox_inventory', '2.15.0')
        if success then return end
        if not success then
            while true do
                print("^3[ERROR] ^0 To use the the menu feature you need to have an updated version of ox_inventory 2.15.0 +")
                print(msg)
                Wait(1000)
            end
        end
    end
end)

