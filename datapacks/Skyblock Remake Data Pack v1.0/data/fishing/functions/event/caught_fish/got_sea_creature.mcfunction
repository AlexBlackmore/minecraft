#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------FISHING-------------------#
execute at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/squid

execute if entity @s[nbt={SelectedItem:{tag:{Base:{Enchantments:[{frail:{identifier:1b}}]}}}}] as @e[tag=NewFishing] run function enchanting:enchants/frail
tag @e remove NewFishing
kill @e[type=item,nbt={Age:0s}]
#------------------------------------------#