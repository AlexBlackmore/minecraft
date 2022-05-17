tag @p[tag=ability,nbt={Inventory:[{Slot:100b,tag:{Name:"Strong Dragon Boots"}},{Slot:101b,tag:{Name:"Strong Dragon Leggings"}},{Slot:102b,tag:{Name:"Strong Dragon Chestplate"}},{Slot:103b,tag:{Name:"Strong Dragon Helmet"}}]}] add strong_blood
tag @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Aspect of the Void"}}}] add aotv

execute unless entity @e[tag=teleport] run execute at @p[tag=strong_blood] run execute if block ^ ^ ^10 #minecraft:air run summon armor_stand ^ ^ ^10 {Tags:["teleport"]}
execute at @e[tag=teleport] run execute unless block ~ ~1 ~ #minecraft:air run kill @e[tag=teleport]
execute unless entity @e[tag=teleport] run execute at @p[tag=strong_blood] run execute if block ^ ^ ^9 #minecraft:air run summon armor_stand ^ ^ ^9 {Tags:["teleport"]}
execute at @e[tag=teleport] run execute unless block ~ ~1 ~ #minecraft:air run kill @e[tag=teleport]

execute unless entity @e[tag=teleport] run execute at @p[tag=ability] run execute if block ^ ^ ^8 #minecraft:air run summon armor_stand ^ ^ ^8 {Tags:["teleport"]}
execute at @e[tag=teleport] run execute unless block ~ ~1 ~ #minecraft:air run kill @e[tag=teleport]
execute unless entity @e[tag=teleport] run tellraw @p[tag=ability] {"text":"There are blocks in the way!","color":"red"}
execute unless entity @e[tag=teleport] run execute at @p[tag=ability] run execute if block ^ ^ ^7 #minecraft:air run summon armor_stand ^ ^ ^7 {Tags:["teleport"]}
execute at @e[tag=teleport] run execute unless block ~ ~1 ~ #minecraft:air run kill @e[tag=teleport]
execute unless entity @e[tag=teleport] run execute at @p[tag=ability] run execute if block ^ ^ ^6 #minecraft:air run summon armor_stand ^ ^ ^6 {Tags:["teleport"]}
execute at @e[tag=teleport] run execute unless block ~ ~1 ~ #minecraft:air run kill @e[tag=teleport]
execute unless entity @e[tag=teleport] run execute at @p[tag=ability] run execute if block ^ ^ ^5 #minecraft:air run summon armor_stand ^ ^ ^5 {Tags:["teleport"]}
execute at @e[tag=teleport] run execute unless block ~ ~1 ~ #minecraft:air run kill @e[tag=teleport]
execute unless entity @e[tag=teleport] run execute at @p[tag=ability] run execute if block ^ ^ ^4 #minecraft:air run summon armor_stand ^ ^ ^4 {Tags:["teleport"]}
execute at @e[tag=teleport] run execute unless block ~ ~1 ~ #minecraft:air run kill @e[tag=teleport]
execute unless entity @e[tag=teleport] run execute at @p[tag=ability] run execute if block ^ ^ ^3 #minecraft:air run summon armor_stand ^ ^ ^3 {Tags:["teleport"]}
execute at @e[tag=teleport] run execute unless block ~ ~1 ~ #minecraft:air run kill @e[tag=teleport]
execute unless entity @e[tag=teleport] run execute at @p[tag=ability] run execute if block ^ ^ ^2 #minecraft:air run summon armor_stand ^ ^ ^2 {Tags:["teleport"]}
execute at @e[tag=teleport] run execute unless block ~ ~1 ~ #minecraft:air run kill @e[tag=teleport]

execute if entity @e[tag=teleport] run tag @p[tag=ability] add instant_transmission
data modify entity @e[tag=teleport,limit=1] Rotation[0] set from entity @p[tag=instant_transmission] Rotation[0]
data modify entity @e[tag=teleport,limit=1] Rotation[1] set from entity @p[tag=instant_transmission] Rotation[1]
tp @e[tag=instant_transmission] @e[tag=teleport,limit=1]
kill @e[tag=teleport]

tag @p[tag=instant_transmission,nbt={Inventory:[{Slot:100b,tag:{Name:"Wise Dragon Boots"}},{Slot:101b,tag:{Name:"Wise Dragon Leggings"}},{Slot:102b,tag:{Name:"Wise Dragon Chestplate"}},{Slot:103b,tag:{Name:"Wise Dragon Helmet"}}]}] add wise_blood
xp add @p[tag=wise_blood,tag=aotv] -30 points
xp add @p[tag=wise_blood,tag=!aotv] -33 points
tellraw @p[tag=wise_blood,tag=aotv] {"text":"[Wise Blood: -30 XP]","italic":true,"color":"gray"}
tellraw @p[tag=wise_blood,tag=!aotv] {"text":"[Wise Blood: -33 XP]","italic":true,"color":"gray"}
tag @p[tag=aotv] remove aotv
xp add @p[tag=instant_transmission,tag=!wise_blood] -50 points
tag @p[tag=wise_blood] remove wise_blood
playsound minecraft:entity.enderman.teleport player @p[tag=instant_transmission]

attribute @p[tag=instant_transmission] minecraft:generic.movement_speed modifier add 71-45-2-79-79 "Instant Transmission" 0.5 multiply_base
attribute @p[tag=instant_transmission,tag=strong_blood] minecraft:generic.attack_damage modifier add 44-48-54-56-99 "Strong Blood" 1 add
tellraw @p[tag=instant_transmission] {"text":"[Instant Transmission: +50% Speed]","italic":true,"color":"gray"}
tellraw @p[tag=instant_transmission,tag=strong_blood] {"text":"[Strong Blood: +1 Attack Damage]","italic":true,"color":"gray"}

schedule function skyblock:abilities/instant/instant_transmission_end 3s replace
execute if entity @p[tag=strong_blood] run schedule function skyblock:abilities/instant/instant_transmission_end 6s replace
