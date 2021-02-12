#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/life_steal
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Heals for \",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.Enchantments[].life_steal.bonus_pt1\",\"storage\":\"blue:lore_builder\",\"color\":\"green\",\"italic\":false},{\"text\":\".\",\"color\":\"green\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.Enchantments[].life_steal.bonus_pt2\",\"storage\":\"blue:lore_builder\",\"color\":\"green\",\"italic\":false},{\"text\":\"%\",\"color\":\"green\",\"italic\":false},{\"text\":\" of the damage\",\"color\":\"gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
data modify storage blue:lore_builder NewLore append value '{"text":"you deal to mobs.","color":"gray","italic":false}'
#------------------------------------------#