#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------GET POTATO BOOK AMOUNT---------#
execute store result score $FumingPotatoAmount Temp run data get storage blue:anvil ResultItem.tag.Base.FumingPotatoApplied
execute store result score $TotalPotatoAmount Temp run data get storage blue:anvil ResultItem.tag.Base.TotalPotatoApplied
#-----------------GET STATS----------------#
execute store result score $Damage Temp run data get storage blue:anvil ResultItem.tag.Base.Damage
execute store result score $Strength Temp run data get storage blue:anvil ResultItem.tag.Base.Strength
execute store result score $Defense Temp run data get storage blue:anvil ResultItem.tag.Base.Defense
execute store result score $Health Temp run data get storage blue:anvil ResultItem.tag.Base.Health
#------ADD STATS IF LIMIT NOT REACHED------#
scoreboard players add $FumingPotatoAmount Temp 1
scoreboard players add $TotalPotatoAmount Temp 1
scoreboard players add $Damage Temp 2
scoreboard players add $Strength Temp 2
scoreboard players add $Defense Temp 2
scoreboard players add $Health Temp 4

tag @s add PotatoBookSuccess
execute if score PotatoBookLimit Setting matches 1 if score $TotalPotatoAmount Temp matches 16.. store result score $Damage Temp run data get storage blue:anvil ResultItem.tag.Base.Damage
execute if score PotatoBookLimit Setting matches 1 if score $TotalPotatoAmount Temp matches 16.. store result score $Strength Temp run data get storage blue:anvil ResultItem.tag.Base.Strength
execute if score PotatoBookLimit Setting matches 1 if score $TotalPotatoAmount Temp matches 16.. run tag @s remove PotatoBookSuccess
execute if score PotatoBookLimit Setting matches 1 if score $TotalPotatoAmount Temp matches 16.. run scoreboard players set $HotPotatoAmount Temp 15
#----------APPLY EVERYTHING BACK-----------#
execute store result storage blue:anvil ResultItem.tag.Base.FumingPotatoApplied int 1 run scoreboard players get $FumingPotatoAmount Temp
execute store result storage blue:anvil ResultItem.tag.Base.TotalPotatoApplied int 1 run scoreboard players get $TotalPotatoAmount Temp
execute unless data storage blue:anvil ResultItem.tag.Base{Type:"HELMET"} unless data storage blue:anvil ResultItem.tag.Base{Type:"CHESTPLATE"} unless data storage blue:anvil ResultItem.tag.Base{Type:"LEGGINGS"} unless data storage blue:anvil ResultItem.tag.Base{Type:"BOOTS"} store result storage blue:anvil ResultItem.tag.Base.Damage int 1 run scoreboard players get $Damage Temp
execute unless data storage blue:anvil ResultItem.tag.Base{Type:"HELMET"} unless data storage blue:anvil ResultItem.tag.Base{Type:"CHESTPLATE"} unless data storage blue:anvil ResultItem.tag.Base{Type:"LEGGINGS"} unless data storage blue:anvil ResultItem.tag.Base{Type:"BOOTS"} store result storage blue:anvil ResultItem.tag.Base.Strength int 1 run scoreboard players get $Strength Temp
execute unless data storage blue:anvil ResultItem.tag.Base{Type:"BOW"} unless data storage blue:anvil ResultItem.tag.Base{Type:"SWORD"} unless data storage blue:anvil ResultItem.tag.Base{Type:"FISHING ROD"} store result storage blue:anvil ResultItem.tag.Base.Defense int 1 run scoreboard players get $Defense Temp
execute unless data storage blue:anvil ResultItem.tag.Base{Type:"BOW"} unless data storage blue:anvil ResultItem.tag.Base{Type:"SWORD"} unless data storage blue:anvil ResultItem.tag.Base{Type:"FISHING ROD"} store result storage blue:anvil ResultItem.tag.Base.Health int 1 run scoreboard players get $Health Temp
#------------------------------------------#

