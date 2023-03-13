tellraw @s[advancements={skyblock:commands/alchemy/using_potion=true}] "Using Potion"

scoreboard objectives add duration dummy "Duration"
scoreboard objectives add amplifier dummy "Amplifier"



#100 Rabbit
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:100}] run advancement grant @s only skyblock:effects/rabbit
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Cheap Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:100}] run tag @s add cheap_coffee_rabbit
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Decent Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:100}] run tag @s add decent_coffee_rabbit
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Black Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:100}] run tag @s add black_coffee_rabbit

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:100}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:100}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:100}] if score @s rabbit_amplifier = @s amplifier if score @s rabbit_duration < @s duration run scoreboard players operation @s rabbit_duration = @s duration
execute if score @s rabbit_amplifier > @s amplifier run scoreboard players operation @s rabbit_duration = @s duration
execute if score @s rabbit_amplifier > @s amplifier run scoreboard players operation @s rabbit_amplifier = @s amplifier


#101 Burning
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:101}] run advancement grant @s only skyblock:effects/burning

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:101}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:101}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:101}] if score @s burning_amplifier = @s amplifier if score @s burning_duration < @s duration run scoreboard players operation @s burning_duration = @s duration
execute if score @s burning_amplifier > @s amplifier run scoreboard players operation @s burning_duration = @s duration
execute if score @s burning_amplifier > @s amplifier run scoreboard players operation @s burning_amplifier = @s amplifier


#102 Stun
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:102}] run advancement grant @s only skyblock:effects/stun

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:102}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:102}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:102}] if score @s stun_amplifier = @s amplifier if score @s stun_duration < @s duration run scoreboard players operation @s stun_duration = @s duration
execute if score @s stun_amplifier > @s amplifier run scoreboard players operation @s stun_duration = @s duration
execute if score @s stun_amplifier > @s amplifier run scoreboard players operation @s stun_amplifier = @s amplifier


#103 Archery
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:103}] run advancement grant @s only skyblock:effects/archery
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Tutti-Frutti Flavored Poison"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:103}] run tag @s add tutti_frutti_flavored_poison

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:103}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:103}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:103}] if score @s archery_amplifier = @s amplifier if score @s archery_duration < @s duration run scoreboard players operation @s archery_duration = @s duration
execute if score @s archery_amplifier > @s amplifier run scoreboard players operation @s archery_duration = @s duration
execute if score @s archery_amplifier > @s amplifier run scoreboard players operation @s archery_amplifier = @s amplifier


#104 Adrenaline
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:104}] run advancement grant @s only skyblock:effects/adrenaline
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Cheap Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:104}] run tag @s add cheap_coffee_adrenaline
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Decent Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:104}] run tag @s add decent_coffee_adrenaline
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Black Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:104}] run tag @s add black_coffee_adrenaline

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:104}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:104}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:104}] if score @s adrenaline_amplifier = @s amplifier if score @s adrenaline_duration < @s duration run scoreboard players operation @s adrenaline_duration = @s duration
execute if score @s adrenaline_amplifier > @s amplifier run scoreboard players operation @s adrenaline_duration = @s duration
execute if score @s adrenaline_amplifier > @s amplifier run scoreboard players operation @s adrenaline_amplifier = @s amplifier


#105 Critical
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:105}] run advancement grant @s only skyblock:effects/critical
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Slayer Energy Drink"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:105}] run tag @s add slayer_energy_drink

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:105}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:105}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:105}] if score @s critical_amplifier = @s amplifier if score @s critical_duration < @s duration run scoreboard players operation @s critical_duration = @s duration
execute if score @s critical_amplifier > @s amplifier run scoreboard players operation @s critical_duration = @s duration
execute if score @s critical_amplifier > @s amplifier run scoreboard players operation @s critical_amplifier = @s amplifier


#106 Dodge
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:106}] run advancement grant @s only skyblock:effects/dodge

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:106}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:106}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:106}] if score @s dodge_amplifier = @s amplifier if score @s dodge_duration < @s duration run scoreboard players operation @s dodge_duration = @s duration
execute if score @s dodge_amplifier > @s amplifier run scoreboard players operation @s dodge_duration = @s duration
execute if score @s dodge_amplifier > @s amplifier run scoreboard players operation @s dodge_amplifier = @s amplifier


#107 True Resistance
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:107}] run advancement grant @s only skyblock:effects/true_resistance

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:107}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:107}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:107}] if score @s true_resistance_amplifier = @s amplifier if score @s true_resistance_duration < @s duration run scoreboard players operation @s true_resistance_duration = @s duration
execute if score @s true_resistance_amplifier > @s amplifier run scoreboard players operation @s true_resistance_duration = @s duration
execute if score @s true_resistance_amplifier > @s amplifier run scoreboard players operation @s true_resistance_amplifier = @s amplifier


#108 Agility
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:108}] run advancement grant @s only skyblock:effects/agility
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Cheap Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:108}] run tag @s add cheap_coffee_agility
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Decent Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:108}] run tag @s add decent_coffee_agility
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Black Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:108}] run tag @s add black_coffee_agility

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:108}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:108}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:108}] if score @s agility_amplifier = @s amplifier if score @s agility_duration < @s duration run scoreboard players operation @s agility_duration = @s duration
execute if score @s agility_amplifier > @s amplifier run scoreboard players operation @s agility_duration = @s duration
execute if score @s agility_amplifier > @s amplifier run scoreboard players operation @s agility_amplifier = @s amplifier


