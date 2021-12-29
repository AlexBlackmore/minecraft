#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------CALCULATE DAMAGE-------------#
#Ability dmg = (Base ability dmg * (1 + (Intelligence stat / 100) * ability scaling) ) * (1 + Ability Damage % Modifier)
#Adjusted calc to keep integer values = (Base ability dmg * (10000 + Intelligence stat * (ability scaling*100) ) )/1000 * (100 + Ability Damage Stat)

#Gets Mana - Mana stat
scoreboard players operation $AbilityDamageOutput Temp = @p P_Intelligence
#Multiplies It With Item Scaling - (10000 + Mana stat * (ability scaling*100))/10
scoreboard players set $Scaling Temp 100
execute if entity @s[type=player] store result score $Scaling Temp run data get entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Scaling 100
execute if entity @s[type=chest_minecart] if data entity @s Items[{Slot:4b}].tag.Base.Abilities store result score $Scaling Temp run data get entity @s Items[{Slot:4b}].tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Scaling 100
execute if entity @s[type=chest_minecart] if data entity @s Items[{Slot:13b}].tag.Base.Abilities store result score $Scaling Temp run data get entity @s Items[{Slot:13b}].tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Scaling 100
scoreboard players operation $AbilityDamageOutput Temp *= $Scaling Temp
scoreboard players add $AbilityDamageOutput Temp 10000
scoreboard players operation $AbilityDamageOutput Temp /= c10 Constant
#Multiplies It With Item Abililty Damage - (Base ability dmg * (100 + Mana stat * (ability scaling*100)) /1000
scoreboard players set $Damage Temp 0
execute if entity @s[type=player] store result score $Damage Temp run data get entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}].BaseDamage
execute if entity @s[type=chest_minecart] if data entity @s Items[{Slot:4b}].tag.Base.Abilities store result score $Damage Temp run data get entity @s Items[{Slot:4b}].tag.Base.Abilities[{Activation:"RIGHT CLICK"}].BaseDamage
execute if entity @s[type=chest_minecart] if data entity @s Items[{Slot:13b}].tag.Base.Abilities store result score $Damage Temp run data get entity @s Items[{Slot:13b}].tag.Base.Abilities[{Activation:"RIGHT CLICK"}].BaseDamage
scoreboard players operation $AbilityDamageOutput Temp *= $Damage Temp
scoreboard players operation $AbilityDamageOutput Temp /= c1000 Constant
#Multiplies It With Abililty Damage Stat
scoreboard players operation $Multiplier Temp = @p P_AbilDmg
scoreboard players add $Multiplier Temp 100
scoreboard players operation $AbilityDamageOutput Temp *= $Multiplier Temp
execute if data storage blue:item ItemAbility[{Name:"Dragon Rage"}] if entity @s[tag=SetBonus_Superior_Blood] run scoreboard players operation $SetAbilityDamageBonus Temp = $AbilityDamageOutput Temp
execute if data storage blue:item ItemAbility[{Name:"Dragon Rage"}] if entity @s[tag=SetBonus_Superior_Blood] run scoreboard players operation $SetAbilityDamageBonus Temp /= c2 Constant
execute if data storage blue:item ItemAbility[{Name:"Dragon Rage"}] if entity @s[tag=SetBonus_Superior_Blood] run scoreboard players operation $AbilityDamageOutput Temp += $SetAbilityDamageBonus Temp
scoreboard players operation $AbilityDamageOutput Temp /= c100 Constant
#--------------COMPARE DAMAGE--------------#
execute store result score $Damage Temp run data get entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage
execute if entity @s[type=player] unless score $Damage Temp = $AbilityDamageOutput Temp run function items:edit_lore/begin/ability_damage
#------------------------------------------#