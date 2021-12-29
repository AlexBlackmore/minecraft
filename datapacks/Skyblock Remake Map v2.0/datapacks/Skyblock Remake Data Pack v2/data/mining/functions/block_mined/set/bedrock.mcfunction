setblock ~ ~ ~ bedrock
execute align xyz unless entity @e[type=minecraft:area_effect_cloud,distance=..0.1,tag=regen_stone] run summon area_effect_cloud ~ ~ ~ {Duration:101,Tags:["regen_cobblestone"]}
execute align xyz if entity @e[type=minecraft:area_effect_cloud,distance=..0.1,tag=regen_stone] run data modify entity @e[type=minecraft:area_effect_cloud,distance=..0.1,nbt={Tags:["regen_stone"]},limit=1] Age set value 0
kill @s