#109 Experience
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:109}] run advancement grant @s only skyblock:effects/experience
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Bitter Iced Tea"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:109}] run tag @s add bitter_iced_tea_experience
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Viking's Tear"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:109}] run tag @s add vikings_tear

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:109}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:109}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:109}] if score @s experience_amplifier = @s amplifier if score @s experience_duration < @s duration run scoreboard players operation @s experience_duration = @s duration
execute if score @s experience_amplifier > @s amplifier run scoreboard players operation @s experience_duration = @s duration
execute if score @s experience_amplifier > @s amplifier run scoreboard players operation @s experience_amplifier = @s amplifier


#110 Mana
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:110}] run advancement grant @s only skyblock:effects/mana
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Bitter Iced Tea"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:110}] run tag @s add bitter_iced_tea_mana
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Pulpous Orange Juice"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:110}] run tag @s add pulpous_orange_juice_mana

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:110}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:110}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:110}] if score @s mana_amplifier = @s amplifier if score @s mana_duration < @s duration run scoreboard players operation @s mana_duration = @s duration
execute if score @s mana_amplifier > @s amplifier run scoreboard players operation @s mana_duration = @s duration
execute if score @s mana_amplifier > @s amplifier run scoreboard players operation @s mana_amplifier = @s amplifier


#111 Stamina
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:111}] run advancement grant @s only skyblock:effects/stamina
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Bitter Iced Tea"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:111}] run tag @s add bitter_iced_tea_stamina
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Pulpous Orange Juice"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:111}] run tag @s add pulpous_orange_juice_stamina

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:111}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:111}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:111}] if score @s stamina_amplifier = @s amplifier if score @s stamina_duration < @s duration run scoreboard players operation @s stamina_duration = @s duration
execute if score @s stamina_amplifier > @s amplifier run scoreboard players operation @s stamina_duration = @s duration
execute if score @s stamina_amplifier > @s amplifier run scoreboard players operation @s stamina_amplifier = @s amplifier


#112 Spirit
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:112}] run advancement grant @s only skyblock:effects/spirit

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:112}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:112}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:112}] if score @s spirit_amplifier = @s amplifier if score @s spirit_duration < @s duration run scoreboard players operation @s spirit_duration = @s duration
execute if score @s spirit_amplifier > @s amplifier run scoreboard players operation @s spirit_duration = @s duration
execute if score @s spirit_amplifier > @s amplifier run scoreboard players operation @s spirit_amplifier = @s amplifier


#113 Magic Find
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:113}] run advancement grant @s only skyblock:effects/magic_find

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:113}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:113}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:113}] if score @s magic_find_amplifier = @s amplifier if score @s magic_find_duration < @s duration run scoreboard players operation @s magic_find_duration = @s duration
execute if score @s magic_find_amplifier > @s amplifier run scoreboard players operation @s magic_find_duration = @s duration
execute if score @s magic_find_amplifier > @s amplifier run scoreboard players operation @s magic_find_amplifier = @s amplifier


#114 Jerry Candy
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:114}] run advancement grant @s only skyblock:effects/jerry_candy

execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:114}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:114}] if score @s jerry_candy_duration < @s duration run scoreboard players operation @s jerry_candy_duration = @s duration


#115 Spelunker
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:115}] run advancement grant @s only skyblock:effects/spelunker

execute store result score @s amplifier run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:115}].Amplifier
execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:115}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:115}] if score @s spelunker_amplifier = @s amplifier if score @s spelunker_duration < @s duration run scoreboard players operation @s spelunker_duration = @s duration
execute if score @s spelunker_amplifier > @s amplifier run scoreboard players operation @s spelunker_duration = @s duration
execute if score @s spelunker_amplifier > @s amplifier run scoreboard players operation @s spelunker_amplifier = @s amplifier


#116 Mushed Glowy Tonic
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:116}] run advancement grant @s only skyblock:effects/mushed_glowy_tonic

execute store result score @s duration run data get entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:116}].Duration

execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[{Id:116}] if score @s mushed_glowy_tonic_duration < @s duration run scoreboard players operation @s mushed_glowy_tonic_duration = @s duration



#1 Swiftness 
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Cheap Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:1}] run tag @s add cheap_coffee_swiftness
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Decent Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:1}] run tag @s add decent_coffee_swiftness
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Black Coffee"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:1}] run tag @s add black_coffee_swiftness

#5 Strength 
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Knock-Off Cola"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:5}] run tag @s add knockoff_cola

#10 Regeneration 
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Pulpous Orange Juice"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:10}] run tag @s add pulpous_orange_juice_regeneration

#11 Resistance 
execute if data entity @e[tag=brewing_stand,limit=1,sort=nearest,nbt={HandItems:[{tag:{Name:"Tepid Green Tea"}}]}] HandItems[0].tag.CustomPotionEffects[{Id:11}] run tag @s add tepid_green_tea



kill @e[tag=brewing_stand]
advancement revoke @s only skyblock:commands/alchemy/consumed_potion