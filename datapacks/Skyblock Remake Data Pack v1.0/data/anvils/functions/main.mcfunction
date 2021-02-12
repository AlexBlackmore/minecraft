#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------MINING CUSTOM BLOCKS------------#
execute as @e[tag=Anvil] at @s positioned ~ ~1 ~ if block ~ ~ ~ air run function anvils:normal/block/break
#------------------------------------------#