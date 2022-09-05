#Rabbit
attribute @s[advancements={skyblock:effects/rabbit=true},scores={rabbit_duration=0}] minecraft:generic.movement_speed modifier remove 37-15-40-10-70
scoreboard players set @s[advancements={skyblock:effects/rabbit=true},scores={rabbit_duration=0,rabbit_amplifier=1..}] rabbit_amplifier 0
advancement revoke @s[advancements={skyblock:effects/rabbit=true},scores={rabbit_duration=0}] only skyblock:effects/rabbit

execute as @s[advancements={skyblock:effects/rabbit=true}] run function skyblock:alchemy/effects/rabbit


#Burning
scoreboard players set @s[advancements={skyblock:effects/burning=true},scores={burning_duration=0,burning_amplifier=1..}] burning_amplifier 0
advancement revoke @s[advancements={skyblock:effects/burning=true},scores={burning_duration=0}] only skyblock:effects/burning

tellraw @s[advancements={skyblock:effects/burning=true},scores={burning_duration=200}] ["",{"text":"The effects of your Burning Potion are about to wear off.","color":"red"}]
tellraw @s[advancements={skyblock:effects/burning=true},scores={burning_duration=1}] ["",{"text":"The effects of your Burning Potion have worn off.","color":"red"}]
execute as @s[advancements={skyblock:effects/burning=true},scores={burning_duration=1..}] run scoreboard players remove @s burning_duration 1


#Stun
scoreboard players set @s[advancements={skyblock:effects/stun=true},scores={stun_duration=0,stun_amplifier=1..}] stun_amplifier 0
advancement revoke @s[advancements={skyblock:effects/stun=true},scores={stun_duration=0}] only skyblock:effects/stun

tellraw @s[advancements={skyblock:effects/stun=true},scores={stun_duration=200}] ["",{"text":"The effects of your Stun Potion are about to wear off.","color":"red"}]
tellraw @s[advancements={skyblock:effects/stun=true},scores={stun_duration=1}] ["",{"text":"The effects of your Stun Potion have worn off.","color":"red"}]
execute as @s[advancements={skyblock:effects/stun=true},scores={stun_duration=1..}] run scoreboard players remove @s stun_duration 1


#Archery
scoreboard players set @s[advancements={skyblock:effects/archery=true},scores={archery_duration=0,archery_amplifier=1..}] archery_amplifier 0
advancement revoke @s[advancements={skyblock:effects/archery=true},scores={archery_duration=0}] only skyblock:effects/archery

tellraw @s[advancements={skyblock:effects/archery=true},scores={archery_duration=200}] ["",{"text":"The effects of your Archery Potion are about to wear off.","color":"red"}]
tellraw @s[advancements={skyblock:effects/archery=true},scores={archery_duration=1}] ["",{"text":"The effects of your Archery Potion have worn off.","color":"red"}]
execute as @s[advancements={skyblock:effects/archery=true},scores={archery_duration=1..}] run scoreboard players remove @s archery_duration 1


#Adrenaline
attribute @s[advancements={skyblock:effects/adrenaline=true},scores={adrenaline_duration=0}] minecraft:generic.movement_speed modifier remove 40-87-93-21-32
scoreboard players set @s[advancements={skyblock:effects/adrenaline=true},scores={adrenaline_duration=0,adrenaline_amplifier=1..}] adrenaline_amplifier 0
advancement revoke @s[advancements={skyblock:effects/adrenaline=true},scores={adrenaline_duration=0}] only skyblock:effects/adrenaline

execute as @s[advancements={skyblock:effects/adrenaline=true}] run function skyblock:alchemy/effects/adrenaline


#Critical
scoreboard players set @s[advancements={skyblock:effects/critical=true},scores={critical_duration=0,critical_amplifier=1..}] critical_amplifier 0
advancement revoke @s[advancements={skyblock:effects/critical=true},scores={critical_duration=0}] only skyblock:effects/critical

execute as @s[advancements={skyblock:effects/critical=true}] run function skyblock:alchemy/effects/critical


#Dodge
attribute @s[advancements={skyblock:effects/dodge=true},scores={dodge_duration=0}] minecraft:generic.knockback_resistance modifier remove 43-54-81-73-78
scoreboard players set @s[advancements={skyblock:effects/dodge=true},scores={dodge_duration=0,dodge_amplifier=1..}] dodge_amplifier 0
advancement revoke @s[advancements={skyblock:effects/dodge=true},scores={dodge_duration=0}] only skyblock:effects/dodge

execute as @s[advancements={skyblock:effects/dodge=true}] run function skyblock:alchemy/effects/dodge


#True Resistance
attribute @s[advancements={skyblock:effects/true_resistance=true},scores={true_resistance_duration=0}] minecraft:generic.armor_toughness modifier remove 33-81-94-3-62
scoreboard players set @s[advancements={skyblock:effects/true_resistance=true},scores={true_resistance_duration=0,true_resistance_amplifier=1..}] true_resistance_amplifier 0
advancement revoke @s[advancements={skyblock:effects/true_resistance=true},scores={true_resistance_duration=0}] only skyblock:effects/true_resistance

