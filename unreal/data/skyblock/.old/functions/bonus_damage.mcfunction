tag @p[advancements={skyblock:commands/bonus_damage=true}] add bonus_damage
execute at @p[tag=bonus_damage] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest,type=!player] add target
execute unless entity @e[tag=target] run tag @e[tag=projectile,type=armor_stand,limit=1,sort=nearest] add target
execute at @e[tag=target,type=#minecraft:hostile] run tag @e[tag=projectile,type=armor_stand,distance=0..4] add target
execute at @e[tag=shot,tag=projectile,nbt={inGround:1b}] run tag @e[tag=projectile,type=armor_stand,distance=0..4] add target
tag @e[tag=shot,nbt={inGround:1b}] remove shot

scoreboard objectives add damage dummy "Damage"
scoreboard objectives add attack_damage dummy "Attack Damage"
scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add multiplier dummy "Multiplier"
scoreboard objectives add health dummy "Health"
scoreboard objectives add crit_chance dummy "Crit Chance"
scoreboard objectives add crit_damage dummy "Crit Damage"

scoreboard players set @p[tag=bonus_damage] damage 0


#Swords
execute if entity @e[tag=target,type=#minecraft:arthropods] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Spider Sword"}}}] multiplier 100

execute if entity @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Cleaver"}}}] run function skyblock:abilities/instant/cleave
execute if entity @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Super Cleaver"}}}] run function skyblock:abilities/instant/cleave
execute if entity @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Hyper Cleaver"}}}] run function skyblock:abilities/instant/cleave

execute if entity @e[tag=target,type=#minecraft:arthropods] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Scorpion Foil"}}}] multiplier 250
attribute @p[tag=heartstopper] minecraft:generic.attack_damage modifier remove 33-22-41-31-5
tellraw @p[tag=heartstopper] {"text":"[Heartstopper: -250% Attack Damage]","italic":true,"color":"gray"}
tag @p[tag=heartstopper] remove heartstopper

scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Prismarine Blade"}}},predicate=skyblock:in_water] multiplier 200

execute if entity @e[tag=target,type=#minecraft:ender] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"End Sword"}}}] multiplier 100

execute if entity @e[tag=target,type=enderman] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Voidwalker Katana"}}}] multiplier 100
execute if entity @e[tag=target,type=enderman] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Voidedge Katana"}}}] multiplier 150
execute if entity @e[tag=target,type=enderman] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Vorpal Katana"}}}] multiplier 200
execute if entity @e[tag=target,type=enderman] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Atomsplit Katana"}}}] multiplier 250

execute if entity @e[tag=target,type=enderman] run scoreboard players add @p[tag=bonus_damage,tag=soulcry,nbt={SelectedItem:{tag:{Name:"Voidedge Katana"}}}] multiplier 350
execute if entity @e[tag=target,type=enderman] run scoreboard players add @p[tag=bonus_damage,tag=soulcry,nbt={SelectedItem:{tag:{Name:"Vorpal Katana"}}}] multiplier 500
execute if entity @e[tag=target,type=enderman] run scoreboard players add @p[tag=bonus_damage,tag=soulcry,nbt={SelectedItem:{tag:{Name:"Atomsplit Katana"}}}] multiplier 650

execute if entity @e[tag=target,type=#minecraft:undead] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Undead Sword"}}}] multiplier 100
execute if entity @e[tag=target,type=#minecraft:zombies] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Revenant Falchion"}}}] multiplier 150
execute if entity @e[tag=target,type=#minecraft:zombies] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Reaper Falchion"}}}] multiplier 200
execute if entity @e[tag=target,type=#minecraft:zombies] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] multiplier 250

execute if entity @p[tag=bonus_damage,predicate=skyblock:sneaking,nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] run function skyblock:abilities/instant/throw
execute as @p[tag=bonus_damage,predicate=!skyblock:sneaking,nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] run execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:vanishing_curse"}] run item modify entity @s weapon.mainhand skyblock:remove_vanishing_curse

tag @p[tag=bonus_damage,predicate=skyblock:random_chance50,nbt={SelectedItem:{tag:{Name:"Reaper Falchion"}}}] add heal
effect give @p[tag=heal] instant_health
tellraw @p[tag=heal] {"text":"[Reaper Falchion: +Instant Health]","italic":true,"color":"gray"}
tag @p[tag=heal] remove heal

tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Axe of the Shredded"}}}] add heal
effect give @p[tag=heal] instant_health 1 1
tellraw @p[tag=heal] {"text":"[Axe of the Shredded: +Instant Health II]","italic":true,"color":"gray"}
tag @p[tag=heal] remove heal

execute if entity @e[tag=target,type=#minecraft:undead] run execute if entity @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Spirit Sword"}}}] run function skyblock:abilities/spirit_damage

execute if entity @e[tag=target,type=wither] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Necron's Blade"}}}] multiplier 50
execute if entity @e[tag=target,type=wither] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Hyperion"}}}] multiplier 50
execute if entity @e[tag=target,type=wither] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Astraea"}}}] multiplier 50
execute if entity @e[tag=target,type=wither] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Scylla"}}}] multiplier 50
execute if entity @e[tag=target,type=wither] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Valkyrie"}}}] multiplier 50

execute if entity @e[tag=target,type=wolf] run attribute @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Pooch Sword"}}}] minecraft:generic.attack_damage modifier add 27-74-7-61-76 "Pooch Sword" 30 add

attribute @p[tag=bonus_damage] minecraft:generic.attack_damage modifier remove 9-65-15-20-96
tellraw @p[tag=bonus_damage,tag=me_smash_head] {"text":"[ME SMASH HEAD: -100% Attack Damage","italic":true,"color":"gray"}
execute if entity @p[tag=bonus_damage,tag=me_smash_head] run effect give @e[tag=target,type=#minecraft:animals] weakness 30 6
tag @p[tag=bonus_damage] remove me_smash_head

execute as @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Aspect of the End"}},Inventory:[{Slot:100b,tag:{Name:"Strong Dragon Boots"}},{Slot:101b,tag:{Name:"Strong Dragon Leggings"}},{Slot:102b,tag:{Name:"Strong Dragon Chestplate"}},{Slot:103b,tag:{Name:"Strong Dragon Helmet"}}]}] run scoreboard players add @s damage 1500
execute as @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Aspect of the Void"}},Inventory:[{Slot:100b,tag:{Name:"Strong Dragon Boots"}},{Slot:101b,tag:{Name:"Strong Dragon Leggings"}},{Slot:102b,tag:{Name:"Strong Dragon Chestplate"}},{Slot:103b,tag:{Name:"Strong Dragon Helmet"}}]}] run scoreboard players add @s damage 1500

tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Emerald Blade"}}}] add emerald_blade
execute as @p[tag=emerald_blade] run execute store result score @s dummy run data get entity @s XpLevel 100
execute as @p[tag=emerald_blade] run scoreboard players operation @s damage += @s dummy
tag @p[tag=emerald_blade] remove emerald_blade


#Bows
execute if entity @e[tag=target,type=#minecraft:wither] run scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Wither Bow"}}}] multiplier 100

execute as @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Savanna Bow"}}}] run scoreboard players add @s multiplier 100

execute if entity @e[tag=target,type=#minecraft:aquatic] run tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Prismarine Bow"}},Inventory:[{Slot:-106b,id:"minecraft:prismarine_shard"}]}] add prismarine_bow
scoreboard players add @p[tag=prismarine_bow] multiplier 300
item modify entity @p[tag=prismarine_bow] weapon.offhand skyblock:subtract_item
tag @p[tag=prismarine_bow] remove prismarine_bow

execute if entity @e[tag=target,tag=ender_warp] run function skyblock:abilities/instant/ender_warp
execute if entity @e[tag=target,tag=explosive_shot] run function skyblock:abilities/instant/explosive_shot
execute if entity @e[tag=target,tag=juju_shortbow] run function skyblock:abilities/juju_shortbow


execute if entity @p[tag=bonus_damage,predicate=skyblock:sneaking,level=10..,nbt={SelectedItem:{tag:{Name:"Scorpion Bow"}}}] run function skyblock:abilities/instant/stinger


execute if entity @e[tag=target,type=#minecraft:undead] run tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Undead Bow"}}}] add undead_bow
execute if entity @e[tag=target,type=#minecraft:undead] run tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Super Undead Bow"}}}] add undead_bow
execute if entity @e[tag=target,type=#minecraft:undead] run tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Death Bow"}}}] add undead_bow
scoreboard players add @p[tag=undead_bow] multiplier 100
tag @p[tag=undead_bow] remove undead_bow

execute if entity @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Super Undead Bow"}}},predicate=skyblock:random_chance25] run function skyblock:abilities/instant/bouncy
execute if entity @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Death Bow"}}},predicate=skyblock:random_chance50] run function skyblock:abilities/instant/bouncy
execute if entity @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Death Bow"}}},predicate=skyblock:random_chance50] run function skyblock:abilities/instant/bouncy

tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Magma Bow"}},Inventory:[{Slot:-106b,id:"minecraft:magma_cream"}]}] add magma_bow
scoreboard players add @p[tag=magma_bow] multiplier 100
item modify entity @p[tag=magma_bow] weapon.offhand skyblock:subtract_item
tag @p[tag=magma_bow] remove magma_bow

scoreboard players add @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Soulstealer Bow"}}}] multiplier 100

execute if entity @e[tag=target,type=#minecraft:cube] run tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Slime Bow"}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball"}]}] add slime_bow
scoreboard players add @p[tag=slime_bow] multiplier 400
item modify entity @p[tag=slime_bow] weapon.offhand skyblock:subtract_item
tag @p[tag=slime_bow] remove slime_bow

execute if entity @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Spirit Bow"}}}] run effect give @e[tag=target] glowing 5

execute if entity @e[tag=target,type=#minecraft:undead] run execute if entity @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Spirit Bow"}}}] run function skyblock:abilities/spirit_damage


tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Last Breath"}}}] add last_breath
scoreboard players set @p[tag=last_breath] dummy 0
execute if entity @p[tag=last_breath] run execute store result score @p[tag=last_breath] dummy run effect give @e[tag=target] minecraft:weakness 40
execute if entity @p[tag=last_breath] run execute unless entity @p[tag=last_breath,scores={dummy=1}] run execute store result score @p[tag=last_breath] dummy run effect give @e[tag=target] minecraft:weakness 40 1
execute if entity @p[tag=last_breath] run execute unless entity @p[tag=last_breath,scores={dummy=1}] run execute store result score @p[tag=last_breath] dummy run effect give @e[tag=target] minecraft:weakness 40 2
execute if entity @p[tag=last_breath] run execute unless entity @p[tag=last_breath,scores={dummy=1}] run execute store result score @p[tag=last_breath] dummy run effect give @e[tag=target] minecraft:weakness 40 3
execute if entity @p[tag=last_breath] run execute unless entity @p[tag=last_breath,scores={dummy=1}] run effect give @e[tag=target] minecraft:weakness 40 4



#Arrows
execute if entity @p[tag=bonus_damage,tag=bouncy_arrow,predicate=skyblock:random_chance50] run function skyblock:abilities/instant/bouncy
tag @p[tag=bouncy_arrow] remove bouncy_arrow

execute if entity @p[tag=bonus_damage,tag=icy_arrow] run effect give @e[tag=target] slowness 3
tag @p[tag=icy_arrow] remove icy_arrow

execute if entity @p[tag=bonus_damage,tag=armorshred_arrow] run effect give @e[tag=target] weakness 30
tag @p[tag=armorshred_arrow] remove armorshred_arrow

execute at @e[tag=target,tag=explosive_arrow] run summon tnt ~ ~ ~ {Fuse:0}
kill @e[tag=target,tag=explosive_arrow]

execute if entity @p[tag=bonus_damage,tag=glue_arrow] run effect give @e[tag=target] slowness 1 6
tag @p[tag=glue_arrow] remove glue_arrow

scoreboard objectives add piercing dummy "Piercing Level"
execute as @p[tag=bonus_damage,tag=nansorb_arrow] run execute store result score @s piercing run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:piercing"}].lvl 8
execute as @p[tag=bonus_damage,tag=nansorb_arrow] run scoreboard players operation @s multiplier += @s piercing
scoreboard objectives remove piercing
tag @p[tag=nansorb_arrow] remove nansorb_arrow


#Enchantments
execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Cubism run execute if entity @e[tag=target,type=#minecraft:cube] run function skyblock:enchantments/cubism

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Dragon_Hunter run execute if entity @e[tag=target,type=ender_dragon] run function skyblock:enchantments/dragon_hunter

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Ender_Slayer run execute if entity @e[tag=target,type=#minecraft:ender] run function skyblock:enchantments/ender_slayer

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Execute run function skyblock:enchantments/execute

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.First_Strike run execute if entity @e[tag=target,tag=!first_strike] run function skyblock:enchantments/first_strike

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Giant_Killer run function skyblock:enchantments/giant_killer

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Impaling run execute if entity @e[tag=target,type=#minecraft:aquatic] run function skyblock:enchantments/impaling

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Life_Steal run function skyblock:enchantments/life_steal

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Prosecute run function skyblock:enchantments/prosecute

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Snipe run function skyblock:enchantments/snipe

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Titan_Killer run function skyblock:enchantments/titan_killer

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Triple_Strike run execute if entity @e[tag=target,tag=!triple_strike] run function skyblock:enchantments/triple_strike

execute if data entity @p[tag=bonus_damage] SelectedItem.tag.Venomous run function skyblock:enchantments/venomous



#Crit Chance
function skyblock:calculate_crit_stats

execute at @p[tag=bonus_damage] run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] crit_chance run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 100
execute as @e[tag=rng] run scoreboard players operation @s crit_chance %= @s dummy
execute if score @p[tag=bonus_damage] crit_chance >= @e[limit=1,tag=rng] crit_chance run tag @p[tag=bonus_damage] add crit


#Crit Damage
tellraw @p[tag=crit] ["",{"text":"[@: Critical Hit! +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"crit_chance"},"italic":true,"color":"gray"},{"text":"% damage (","italic":true,"color":"gray"},{"score":{"name":"*","objective":"crit_chance"},"italic":true,"color":"gray"},{"text":"%)]","italic":true,"color":"gray"}]
execute at @p[tag=crit] run playsound minecraft:entity.experience_orb.pickup player @p
kill @e[tag=rng]
execute as @p[tag=crit] run scoreboard players operation @s multiplier += @s crit_damage



#Final Damage
execute as @p[tag=bonus_damage] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get
execute as @p[tag=bonus_damage] run scoreboard players operation @s attack_damage *= @s multiplier
execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s attack_damage

execute as @e[tag=target] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=target] run execute if score @s health < @p[tag=bonus_damage] damage run kill @s
execute as @e[tag=target] run scoreboard players operation @s health -= @p[tag=bonus_damage] damage
execute as @e[tag=target] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

scoreboard players set @p[tag=bonus_damage] dummy 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s damage /= @s dummy 
tellraw @p[tag=bonus_damage,scores={damage=1..}] ["",{"text":"[@: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage (+","italic":true,"color":"gray"},{"score":{"name":"*","objective":"multiplier"},"italic":true,"color":"gray"},{"text":"%)]","italic":true,"color":"gray"}]

attribute @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Pooch Sword"}}}] minecraft:generic.attack_damage modifier remove 27-74-7-61-76


scoreboard objectives remove damage
scoreboard objectives remove dummy
scoreboard objectives remove multiplier 
scoreboard objectives remove health 
scoreboard objectives remove crit_chance 
scoreboard objectives remove crit_damage 

tag @e[tag=target] remove target
tag @e[tag=crit] remove crit
advancement revoke @p[tag=bonus_damage] only skyblock:commands/bonus_damage
tag @p[tag=bonus_damage] remove bonus_damage