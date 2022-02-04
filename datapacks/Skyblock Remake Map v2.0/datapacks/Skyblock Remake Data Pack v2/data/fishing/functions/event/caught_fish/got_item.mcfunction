#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------TREASURE OR FISH-------------#
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 1000
function skyblock:random/range_lcg
execute unless score out RandMath <= @s F_TreasureC as @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] run function fishing:event/caught_fish/item/fish_xp
execute if score out RandMath <= @s F_TreasureC run function fishing:event/caught_fish/item/got_treasure
#-----------------BLESSING-----------------#
execute if entity @s[nbt={SelectedItem:{tag:{Base:{Enchantments:[{blessing:{identifier:1b}}]}}}}] run function enchanting:enchants/blessing/random_test
#------------------ADD XP------------------#
execute unless entity @s[tag=F_GiveEnchantingXP] run scoreboard players operation @s AddFishing = $XpAmount Temp
execute unless entity @s[tag=F_GiveEnchantingXP] run function skills:fishing/add_xp
execute if entity @s[tag=F_GiveEnchantingXP] run scoreboard players operation @s AddEnchanting = $XpAmount Temp
execute if entity @s[tag=F_GiveEnchantingXP] run function skills:enchanting/add_xp
tag @s remove F_GiveEnchantingXP
#------------------------------------------#