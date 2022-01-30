tag @p[advancements={skyblock:commands/bonus_damage=true}] add attacker
execute at @p[tag=attacker] run tag @e[nbt={HurtTime:10s},type=!player] add target
execute unless entity @e[tag=target] run tag @e[tag=projectile,type=armor_stand,limit=1,sort=nearest] add target
execute at @e[tag=target,type=#skyblock:hostile] run tag @e[tag=projectile,type=armor_stand,distance=0..4] add target
execute at @e[tag=shot,tag=projectile,nbt={inGround:1b}] run tag @e[tag=projectile,type=armor_stand,distance=0..4] add target
tag @e[tag=shot,nbt={inGround:1b}] remove shot

scoreboard objectives add damage dummy "Damage"
scoreboard objectives add attack_damage dummy "Attack Damage"
scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add multiplier dummy "Multiplier"
scoreboard objectives add health dummy "Health"
scoreboard objectives add absorption dummy "Absorption"
scoreboard objectives add crit_chance dummy "Crit Chance"
scoreboard objectives add crit_damage dummy "Crit Damage"

scoreboard players set @e damage 0
scoreboard players set @e multiplier 0


#CLEAVER
execute at @e[tag=target] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Cleaver"}}}] run scoreboard players add @e[type=#skyblock:hostile,distance=0..3,tag=!target] multiplier 40
execute at @e[tag=target] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Super Cleaver"}}}] run scoreboard players add @e[type=#skyblock:hostile,distance=0..3,tag=!target] multiplier 50
execute at @e[tag=target] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Hyper Cleaver"}}}] run scoreboard players add @e[type=#skyblock:hostile,distance=0..4,tag=!target] multiplier 50
tag @e[tag=!target,scores={multiplier=1..}] add target


#BOUNCY ARROWS
execute if entity @p[tag=attacker,advancements={skyblock:commands/abilities/bouncy=true}] run function skyblock:abilities/instant/bouncy
advancement revoke @p[advancements={skyblock:commands/abilities/bouncy=true}] only skyblock:commands/abilities/bouncy

#ICY ARROWS
execute if entity @p[tag=attacker,advancements={skyblock:commands/abilities/icy_arrow=true}] run effect give @e[tag=target] slowness 3
advancement revoke @p[advancements={skyblock:commands/abilities/icy_arrow=true}] only skyblock:commands/abilities/icy_arrow

#ARMORSHED ARROWS
execute if entity @p[tag=attacker,advancements={skyblock:commands/abilities/armorshed_arrow=true}] run effect give @e[tag=target] weakness 30
advancement revoke @p[advancements={skyblock:commands/abilities/armorshed_arrow=true}] only skyblock:commands/abilities/armorshed_arrow

#GLUE ARROWS
execute if entity @p[tag=attacker,advancements={skyblock:commands/abilities/glue_arrow=true}] run effect give @e[tag=target] slowness 2 6
advancement revoke @p[advancements={skyblock:commands/abilities/glue_arrow=true}] only skyblock:commands/abilities/glue_arrow


#Swords
execute as @e[tag=target,type=#skyblock:arthropods] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Spider Sword"}}}] run scoreboard players add @s multiplier 100
execute as @e[tag=target,type=#skyblock:arthropods] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Scorpion Foil"}}}] run scoreboard players add @s multiplier 250

execute as @e[tag=target] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Prismarine Blade"}}},predicate=skyblock:in_water] run scoreboard players add @s multiplier 200

execute as @e[tag=target,type=#skyblock:ender] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"End Sword"}}}] run scoreboard players add @s multiplier 100

execute as @e[tag=target,type=enderman] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Voidwalker Katana"}}}] run scoreboard players add @s multiplier 100
execute as @e[tag=target,type=enderman] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Voidedge Katana"}}}] run scoreboard players add @s multiplier 150
execute as @e[tag=target,type=enderman] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Vorpal Katana"}}}] run scoreboard players add @s multiplier 200
execute as @e[tag=target,type=enderman] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Atomsplit Katana"}}}] run scoreboard players add @s multiplier 250
execute as @e[tag=target,type=enderman] if entity @p[tag=attacker,tag=soulcry,nbt={SelectedItem:{tag:{Name:"Voidedge Katana"}}}] run scoreboard players add @s multiplier 350
execute as @e[tag=target,type=enderman] if entity @p[tag=attacker,tag=soulcry,nbt={SelectedItem:{tag:{Name:"Vorpal Katana"}}}] run scoreboard players add @s multiplier 500
execute as @e[tag=target,type=enderman] if entity @p[tag=attacker,tag=soulcry,nbt={SelectedItem:{tag:{Name:"Atomsplit Katana"}}}] run scoreboard players add @s multiplier 650

execute as @e[tag=target,type=#skyblock:undead] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Undead Sword"}}}] run scoreboard players add @s multiplier 100
execute as @e[tag=target,type=#skyblock:zombies] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Revenant Falchion"}}}] run scoreboard players add @s multiplier 150
execute as @e[tag=target,type=#skyblock:zombies] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Reaper Falchion"}}}] run scoreboard players add @s multiplier 200
execute as @e[tag=target,type=#skyblock:zombies] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] run scoreboard players add @s multiplier 250

execute as @e[tag=target,type=wither] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Necron's Blade"}}}] run scoreboard players add @s multiplier 50
execute as @e[tag=target,type=wither] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Hyperion"}}}] run scoreboard players add @s multiplier 50
execute as @e[tag=target,type=wither] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Astraea"}}}] run scoreboard players add @s multiplier 50
execute as @e[tag=target,type=wither] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Scylla"}}}] run scoreboard players add @s multiplier 50
execute as @e[tag=target,type=wither] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Valkyrie"}}}] run scoreboard players add @s multiplier 50

attribute @p[tag=heartstopper] minecraft:generic.attack_damage modifier remove 33-22-41-31-5
tellraw @p[tag=heartstopper] {"text":"[Heartstopper: -250% Attack Damage]","italic":true,"color":"gray"}
tag @p[tag=heartstopper] remove heartstopper

execute if entity @p[tag=attacker,predicate=skyblock:sneaking,nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] run function skyblock:abilities/instant/throw
execute as @p[tag=attacker,predicate=!skyblock:sneaking,nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] run execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:vanishing_curse"}] run item modify entity @s weapon.mainhand skyblock:remove_vanishing_curse

tag @p[tag=attacker,predicate=skyblock:random_chance50,nbt={SelectedItem:{tag:{Name:"Reaper Falchion"}}}] add heal
effect give @p[tag=heal] instant_health
tellraw @p[tag=heal] {"text":"[Reaper Falchion: +Instant Health]","italic":true,"color":"gray"}
tag @p[tag=heal] remove heal

tag @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] add heal
effect give @p[tag=heal] instant_health 1 1
tellraw @p[tag=heal] {"text":"[Axe of the Shredded: +Instant Health II]","italic":true,"color":"gray"}
tag @p[tag=heal] remove heal

execute as @e[tag=target,type=#skyblock:undead] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Spirit Sword"}}}] run function skyblock:abilities/spirit_damage

execute if entity @e[tag=target,type=wolf] run attribute @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Pooch Sword"}}}] minecraft:generic.attack_damage modifier add 27-74-7-61-76 "Pooch Sword" 30 add

attribute @p[tag=attacker] minecraft:generic.attack_damage modifier remove 9-65-15-20-96
tellraw @p[tag=attacker,tag=me_smash_head] {"text":"[ME SMASH HEAD: -100% Attack Damage","italic":true,"color":"gray"}
execute if entity @p[tag=attacker,tag=me_smash_head] run effect give @e[tag=target,type=#skyblock:animals] weakness 30 6
tag @p[tag=attacker] remove me_smash_head

execute if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Aspect of the End"}},Inventory:[{Slot:100b,tag:{Name:"Strong Dragon Boots"}},{Slot:101b,tag:{Name:"Strong Dragon Leggings"}},{Slot:102b,tag:{Name:"Strong Dragon Chestplate"}},{Slot:103b,tag:{Name:"Strong Dragon Helmet"}}]}] run scoreboard players add @e[tag=target] damage 1500
execute if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Aspect of the Void"}},Inventory:[{Slot:100b,tag:{Name:"Strong Dragon Boots"}},{Slot:101b,tag:{Name:"Strong Dragon Leggings"}},{Slot:102b,tag:{Name:"Strong Dragon Chestplate"}},{Slot:103b,tag:{Name:"Strong Dragon Helmet"}}]}] run scoreboard players add @e[tag=target] damage 1500

tag @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Emerald Blade"}}}] add emerald_blade
execute as @p[tag=emerald_blade] run execute store result score @s dummy run data get entity @s XpLevel 100
execute as @e[tag=target] if entity @p[tag=emerald_blade] run scoreboard players operation @s damage += @p[tag=emerald_blade] dummy
tag @p[tag=emerald_blade] remove emerald_blade


#Bows
execute as @e[tag=target,type=#skyblock:wither] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Wither Bow"}}}] run scoreboard players add @s multiplier 100

execute as @e[tag=target] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Savanna Bow"}}}] run scoreboard players add @s multiplier 100

execute if entity @e[tag=target,type=#skyblock:aquatic] run tag @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Prismarine Bow"}},Inventory:[{Slot:-106b,id:"minecraft:prismarine_shard"}]}] add prismarine_bow
execute if entity @p[tag=prismarine_bow] run scoreboard players add @e[tag=target,type=#skyblock:aquatic] multiplier 300
item modify entity @p[tag=prismarine_bow] weapon.offhand skyblock:subtract_item
tag @p[tag=prismarine_bow] remove prismarine_bow

execute as @e[tag=target,type=#skyblock:undead] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Undead Bow"}}}] run scoreboard players add @s multiplier 100
execute as @e[tag=target,type=#skyblock:undead] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Super Undead Bow"}}}] run scoreboard players add @s multiplier 100
execute as @e[tag=target,type=#skyblock:undead] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Death Bow"}}}] run scoreboard players add @s multiplier 100

execute if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Super Undead Bow"}}},predicate=skyblock:random_chance25] run function skyblock:abilities/instant/bouncy
execute if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Death Bow"}}},predicate=skyblock:random_chance50] run function skyblock:abilities/instant/bouncy
execute if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Death Bow"}}},predicate=skyblock:random_chance50] run function skyblock:abilities/instant/bouncy

tag @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Magma Bow"}},Inventory:[{Slot:-106b,id:"minecraft:magma_cream"}]}] add magma_bow
execute as @e[tag=target] if entity @p[tag=magma_bow] run scoreboard players add @s multiplier 100
item modify entity @p[tag=magma_bow] weapon.offhand skyblock:subtract_item
tag @p[tag=magma_bow] remove magma_bow

execute as @e[tag=target] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Soulstealer Bow"}}}] run scoreboard players add @s multiplier 100

execute if entity @e[tag=target,type=#skyblock:cube] run tag @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Slime Bow"}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball"}]}] add slime_bow
execute as @e[tag=target,type=#skyblock:cube] if entity @p[tag=slime_bow] run scoreboard players add @s multiplier 400
item modify entity @p[tag=slime_bow] weapon.offhand skyblock:subtract_item
tag @p[tag=slime_bow] remove slime_bow

execute as @e[tag=target,type=#skyblock:undead] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Spirit Bow"}}}] run function skyblock:abilities/spirit_damage



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


#FINAL DAMAGE
execute as @e[tag=target] run execute store result score @s attack_damage run attribute @p[tag=attacker] minecraft:generic.attack_damage get
execute as @e[tag=target] run scoreboard players operation @s attack_damage *= @s multiplier
execute as @e[tag=target] run scoreboard players operation @s damage += @s attack_damage


execute as @e[tag=target] if entity @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Savanna Bow"}}}] run scoreboard players operation @s damage += @s damage


scoreboard players set @e[tag=target] dummy 100
execute as @e[tag=target] run scoreboard players operation @s damage /= @s dummy 
tellraw @p[tag=crit,scores={crit_damage=1..}] ["",{"text":"[@: Critical Hit! +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"crit_damage"},"italic":true,"color":"gray"},{"text":"% damage (","italic":true,"color":"gray"},{"score":{"name":"*","objective":"crit_chance"},"italic":true,"color":"gray"},{"text":"%)]","italic":true,"color":"gray"}]
execute as @e[tag=target,scores={damage=1..}] run tellraw @p[tag=attacker] ["",{"text":"[@: ","italic":true,"color":"gray"},{"text":"+","italic":true,"color":"red"},{"score":{"name":"@s","objective":"damage"},"italic":true,"color":"red"},{"text":" damage (+","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"multiplier"},"italic":true,"color":"gray"},{"text":"%)]","italic":true,"color":"gray"}]
execute at @e[tag=target,scores={damage=1..}] run playsound minecraft:entity.experience_orb.pickup player @p[tag=attacker]
execute as @e[tag=target] run scoreboard players operation @s damage *= @s dummy 

function skyblock:deal_damage

attribute @p[tag=attacker,nbt={SelectedItem:{tag:{Name:"Pooch Sword"}}}] minecraft:generic.attack_damage modifier remove 27-74-7-61-76


scoreboard objectives remove damage
scoreboard objectives remove dummy
scoreboard objectives remove multiplier 
scoreboard objectives remove health 
scoreboard objectives remove absorption 
scoreboard objectives remove crit_chance 
scoreboard objectives remove crit_damage 

tag @e[tag=target] remove target
tag @e[tag=crit] remove crit
advancement revoke @p[tag=attacker] only skyblock:commands/bonus_damage
tag @p[tag=attacker] remove attacker