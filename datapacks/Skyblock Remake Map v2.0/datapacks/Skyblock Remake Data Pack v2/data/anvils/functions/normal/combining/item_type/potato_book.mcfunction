#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------ENCHANTMENT LIST-------------#
execute store result score $FumingPotatoAmount Temp run data get storage blue:anvil ResultItem.tag.Base.FumingPotatoApplied
execute if score PotatoBookLimit Setting matches 0 if data storage blue:anvil Items[{Slot:24b}].tag.Base.HotPotato run function anvils:normal/combining/combine/potato_books/hot_potato
execute if score PotatoBookLimit Setting matches 1 unless score $FumingPotatoAmount Temp matches 1.. if data storage blue:anvil Items[{Slot:24b}].tag.Base.HotPotato run function anvils:normal/combining/combine/potato_books/hot_potato
execute if score PotatoBookLimit Setting matches 1 if score $FumingPotatoAmount Temp matches 1.. if data storage blue:anvil Items[{Slot:24b}].tag.Base.HotPotato run tellraw @p {"text":"You can no longer apply potato books as you already have fuming potato books!","color":"red"}
execute if data storage blue:anvil Items[{Slot:24b}].tag.Base.FumingPotato run function anvils:normal/combining/combine/potato_books/fuming_potato
#------------------------------------------#