execute as @s[advancements={skyblock:effects/true_resistance=true}] run function skyblock:alchemy/effects/true_resistance


#Agility
attribute @s[advancements={skyblock:effects/agility=true},scores={agility_duration=0}] minecraft:generic.movement_speed modifier remove 66-94-70-19-30
attribute @s[advancements={skyblock:effects/dodge=true},scores={dodge_duration=0}] minecraft:generic.knockback_resistance modifier remove 13-11-44-82-62
scoreboard players set @s[advancements={skyblock:effects/agility=true},scores={agility_duration=0,agility_amplifier=1..}] agility_amplifier 0
advancement revoke @s[advancements={skyblock:effects/agility=true},scores={agility_duration=0}] only skyblock:effects/agility

execute as @s[advancements={skyblock:effects/agility=true}] run function skyblock:alchemy/effects/agility


#Experience
scoreboard players set @s[advancements={skyblock:effects/experience=true},scores={experience_duration=0,experience_amplifier=1..}] experience_amplifier 0
advancement revoke @s[advancements={skyblock:effects/experience=true},scores={experience_duration=0}] only skyblock:effects/experience

tellraw @s[advancements={skyblock:effects/experience=true},scores={experience_duration=200}] ["",{"text":"The effects of your Experience Potion are about to wear off.","color":"red"}]
tellraw @s[advancements={skyblock:effects/experience=true},scores={experience_duration=1}] ["",{"text":"The effects of your Experience Potion have worn off.","color":"red"}]
tag @s[advancements={skyblock:effects/experience=true},scores={experience_duration=1}] remove bitter_iced_tea_experience
execute as @s[advancements={skyblock:effects/experience=true},scores={experience_duration=1..}] run scoreboard players remove @s experience_duration 1


#Mana
scoreboard players set @s[advancements={skyblock:effects/mana=true},scores={mana_duration=0,mana_amplifier=1..}] mana_amplifier 0
advancement revoke @s[advancements={skyblock:effects/mana=true},scores={mana_duration=0}] only skyblock:effects/mana

tellraw @s[advancements={skyblock:effects/mana=true},scores={mana_duration=200}] ["",{"text":"The effects of your Mana Potion are about to wear off.","color":"red"}]
tellraw @s[advancements={skyblock:effects/mana=true},scores={mana_duration=1}] ["",{"text":"The effects of your Mana Potion have worn off.","color":"red"}]
execute as @s[advancements={skyblock:effects/mana=true},scores={mana_duration=1..}] run scoreboard players remove @s mana_duration 1


#Stamina
scoreboard players set @s[advancements={skyblock:effects/stamina=true},scores={stamina_duration=0,stamina_amplifier=1..}] stamina_amplifier 0
advancement revoke @s[advancements={skyblock:effects/stamina=true},scores={stamina_duration=0}] only skyblock:effects/stamina

execute as @s[advancements={skyblock:effects/stamina=true}] run function skyblock:alchemy/effects/stamina


#Spirit
attribute @s[advancements={skyblock:effects/spirit=true},scores={spirit_duration=0}] minecraft:generic.movement_speed modifier remove 14-19-28-73-32
scoreboard players set @s[advancements={skyblock:effects/spirit=true},scores={spirit_duration=0,spirit_amplifier=1..}] spirit_amplifier 0
advancement revoke @s[advancements={skyblock:effects/spirit=true},scores={spirit_duration=0}] only skyblock:effects/spirit

execute as @s[advancements={skyblock:effects/spirit=true}] run function skyblock:alchemy/effects/spirit


#Magic Find
attribute @s[advancements={skyblock:effects/magic_find=true},scores={magic_find_duration=0}] minecraft:generic.luck modifier remove 26-73-79-74-10
scoreboard players set @s[advancements={skyblock:effects/magic_find=true},scores={magic_find_duration=0,magic_find_amplifier=1..}] magic_find_amplifier 0
advancement revoke @s[advancements={skyblock:effects/magic_find=true},scores={magic_find_duration=0}] only skyblock:effects/magic_find

execute as @s[advancements={skyblock:effects/magic_find=true}] run function skyblock:alchemy/effects/magic_find


#Swiftness
execute as @s[tag=cheap_coffee_swiftness] run function skyblock:alchemy/effects/swiftness
execute as @s[tag=decent_coffee_swiftness] run function skyblock:alchemy/effects/swiftness
execute as @s[tag=black_coffee_swiftness] run function skyblock:alchemy/effects/swiftness

#Resistance
execute as @s[tag=tepid_green_tea] run function skyblock:alchemy/effects/resistance

#Regeneration
execute as @s[tag=pulpous_orange_juice_regeneration] run function skyblock:alchemy/effects/resistance

#Strength
execute as @s[tag=knockoff_cola] run function skyblock:alchemy/effects/strength