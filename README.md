# ars_disassemble_weapons
**WHAT IS THIS SCIPT?**
this is a simple script to assemble and disassemble your weapons using ox_inventory

**FEATURES**

1. Easy to configure
2. Resmon 0.0 idle and in use
3. Saves durability when weapon disassembled
4. Disassembles accessories

**INSTALLATION**

1. Insert the script in your resources folder
2. Ensure ars_disassemble_weapons in server.cfg
3. Setup the config for your likings

4. Restart your server and your good to go!

To add the button to weapons to disassemble as show in the preview video do the following steps

1. Open ox_inventory/data/weapons
2. replace with the following code the weapon you want to add the button to
```

		['WEAPON_NAME'] = {
			label = 'Testing 123',
			weight = 970,
			durability = 0.1,
			ammoname = 'ammo-9',
			buttons = {
				{
					label = 'Disassemble Weapon',
					action = function(slot)
						print(slot)
						exports.ars_disassemble_weapons:disassembleWeapon(slot)
					end
				},
			},
		},
```

**PREVIEW**
https://streamable.com/4lpxvg

**DOWNLOAD**
https://github.com/Arius-Development/ars_disassemble_weapons/releases
