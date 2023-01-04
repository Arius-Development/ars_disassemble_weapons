Config = {}

Config.Accessories      = true -- when disassembling it should disassemble accessories or not
Config.SaveDurability   = true -- save durability when disassembling weapon
Config.SaveSerialNumber = true -- save durability when disassembling weapon
Config.EnableMenu       = true -- enable disassembling menu
Config.OpenMenuKey      = "F10" -- key to open the menu
Config.Menu             = "esx_menu_default" -- esx_menu_default, ox_lib_context_menu, ox_lib_menu


function Config.Notification(msg)
    lib.notify({
        title = 'Alert',
        description = msg,
        position = 'top',
        style = {
            backgroundColor = '#3a4d57',
            color = '#fff'
        },
        icon = 'gun',
        iconColor = '#fff'
    })
end


Config.WeaponNames = {
    --[#] WEAPON NAME[#]--      --[#] DISASSEMBLED ITEM NAME[#]--
    ["WEAPON_PISTOL"]           = "pistol",
    ["WEAPON_PISTOL_MK2"]       = "pistolmk2",
    ["WEAPON_COMBATPISTOL"]     = "combatpistol",
    ["WEAPON_APPISTOL"]         = "appistol",
    ["WEAPON_SNSPISTOL"]        = "snspistol",
    ["WEAPON_HEAVYPISTOL"]      = "heavypistol",
    ["WEAPON_VINTAGEPISTOL"]    = "vintagepistol",
    ["WEAPON_MICROSMG"]         = "microsmg",
    ["WEAPON_SMG"]              = "smg",
    ["WEAPON_ASSAULTSMG"]       = "assaultmg",
    ["WEAPON_MG"]               = "mg",
    ["WEAPON_COMBATMG"]         = "combatmg",
    ["WEAPON_GUSENBERG"]        = "gusenberg",
    ["WEAPON_ASSAULTRIFLE"]     = "assaultrifle",
    ["WEAPON_CARBINERIFLE"]     = "carbinerifle",
    ["WEAPON_ADVANCEDRIFLE"]    = "advancedrifle",
    ["WEAPON_SPECIALCARBINE"]   = "specialcarbine",
    ["WEAPON_BULLPUPRIFLE"]     = "bullpuprifle",
    ["WEAPON_COMPACTRIFLE"]     = "compactrifle",
    ["WEAPON_SNIPERRIFLE"]      = "sniperrifle",
    ["WEAPON_HEAVYSNIPER"]      = "heavysniper",
    ["WEAPON_SAWNOFFSHOTGUN"]   = "sawnoffshotgun",
    ["WEAPON_PUMPSHOTGUN"]      = "pumpshotgun",
    ["WEAPON_ASSAULTSHOTGUN"]   = "assaultshotgun",
    ["WEAPON_BULLPUPSHOTGUN"]   = "bullpupshotgun",
    ["WEAPON_DBSHOTGUN"]        = "dbshotgun",
    ["WEAPON_DOUBLEACTION"]     = "doubleaction",
}

