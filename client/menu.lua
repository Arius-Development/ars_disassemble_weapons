function menu()
    lib.callback('ars_disassemble-weapons:getWeapons', false, function(items)
        local weapons = {}

        if Config.EnableMenu then
            if Config.Menu == "ox_lib_context_menu" then
                for i,v in pairs(items) do
                    if string.find(v.name, "WEAPON") then
                        table.insert(weapons, {
                            title = v.label,
                            description = locale("disassemble")..v.label,
                            metadata = {
                                {label = locale("components"), value = json.encode(v.metadata.components)},
                            },
                            onSelect = function(args)
                                disassembleWeapon(v.slot)
                            end,
                        })
                    end
                end

                if #weapons < 1 then return Config.Notification(locale("no_weapon")) end

                lib.registerContext({
                    id = 'weapon_disassemble_menu',
                    title = locale("menu_title"),
                    options = weapons
                })

                lib.showContext('weapon_disassemble_menu')

            elseif Config.Menu == "esx_menu_default" then
                ESX = exports["es_extended"]:getSharedObject() 

                for i,v in pairs(items) do
                    if string.find(v.name, "WEAPON") then
                        table.insert(weapons, {
                            label = v.label .. " "..json.encode(v.metadata.components),
                            slot = v.slot,
                        })
                    end
                end

                if #weapons < 1 then return Config.Notification(locale("no_weapon")) end

                ESX.UI.Menu.Open("default", GetCurrentResourceName(), "weapon_disassemble_menu", {
                    title = locale("menu_title"), 
                    align    = 'top-left', 
                    elements = weapons 
                }, function(data,menu) 
                    if data.current.slot then
                        disassembleWeapon(data.current.slot)
                    end

                end, function(data, menu) 
                    menu.close() 
                end)
            elseif Config.Menu == "ox_lib_menu" then
                for i,v in pairs(items) do
                    if string.find(v.name, "WEAPON") then
                        table.insert(weapons, {
                            label = v.label,
                            description = json.encode(v.metadata.components),
                            args = {slot = v.slot},
                        })
                    end
                end
                
                if #weapons < 1 then return Config.Notification(locale("no_weapon")) end

                lib.registerMenu({
                    id = 'weapon_disassemble_menu',
                    title = locale("menu_title"),
                    position = 'top-right',
                    options = weapons
                }, function(selected, scrollIndex, args)
                    disassembleWeapon(args.slot)
                end)
                
                    lib.showMenu('weapon_disassemble_menu')
            else
                print("invalid menu")
            end
        end
    end)
end

RegisterCommand("openMenu", function()
    menu()
end)



local keybind = lib.addKeybind({
    name = 'weapon_disassemble_menu',
    description = locale("key_description", Config.OpenMenuKey),
    defaultKey = Config.OpenMenuKey,
    onPressed = function(self)
        menu()
    end,
})

