#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------STATS IN LORE---------------#
execute store result score $HotPotatoBooksApplied Temp run data get storage blue:lore_builder ItemStorage.Base.HotPotatoApplied
execute store result score $FumingPotatoBooksApplied Temp run data get storage blue:lore_builder ItemStorage.Base.FumingPotatoApplied

execute unless data storage blue:lore_builder ItemStorage.Base{Type:"HELMET"} unless data storage blue:lore_builder ItemStorage.Base{Type:"CHESTPLATE"} unless data storage blue:lore_builder ItemStorage.Base{Type:"LEGGINGS"} unless data storage blue:lore_builder ItemStorage.Base{Type:"BOOTS"} store result score $Strength Temp run data get storage blue:lore_builder ItemStorage.Base.Strength
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"BOW"} unless data storage blue:lore_builder ItemStorage.Base{Type:"SWORD"} unless data storage blue:lore_builder ItemStorage.Base{Type:"FISHING ROD"} store result score $Defense Temp run data get storage blue:lore_builder ItemStorage.Base.Defense

execute store result score $HotPotatoDamageBoost Temp run scoreboard players operation c2 Constant *= $HotPotatoBooksApplied Temp
scoreboard players set c2 Constant 2
execute store result score $HotPotatoStrengthBoost Temp run scoreboard players operation c2 Constant *= $HotPotatoBooksApplied Temp
scoreboard players set c2 Constant 2
execute store result score $HotPotatoHealthBoost Temp run scoreboard players operation c4 Constant *= $HotPotatoBooksApplied Temp
scoreboard players set c4 Constant 4
execute store result score $HotPotatoDefenseBoost Temp run scoreboard players operation c2 Constant *= $HotPotatoBooksApplied Temp
scoreboard players set c2 Constant 2

execute store result score $FumingPotatoDamageBoost Temp run scoreboard players operation c2 Constant *= $FumingPotatoBooksApplied Temp
scoreboard players set c2 Constant 2
execute store result score $FumingPotatoStrengthBoost Temp run scoreboard players operation c2 Constant *= $FumingPotatoBooksApplied Temp
scoreboard players set c2 Constant 2
execute store result score $FumingPotatoHealthBoost Temp run scoreboard players operation c4 Constant *= $FumingPotatoBooksApplied Temp
scoreboard players set c4 Constant 4
execute store result score $FumingPotatoDefenseBoost Temp run scoreboard players operation c2 Constant *= $FumingPotatoBooksApplied Temp
scoreboard players set c2 Constant 2

scoreboard players operation $HotPotatoDamageBoost Temp += $FumingPotatoDamageBoost Temp
scoreboard players operation $HotPotatoStrengthBoost Temp += $FumingPotatoStrengthBoost Temp
scoreboard players operation $HotPotatoHealthBoost Temp += $FumingPotatoHealthBoost Temp
scoreboard players operation $HotPotatoDefenseBoost Temp += $FumingPotatoDefenseBoost Temp

execute unless data storage blue:lore_builder ItemStorage.Base{Type:"HELMET"} unless data storage blue:lore_builder ItemStorage.Base{Type:"CHESTPLATE"} unless data storage blue:lore_builder ItemStorage.Base{Type:"LEGGINGS"} unless data storage blue:lore_builder ItemStorage.Base{Type:"BOOTS"} run scoreboard players set $HotPotatoHealthBoost Temp 0
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"HELMET"} unless data storage blue:lore_builder ItemStorage.Base{Type:"CHESTPLATE"} unless data storage blue:lore_builder ItemStorage.Base{Type:"LEGGINGS"} unless data storage blue:lore_builder ItemStorage.Base{Type:"BOOTS"} run scoreboard players set $HotPotatoDefenseBoost Temp 0

execute unless data storage blue:lore_builder ItemStorage.Base{Type:"BOW"} unless data storage blue:lore_builder ItemStorage.Base{Type:"SWORD"} unless data storage blue:lore_builder ItemStorage.Base{Type:"FISHING ROD"} run scoreboard players set $HotPotatoDamageBoost Temp 0
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"BOW"} unless data storage blue:lore_builder ItemStorage.Base{Type:"SWORD"} unless data storage blue:lore_builder ItemStorage.Base{Type:"FISHING ROD"} run scoreboard players set $HotPotatoStrengthBoost Temp 0
#------------------------------------------#