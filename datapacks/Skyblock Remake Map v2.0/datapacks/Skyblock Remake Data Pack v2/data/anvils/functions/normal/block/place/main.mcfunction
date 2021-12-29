#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------PLACE BLOCK----------------#
tag @s add PlaceAnvil
execute positioned ~ ~1.62 ~ run function anvils:normal/block/place/ray
execute if entity @s[tag=!PlaceAnvilSuccess] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:command_block[facing=south]{Command:"function anvils:normal/block/place/switch",auto:1b} replace minecraft:anvil
tag @s remove PlaceAnvil
tag @s remove PlaceAnvilSuccess
advancement revoke @s only anvils:place_anvil
#------------------------------------------#