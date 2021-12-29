#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------ADD ENCHANT GLINT-------------#
playsound minecraft:block.anvil.use master @p ~ ~ ~ 1 1 1

scoreboard players operation @p E_XPLevel = @s Anvil_Level
execute as @p[scores={E_XPLevel=32..}] run function enchanting:xp/take/32
execute as @p[scores={E_XPLevel=8..}] run function enchanting:xp/take/8
execute as @p[scores={E_XPLevel=1..}] run function enchanting:xp/take/1

data remove entity @s Items[{Slot:20b}]
data remove entity @s Items[{Slot:24b}]
data modify storage blue:anvil Items set from entity @s Items
execute unless data storage blue:anvil Items[{Slot:20b}] run data modify storage blue:anvil Items[{Slot:20b}].id set value "minecraft:air"
execute unless data storage blue:anvil Items[{Slot:24b}] run data modify storage blue:anvil Items[{Slot:24b}].id set value "minecraft:air"
function anvils:normal/menu/change_item/empty_slots
#------------------------------------------#