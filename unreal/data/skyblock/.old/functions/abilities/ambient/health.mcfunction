tag @p[advancements={skyblock:commands/ambient/health=true}] add health
tag @p[tag=health,nbt={Inventory:[{Slot:100b,tag:{Name:"Lapis Armor Boots"}},{Slot:101b,tag:{Name:"Lapis Armor Leggings"}},{Slot:102b,tag:{Name:"Lapis Armor Chestplate"}},{Slot:103b,tag:{Name:"Lapis Armor Helmet"}}]}] add lapis_armor

attribute @p[tag=health] minecraft:generic.max_health modifier remove 33-43-91-52-72
attribute @p[tag=lapis_armor] minecraft:generic.max_health modifier add 33-43-91-52-72 "Health" 12 add

tellraw @p[tag=lapis_armor] {"text":"[Health: +12 Max Health]","italic":true,"color":"gray"}
tellraw @p[tag=health,tag=!lapis_armor] {"text":"[Health: +0 Max Health]","italic":true,"color":"gray"}

advancement revoke @p[advancements={skyblock:commands/ambient/health=true},tag=!lapis_armor] only skyblock:commands/ambient/health
execute if entity @p[tag=lapis_armor] run schedule function skyblock:abilities/ambient/health 2s replace
tag @p[tag=health] remove health
tag @p[tag=lapis_armor] remove lapis_armor