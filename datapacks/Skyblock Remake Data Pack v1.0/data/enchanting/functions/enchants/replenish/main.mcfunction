#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------------------------------#
execute if entity @s[tag=!ReplenishSelected] run function enchanting:enchants/replenish/reset_scores
execute if entity @s[scores={R_Potato=1..}] at @e[type=item,tag=!InventoryItem,nbt={Age:0s,Item:{id:"minecraft:potato",Count:1b,tag:{Base:{Vanilla:1b}}}}] run function enchanting:enchants/replenish/replant/potato
execute if entity @s[scores={R_Carrot=1..}] at @e[type=item,tag=!InventoryItem,nbt={Age:0s,Item:{id:"minecraft:carrot",Count:1b,tag:{Base:{Vanilla:1b}}}}] run function enchanting:enchants/replenish/replant/carrot
execute if entity @s[scores={R_Beetroot=1..}] at @e[type=item,tag=!InventoryItem,nbt={Age:0s,Item:{id:"minecraft:beetroot_seeds",Count:1b,tag:{Base:{Vanilla:1b}}}}] run function enchanting:enchants/replenish/replant/beetroot
execute if entity @s[scores={R_Cocoa=1..}] at @e[type=item,tag=!InventoryItem,nbt={Age:0s,Item:{id:"minecraft:cocoa_beans",Count:1b,tag:{Base:{Vanilla:1b}}}}] run function enchanting:enchants/replenish/replant/cocoa
execute if entity @s[scores={R_NetherWart=1..}] at @e[type=item,tag=!InventoryItem,nbt={Age:0s,Item:{id:"minecraft:nether_wart",Count:1b,tag:{Base:{Vanilla:1b}}}}] run function enchanting:enchants/replenish/replant/netherwart
execute if entity @s[scores={R_Wheat=1..}] at @e[type=item,tag=!InventoryItem,nbt={Age:0s,Item:{id:"minecraft:wheat_seeds",Count:1b,tag:{Base:{Vanilla:1b}}}}] run function enchanting:enchants/replenish/replant/wheat
function enchanting:enchants/replenish/reset_scores
tag @s add ReplenishSelected
#------------------------------------------#