tag @p[advancements={skyblock:commands/melee_damage=true}] add attacker
tag @p[advancements={skyblock:commands/ranged_damage=true}] add attacker
execute at @p[tag=attacker] run tag @e[nbt={HurtTime:10s},type=!player] add target
execute unless entity @e[tag=target] run tag @e[tag=projectile,type=armor_stand,limit=1,sort=nearest] add target
execute at @e[tag=target,type=#minecraft:monster] run tag @e[tag=projectile,type=armor_stand,distance=0..4] add target
execute at @e[tag=shot,tag=projectile,nbt={inGround:1b}] run tag @e[tag=projectile,type=armor_stand,distance=0..4] add target
tag @e[tag=shot,nbt={inGround:1b}] remove shot

scoreboard objectives add damage dummy "Damage"
scoreboard objectives add attack_damage dummy "Attack Damage"
scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add multiplier dummy "Multiplier"
scoreboard objectives add max_health dummy "Max Health"
scoreboard objectives add health dummy "Health"
scoreboard objectives add absorption dummy "Absorption"
scoreboard objectives add crit_chance dummy "Crit Chance"
scoreboard objectives add crit_damage dummy "Crit Damage"

scoreboard players set @e damage 0
scoreboard players set @e multiplier 0


execute as @s[advancements={skyblock:commands/melee_damage=true}] run function skyblock:melee_damage
execute as @s[advancements={skyblock:commands/ranged_damage=true}] run function skyblock:ranged_damage


#Armor
execute if predicate skyblock:random_chance/3 as @s[nbt={Inventory:[{Slot:103b,tag:{Name:"Pufferfish Hat"}}]}] run function skyblock:abilities/instant/spiky


#Crit Chance
function skyblock:get_crit_stats

execute at @p[tag=attacker] run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] crit_chance run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 100
execute as @e[tag=rng] run scoreboard players operation @s crit_chance %= @s dummy
execute if score @p[tag=attacker] crit_chance >= @e[limit=1,tag=rng] crit_chance run tag @p[tag=attacker] add crit


#Crit Damage
kill @e[tag=rng]
execute as @e[tag=target] if entity @p[tag=crit] run scoreboard players operation @s multiplier += @p[tag=crit] crit_damage


#Final Damage
execute store result score @e[tag=target] attack_damage run attribute @s minecraft:generic.attack_damage get
execute as @e[tag=target] run scoreboard players operation @s attack_damage *= @s multiplier
execute as @e[tag=target] run scoreboard players operation @s damage += @s attack_damage


execute if entity @s[nbt={SelectedItem:{tag:{Name:"Savanna Bow"}}}] as @e[tag=target] run scoreboard players operation @s damage += @s damage


scoreboard players set @e[tag=target] dummy 100
execute as @e[tag=target] run scoreboard players operation @s damage /= @s dummy 
tellraw @p[tag=crit,scores={crit_damage=1..}] ["",{"text":"[@: Critical Hit! +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"crit_damage"},"italic":true,"color":"gray"},{"text":"% damage (","italic":true,"color":"gray"},{"score":{"name":"*","objective":"crit_chance"},"italic":true,"color":"gray"},{"text":"%)]","italic":true,"color":"gray"}]
execute as @e[tag=target,scores={damage=1..}] run tellraw @p[tag=attacker] ["",{"text":"[@: ","italic":true,"color":"gray"},{"text":"+","italic":true,"color":"red"},{"score":{"name":"@s","objective":"damage"},"italic":true,"color":"red"},{"text":" damage (+","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"multiplier"},"italic":true,"color":"gray"},{"text":"%)]","italic":true,"color":"gray"}]
execute at @e[tag=target,scores={damage=1..}] run playsound minecraft:entity.experience_orb.pickup player @p[tag=attacker]
execute as @e[tag=target] run scoreboard players operation @s damage *= @s dummy 

execute as @s run function skyblock:deal_damage

attribute @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Pooch Sword"}}}] minecraft:generic.attack_damage modifier remove 27-74-7-61-76


scoreboard objectives remove damage
scoreboard objectives remove multiplier 
scoreboard objectives remove health 
scoreboard objectives remove absorption 
scoreboard objectives remove crit_chance 
scoreboard objectives remove crit_damage 

tag @e[tag=target] remove target
tag @e[tag=crit] remove crit
advancement revoke @s only skyblock:commands/melee_damage
advancement revoke @s only skyblock:commands/ranged_damage
tag @s remove attacker