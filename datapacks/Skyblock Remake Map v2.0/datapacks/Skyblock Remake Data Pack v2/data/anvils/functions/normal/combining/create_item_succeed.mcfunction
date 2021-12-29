#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------ADD ENCHANT GLINT-------------#
tag @s add AnvilPairSuccess
tag @s remove Error1
tag @s remove Error2
execute if entity @s[tag=!ScrollSuccess,tag=!PotatoBookSuccess] run data merge storage blue:anvil {ResultItem:{tag:{Enchantments:[{}]}}}
#---------ADDITIONAL REPAIR COST-----------#
execute store result score @s Anvil_RepairC run data get storage blue:anvil ResultItem.tag.Base.RepairCost
scoreboard players operation @s Anvil_Level += @s Anvil_RepairC
scoreboard players set @s[scores={Anvil_RepairC=0}] Anvil_RepairC 1
scoreboard players operation @s Anvil_RepairC *= c2 Constant
scoreboard players add @s Anvil_RepairC 2
execute store result storage blue:anvil ResultItem.tag.Base.RepairCost int 1 run scoreboard players get @s[tag=!ScrollSuccess,tag=!PotatoBookSuccess] Anvil_RepairC
#-----------INCREASE ANVIL USES------------#
execute store result score @s Anvil_Uses run data get storage blue:anvil ResultItem.tag.Base.AnvilUses
scoreboard players add @s[tag=!ScrollSuccess,tag=!PotatoBookSuccess] Anvil_Uses 1
execute if entity @s[tag=PotatoBookSuccess] run scoreboard players remove @s Anvil_Uses 1
execute if score @s Anvil_Uses matches ..0 run scoreboard players set @s Anvil_Uses 0
execute store result storage blue:anvil ResultItem.tag.Base.AnvilUses int 1 run scoreboard players get @s Anvil_Uses
#-----------------ADD ITEM-----------------#
data modify storage blue:anvil ResultItem.tag.SkyblockMenu set value 1b
data modify entity @s Items[{Slot:4b}] set from storage blue:anvil ResultItem
#---------------UPDATE LORE----------------#
function items:edit_lore/begin/anvil
#------------UPDATE OTHER ITEM-------------#
data modify storage blue:anvil TempItemChange1 set from entity @s Items[{Slot:13b}].tag.ItemChange1
data modify storage blue:anvil TempItemChange2 set from entity @s Items[{Slot:13b}].tag.ItemChange2
loot replace entity @s container.13 loot anvils:normal/menu/combine_item
data modify entity @s Items[{Slot:13b}].tag.ItemChange1 set from storage blue:anvil TempItemChange1
data modify entity @s Items[{Slot:13b}].tag.ItemChange2 set from storage blue:anvil TempItemChange2
#------------------------------------------#