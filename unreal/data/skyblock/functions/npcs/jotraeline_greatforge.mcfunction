execute if data entity @s SelectedItem.tag.Drill run tag @s add drill
tag @s[tag=drill,nbt={Inventory:[{Slot:-106b,tag:{Name:"Drill Part"}}]}] add drill_part
execute if data entity @s[tag=drill] Inventory[{Slot:-106b}].tag.DrillFuel run tag @s add drill_fuel

scoreboard objectives add random dummy "Random"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 3
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy

execute if entity @e[tag=rng,scores={random=0}] run tellraw @s[tag=!drill] ["",{"text":"<","color":"white"},{"text":"Jotraeline Greatforge","color":"dark_green"},{"text":"> Drills are sweet! Too bad you don't have one. I hear you can create them in the ","color":"white"},{"text":"Forge","color":"gold"},{"text":"!","color":"white"}]
execute if entity @e[tag=rng,scores={random=1}] run tellraw @s[tag=!drill] ["",{"text":"<","color":"white"},{"text":"Jotraeline Greatforge","color":"dark_green"},{"text":"> What are you doing talking to me without a ","color":"white"},{"text":"Drill","color":"green"},{"text":"? Come back when you have one!","color":"white"}]
execute if entity @e[tag=rng,scores={random=2}] run tellraw @s[tag=!drill] ["",{"text":"<","color":"white"},{"text":"Jotraeline Greatforge","color":"dark_green"},{"text":"> Come back to me when you have a ","color":"white"},{"text":"Drill","color":"green"},{"text":" in your inventory!","color":"white"}]
playsound minecraft:entity.villager.no player @s[tag=!drill]

kill @e[tag=rng]


execute as @s[tag=drill_part] run function skyblock:npcs/jotraeline_greatforge/add_part
execute as @s[tag=drill_fuel] run function skyblock:npcs/jotraeline_greatforge/add_fuel


tellraw @s[tag=drill,tag=!drill_part,tag=!drill_fuel] ["",{"text":"<","color":"white"},{"text":"Jotraeline Greatforge","color":"dark_green"},{"text":"> Sup, ","color":"white"},{"selector":"@s","color":"white"},{"text":"? I am ","color":"white"},{"text":"Jotraeline Greatforge","color":"dark_green"},{"text":", your one stop shop for refueling and upgrading ","color":"white"},{"text":"Drills","color":"green"},{"text":". Drills are like pickaxes, but better! They are powered with ","color":"white"},{"text":"Drill Fuel","color":"dark_green"},{"text":", which comes in many different forms.","color":"white"},{"text":" Biofuel","color":"aqua"},{"text":" is one of such fuels, which adds ","color":"white"},{"text":"+60 Durability","color":"dark_green"},{"text":" to your Drill!","color":"white"},{"text":" You can also apply ","color":"white"},{"text":"Drill Upgrades","color":"gold"},{"text":" to Drills, offering various buffs!","color":"white"},{"text":" Happy drilling!","color":"white"}]
playsound minecraft:entity.villager.yes player @s[tag=drill]


advancement revoke @s only skyblock:commands/npcs/jotraeline_greatforge
scoreboard objectives remove random
tag @s remove drill
tag @s remove drill_part
tag @s remove drill_fuel
