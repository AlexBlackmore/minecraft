#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------ENTITY EDITS----------------#
execute if entity @s[tag=NaturallySpawning] run scoreboard players set @s Location 1
execute if entity @s[tag=NaturallySpawning] if entity @p[nbt={Dimension:"skyblock:the_end"}] run scoreboard players set @s Location 8
execute if entity @s[tag=NaturallySpawning] run function public_islands:location_list

data merge entity @s[type=minecraft:drowned] {CustomName:'{"text":"Drowned"}'}
execute if entity @s[type=creeper] run tag @s add RegularCreeper
execute if entity @s[type=villager,name=!Villager] run function skyblock:kill
execute if entity @s[type=slime,name=!Slime] run function skyblock:kill
execute if entity @s[type=magma_cube,name=!"Magma Cube"] run function skyblock:kill
execute if entity @s[type=#stats:can_burn] unless data entity @s ArmorItems[3].id run data modify entity @s ArmorItems[3] set value {id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1}}
#------------------SETUP-------------------#
tag @s add SetHealthDisplay
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign

execute if data entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base run data modify entity @s Attributes[{Name:"minecraft:generic.armor_toughness"}].Base set from entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute unless data entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base run data modify entity @s Attributes[{Name:"minecraft:generic.armor_toughness"}].Base set from entity @s Health
data modify entity @s HandItems[1] set value {id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"test"}'}}}
#-----------------DISPLAY------------------#
execute in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'{"selector":"@e[tag=SetHealthDisplay]"}'}
execute in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1
data modify entity @s HandItems[1].tag.display.Name set from entity @s CustomName

execute store result score @s P_Health run data get entity @s Attributes[{Name:"minecraft:generic.armor_toughness"}].Base
execute store result score @s DisplayMaxHealth run data get entity @s Attributes[{Name:"minecraft:generic.armor_toughness"}].Base
execute store result score @s DisplayLevel run data get entity @s PortalCooldown
execute if score @s DisplayLevel matches 0 run scoreboard players set @s DisplayLevel 1

execute if entity @s[tag=Slayer,tag=RevenantHorror] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"red","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"aqua"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"❤","color":"red"}]'}
execute if entity @s[tag=Slayer,tag=TarantulaBroodfather] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"dark_purple","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"dark_red"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"❤","color":"red"}]'}
execute if entity @s[tag=Slayer,tag=SvenPackmaster] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"red","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"white"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"❤","color":"red"}]'}
execute in minecraft:overworld run data modify entity @s[tag=Slayer] CustomName set from block 29999978 1 29832 Text1

execute if entity @s[tag=SvenPup] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"red","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"white"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"❤","color":"red"}]'}
execute in minecraft:overworld run data modify entity @s[tag=SvenPup] CustomName set from block 29999978 1 29832 Text1

execute if entity @s[tag=!Slayer,tag=!SvenPup] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"[","color":"dark_gray"},{"text":"Lv","color":"gray"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"DisplayLevel"},"color":"gray"},{"text":"] ","color":"dark_gray"},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"red"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"DisplayMaxHealth"},"color":"green"},{"text":"❤","color":"red"}]'}
execute in minecraft:overworld run data modify entity @s[tag=!Slayer] CustomName set from block 29999978 1 29832 Text1
#----------------RESETTING-----------------#
data merge entity @s {Health:1000f,Attributes:[{Name:"minecraft:generic.max_health",Base:1000}],CustomNameVisible:1b,ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],HandDropChances:[0.000F,0.000F]}
execute in minecraft:overworld run setblock 29999978 1 29832 air
tag @s remove SetHealthDisplay
tag @s add HasHealthDisplay
tag @s add HasDamageUpdate
#----------VANILLA MOB DETECTION-----------#
execute as @e[tag=HasHealthDisplay] store result score $TagsAmount Temp run tag @s list
execute as @e[tag=HasHealthDisplay] if score $TagsAmount Temp matches 1 run tag @s add VanillaMob
#---------IF ITS A WITHERBORN WITHER-------#
execute if entity @s[tag=witherborn] run data modify entity @s CustomName set value '{"text":"Dinnerbone"}'
#------------------------------------------#