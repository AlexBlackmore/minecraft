#tellraw @s "using_potion"

execute as @s[advancements={skyblock:effects/rabbit=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:100}]}}}] store result score @s rabbit_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:100}].Amplifier
execute as @s[advancements={skyblock:effects/rabbit=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:100}]}}}] store result score @s rabbit_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:100}].Duration
tellraw @s[advancements={skyblock:effects/rabbit=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:100}]}}}] ["",{"text":"You already have the Rabbit effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/rabbit=false}] rabbit_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/rabbit=false}] rabbit_duration 0


execute as @s[advancements={skyblock:effects/burning=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:101}]}}}] store result score @s burning_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:101}].Amplifier
execute as @s[advancements={skyblock:effects/burning=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:101}]}}}] store result score @s burning_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:101}].Duration
tellraw @s[advancements={skyblock:effects/burning=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:101}]}}}] ["",{"text":"You already have the Burning effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/burning=false}] burning_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/burning=false}] burning_duration 0


execute as @s[advancements={skyblock:effects/stun=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:102}]}}}] store result score @s stun_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:102}].Amplifier
execute as @s[advancements={skyblock:effects/stun=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:102}]}}}] store result score @s stun_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:102}].Duration
tellraw @s[advancements={skyblock:effects/stun=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:102}]}}}] ["",{"text":"You already have the Stun effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/stun=false}] stun_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/stun=false}] stun_duration 0


execute as @s[advancements={skyblock:effects/archery=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:103}]}}}] store result score @s archery_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:103}].Amplifier
execute as @s[advancements={skyblock:effects/archery=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:103}]}}}] store result score @s archery_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:103}].Duration
tellraw @s[advancements={skyblock:effects/archery=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:103}]}}}] ["",{"text":"You already have the Archery effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/archery=false}] archery_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/archery=false}] archery_duration 0


execute as @s[advancements={skyblock:effects/adrenaline=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:104}]}}}] store result score @s adrenaline_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:104}].Amplifier
execute as @s[advancements={skyblock:effects/adrenaline=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:104}]}}}] store result score @s adrenaline_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:104}].Duration
tellraw @s[advancements={skyblock:effects/adrenaline=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:104}]}}}] ["",{"text":"You already have the Adrenaline effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/adrenaline=false}] adrenaline_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/adrenaline=false}] adrenaline_duration 0


execute as @s[advancements={skyblock:effects/critical=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:105}]}}}] store result score @s critical_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:105}].Amplifier
execute as @s[advancements={skyblock:effects/critical=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:105}]}}}] store result score @s critical_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:105}].Duration
tellraw @s[advancements={skyblock:effects/critical=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:105}]}}}] ["",{"text":"You already have the Critical effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/critical=false}] critical_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/critical=false}] critical_duration 0


execute as @s[advancements={skyblock:effects/dodge=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:106}]}}}] store result score @s dodge_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:106}].Amplifier
execute as @s[advancements={skyblock:effects/dodge=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:106}]}}}] store result score @s dodge_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:106}].Duration
tellraw @s[advancements={skyblock:effects/dodge=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:106}]}}}] ["",{"text":"You already have the Dodge effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/dodge=false}] dodge_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/dodge=false}] dodge_duration 0


execute as @s[advancements={skyblock:effects/true_resistance=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:107}]}}}] store result score @s true_resistance_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:107}].Amplifier
execute as @s[advancements={skyblock:effects/true_resistance=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:107}]}}}] store result score @s true_resistance_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:107}].Duration
tellraw @s[advancements={skyblock:effects/true_resistance=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:107}]}}}] ["",{"text":"You already have the True Resistance effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/true_resistance=false}] true_resistance_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/true_resistance=false}] true_resistance_duration 0


execute as @s[advancements={skyblock:effects/agility=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:108}]}}}] store result score @s agility_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:108}].Amplifier
execute as @s[advancements={skyblock:effects/agility=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:108}]}}}] store result score @s agility_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:108}].Duration
tellraw @s[advancements={skyblock:effects/agility=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:108}]}}}] ["",{"text":"You already have the Agility effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/agility=false}] agility_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/agility=false}] agility_duration 0


execute as @s[advancements={skyblock:effects/experience=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:109}]}}}] store result score @s experience_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:109}].Amplifier
execute as @s[advancements={skyblock:effects/experience=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:109}]}}}] store result score @s experience_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:109}].Duration
tellraw @s[advancements={skyblock:effects/experience=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:109}]}}}] ["",{"text":"You already have the Experience effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/experience=false}] experience_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/experience=false}] experience_duration 0


execute as @s[advancements={skyblock:effects/mana=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:110}]}}}] store result score @s mana_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:110}].Amplifier
execute as @s[advancements={skyblock:effects/mana=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:110}]}}}] store result score @s mana_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:110}].Duration
tellraw @s[advancements={skyblock:effects/mana=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:110}]}}}] ["",{"text":"You already have the Mana effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/mana=false}] mana_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/mana=false}] mana_duration 0


execute as @s[advancements={skyblock:effects/stamina=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:111}]}}}] store result score @s stamina_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:111}].Amplifier
execute as @s[advancements={skyblock:effects/stamina=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:111}]}}}] store result score @s stamina_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:111}].Duration
tellraw @s[advancements={skyblock:effects/stamina=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:111}]}}}] ["",{"text":"You already have the Stamina effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/stamina=false}] stamina_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/stamina=false}] stamina_duration 0


execute as @s[advancements={skyblock:effects/spirit=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:112}]}}}] store result score @s spirit_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:112}].Amplifier
execute as @s[advancements={skyblock:effects/spirit=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:112}]}}}] store result score @s spirit_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:112}].Duration
tellraw @s[advancements={skyblock:effects/spirit=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:112}]}}}] ["",{"text":"You already have the Stamina effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/spirit=false}] spirit_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/spirit=false}] spirit_duration 0


execute as @s[advancements={skyblock:effects/magic_find=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:113}]}}}] store result score @s magic_find_amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:113}].Amplifier
execute as @s[advancements={skyblock:effects/magic_find=false},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:113}]}}}] store result score @s magic_find_duration run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:113}].Duration
tellraw @s[advancements={skyblock:effects/magic_find=true},nbt={SelectedItem:{tag:{CustomPotionEffects:[{Id:113}]}}}] ["",{"text":"You already have the Stamina effect active!","color":"red"}]

scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/magic_find=false}] magic_find_amplifier 0
scoreboard players set @p[tag=drinking_potion,advancements={skyblock:effects/magic_find=false}] magic_find_duration 0



tag @p[tag=drinking_potion] remove drinking_potion

tag @s add drinking_potion
advancement revoke @s only skyblock:commands/alchemy/using_potion
execute as @s run schedule function skyblock:alchemy/using_potion 1t replace