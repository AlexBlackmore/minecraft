tag @p[predicate=skyblock:end_sword] add end_sword_player
tag @p[predicate=skyblock:voidwalker_katana] add end_sword_player

execute at @p[tag=end_sword_player] run tag @e[type=enderman,nbt={HurtTime:10s},limit=1,sort=nearest] add end_sword
execute at @p[tag=end_sword_player] run tag @e[type=endermite,nbt={HurtTime:10s},limit=1,sort=nearest] add end_sword
execute at @p[tag=end_sword_player] run tag @e[type=ender_dragon,nbt={HurtTime:10s},limit=1,sort=nearest] add end_sword
execute at @p[predicate=skyblock:voidwalker_katana] run tag @e[type=enderman,nbt={HurtTime:10s},limit=1,sort=nearest] add end_sword

execute at @p[tag=end_sword_player] run playsound minecraft:entity.experience_orb.pickup player @p

execute store result score @p[tag=end_sword_player] attack_damage run attribute @p[tag=end_sword_player] minecraft:generic.attack_damage get
scoreboard players operation @p[tag=end_sword_player] damage = @p[tag=end_sword_player] attack_damage
scoreboard players add @p[predicate=skyblock:end_sword] damage 7
scoreboard players add @p[predicate=skyblock:voidwalker_katana] damage 16

execute store result score @e[tag=end_sword] health run data get entity @e[limit=1,tag=end_sword] Health
execute if score @e[limit=1,tag=end_sword] health < @p[tag=end_sword_player] damage run kill @e[tag=end_sword]
scoreboard players operation @e[tag=end_sword] health -= @p[tag=end_sword_player] damage
execute store result entity @e[limit=1,tag=end_sword] Health float 1 run scoreboard players get @e[limit=1,tag=end_sword] health

tag @e[tag=end_sword] remove end_sword
tag @e[tag=end_sword_player] remove end_sword_player

function skyblock:abilities/reset_instant
