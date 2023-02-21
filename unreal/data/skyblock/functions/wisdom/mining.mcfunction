scoreboard players set @s mining_wisdom 0
scoreboard players set @s dummy 0

#Reforge
execute if data entity @s SelectedItem.tag.ReforgeMiningWisdom store result score @s dummy run data get entity @s SelectedItem.tag.ReforgeMiningWisdom

scoreboard players operation @s mining_wisdom += @s dummy


#Silverfish Pet
scoreboard objectives add level dummy "Level"
execute store result score @s level run data get entity @s XpLevel 100
scoreboard players set @s dummy 0
scoreboard players set @s[advancements={skyblock:pets/silverfish/rare=true}] dummy 25
scoreboard players set @s[advancements={skyblock:pets/silverfish/epic=true}] dummy 30
scoreboard players set @s[advancements={skyblock:pets/silverfish/legendary=true}] dummy 30

scoreboard players operation @s level *= @s dummy
scoreboard players set @s dummy 100
scoreboard players operation @s level /= @s dummy

scoreboard players operation @s mining_wisdom += @s level


#Compact
scoreboard players set @s level 0
execute store result score @s level run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"skyblock:compact"}].lvl

scoreboard players operation @s mining_wisdom += @s level


#Trinkets
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"All Skills Exp Boost"}}]}] dummy 10
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"All Skills Exp Super-Boost"}}]}] dummy 20
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Mining Exp Boost Common"}}]}] dummy 20
scoreboard players set @s[nbt={Inventory:[{tag:{Name:"Mining Exp Boost Rare"}}]}] dummy 40

scoreboard players operation @s mining_wisdom += @s dummy


scoreboard objectives add random dummy "Random"
execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @s random run data get entity @e[limit=1,tag=rng] UUID[0]

scoreboard players set @s dummy 100
scoreboard players operation @s random %= @s dummy

execute at @s if score @s random <= @s mining_wisdom run tellraw @s[scores={mining_wisdom=1..}] ["",{"text":"[@: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"mining_wisdom"},"italic":true,"color":"gray"},{"text":"% Mining Wisdom]","italic":true,"color":"gray"}]
execute at @s if score @s random <= @s mining_wisdom run summon experience_bottle ~ ~ ~


scoreboard objectives remove level
scoreboard objectives remove random