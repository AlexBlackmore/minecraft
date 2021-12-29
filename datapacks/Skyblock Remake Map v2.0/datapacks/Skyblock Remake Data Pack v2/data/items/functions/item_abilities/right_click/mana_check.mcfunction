#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------COPIES TO STORAGE-------------#
data modify storage blue:item ItemAbility set from entity @s SelectedItem.tag.Base.Abilities
data modify storage blue:item ItemData set from entity @s SelectedItem.tag
#------------ENOUGH MANA CHECK-------------#
scoreboard players set $ManaCost Temp 0
execute store result score $ManaCost Temp run data get storage blue:item ItemAbility[0].Mana
execute if entity @s[tag=SetBonus_Wise_Blood] run function armor:full_set_bonus/abilities/wise_blood/wise_blood

execute if score $ManaCost Temp > @s PlayerMana run function items:item_abilities/right_click/not_enough_mana
execute if score $ManaCost Temp <= @s PlayerMana run function items:item_abilities/right_click/enough_mana
#------------------------------------------#