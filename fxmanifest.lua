fx_version   'cerulean'
use_fxv2_oal 'yes'
lua54        'yes'
game         'gta5'
version      '1.0.2'

author          '🔪 | Ali#0169'
description     'Disassemble weapon for ox_inventory!'


client_script   "client/*.lua"
server_script   "server/*.lua"

shared_scripts  {
    '@ox_lib/init.lua',
    'config.lua',
}

files {
    'locales/*.json'
}

dependencies {
	'ox_lib',
	'ox_inventory',
}
