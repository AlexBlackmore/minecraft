tag @p[advancements={skyblock:commands/death=true}] add death

tag @p[tag=death,tag=booster_cookie] remove death
tag @p[tag=death,advancements={skyblock:accessories/piggy_bank=true}] remove death
execute if entity @p[advancements={skyblock:accessories/piggy_bank=true}] run function skyblock:abilities/accessories/piggy_bank_crack

tag @p[tag=death,advancements={skyblock:accessories/cracked_piggy_bank=true}] add cracked_piggy_bank
execute if entity @p[tag=death,advancements={skyblock:accessories/cracked_piggy_bank=true}] run function skyblock:abilities/accessories/piggy_bank_break


scoreboard objectives add xp_target dummy "XP Target" 
scoreboard objectives add xp_level dummy "XP Level"
 
execute as @p[tag=death] run execute store result score @s xp_level run data get entity @s XpLevel
execute as @p[tag=death] run execute store result score @s xp_target run data get entity @s XpLevel 0.5
execute as @p[tag=death,tag=cracked_piggy_bank] run execute store result score @s xp_target run data get entity @s XpLevel 0.75

tellraw @p[tag=death] ["",{"text":"[@: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"xp_level"},"italic":true,"color":"gray"},{"text":" -> ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"xp_target"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]

tag @p[tag=death] add xp_loss
function skyblock:xp_target

gamemode survival @s[gamemode=adventure]
advancement revoke @p[advancements={skyblock:commands/death=true}] only skyblock:commands/death

#Magical Milk Bucket
attribute @s minecraft:generic.max_health modifier remove 35-36-3-50-62
attribute @s minecraft:generic.armor modifier remove 71-37-74-97-32


tp @e[tag=boss] ~ ~-256 ~
tag @p[tag=xp_loss] remove xp_loss
tag @p[tag=death] remove death
tag @p[tag=cracked_piggy_bank] remove cracked_piggy_bank
scoreboard objectives remove xp_target
scoreboard objectives remove xp_level

