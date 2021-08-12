execute at @p[predicate=skyblock:spider_sword] run tag @e[type=spider,nbt={HurtTime:10s},limit=1,sort=nearest] add spider_sword
execute at @p[predicate=skyblock:spider_sword] run tag @e[type=cave_spider,nbt={HurtTime:10s},limit=1,sort=nearest] add spider_sword
execute at @p[predicate=skyblock:spider_sword] run tag @e[type=bee,nbt={HurtTime:10s},limit=1,sort=nearest] add spider_sword
execute at @p[predicate=skyblock:spider_sword] run tag @e[type=silverfish,nbt={HurtTime:10s},limit=1,sort=nearest] add spider_sword
execute at @p[predicate=skyblock:spider_sword] run tag @e[type=endermite,nbt={HurtTime:10s},limit=1,sort=nearest] add spider_sword

execute at @p[predicate=skyblock:spider_sword] run playsound minecraft:entity.experience_orb.pickup player @p

execute store result score @p[predicate=skyblock:spider_sword] attack_damage run attribute @p[predicate=skyblock:spider_sword] minecraft:generic.attack_damage get
scoreboard players operation @p[predicate=skyblock:spider_sword] damage = @p[predicate=skyblock:spider_sword] attack_damage
scoreboard players add @p[predicate=skyblock:spider_sword] damage 6

execute store result score @e[tag=spider_sword] health run data get entity @e[limit=1,tag=spider_sword] Health
execute if score @e[limit=1,tag=spider_sword] health < @p[predicate=skyblock:spider_sword] damage run kill @e[tag=spider_sword]
scoreboard players operation @e[tag=spider_sword] health -= @p[predicate=skyblock:spider_sword] damage
execute store result entity @e[limit=1,tag=spider_sword] Health float 1 run scoreboard players get @e[limit=1,tag=spider_sword] health

tag @e[tag=spider_sword] remove spider_sword

function skyblock:abilities/reset_instant
