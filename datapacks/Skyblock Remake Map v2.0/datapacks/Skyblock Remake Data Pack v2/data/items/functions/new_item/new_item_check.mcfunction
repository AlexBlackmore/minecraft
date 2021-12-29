#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------CALC STAT-----------------#
function stats:calculate/stats
#---------------BLOCK HELMET---------------#
execute if data entity @s Inventory[{Slot:103b}].tag.BlockHelmetItem run scoreboard players set @s BlockHelmetSwap2 1
execute store success score @s BlockHelmetSwap run data get entity @s Inventory[{}].tag.BlockHelmet
#---------------GIVE RARITY----------------#
execute store result score @s ItemCount run clear @s #skyblock:all 0
execute store result score @s ItemCountUpdate run clear @s #skyblock:all{Base:{}} 0
scoreboard players remove @s ItemCount 1
execute unless score @s ItemCount = @s ItemCountUpdate run scoreboard players set @s InvItemUpdate 1
scoreboard players set @s PickupReset 1
advancement revoke @s only items:new_item_check
#------------------------------------------#