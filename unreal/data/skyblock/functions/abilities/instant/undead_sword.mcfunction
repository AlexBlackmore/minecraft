execute at @p[predicate=skyblock:end_sword] run tag @e[type=drowned,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=husk,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=phantom,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=skeleton,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=skeleton_horse,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=stray,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=wither,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=wither_skeleton,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=zoglin,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=zombie,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=zombie_sword,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=zombie_villager,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword
execute at @p[predicate=skyblock:undead_sword] run tag @e[type=zombified_piglin,nbt={HurtTime:10s},limit=1,sort=nearest] add undead_sword

execute at @p[predicate=skyblock:undead_sword] run playsound minecraft:entity.experience_orb.pickup player @p

execute store result score @p[predicate=skyblock:undead_sword] attack_damage run attribute @p[predicate=skyblock:undead_sword] minecraft:generic.attack_damage get
scoreboard players operation @p[predicate=skyblock:undead_sword] damage = @p[predicate=skyblock:undead_sword] attack_damage
scoreboard players add @p[predicate=skyblock:undead_sword] damage 6

execute store result score @e[tag=undead_sword] health run data get entity @e[limit=1,tag=undead_sword] Health
execute if score @e[limit=1,tag=undead_sword] health < @p[predicate=skyblock:undead_sword] damage run kill @e[tag=undead_sword]
scoreboard players operation @e[tag=undead_sword] health -= @p[predicate=skyblock:undead_sword] damage
execute store result entity @e[limit=1,tag=undead_sword] Health float 1 run scoreboard players get @e[limit=1,tag=undead_sword] health

tag @e[tag=undead_sword] remove undead_sword

function skyblock:abilities/reset_instant
