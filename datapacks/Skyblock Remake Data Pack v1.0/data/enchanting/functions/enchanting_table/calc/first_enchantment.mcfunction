#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------PREPARE ENCHANT CALCULATOR--------#
tag @e remove EnchantStandList
tag @e remove EnchantStandWeightCalc
function enchanting:enchanting_table/calc/modified_base
#------ADD POSSIBLE ENCHANTS TO LIST-------#
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"HELMET"}}}]} at @s as @e[tag=HelmetEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"CHESTPLATE"}}}]} at @s as @e[tag=ChestplateEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"LEGGINGS"}}}]} at @s as @e[tag=LeggingsEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"BOOTS"}}}]} at @s as @e[tag=BootsEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"SWORD"}}}]} at @s as @e[tag=SwordEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"BOW"}}}]} at @s as @e[tag=BowEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"PICKAXE"}}}]} at @s as @e[tag=PickaxeEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"SHOVEL"}}}]} at @s as @e[tag=ShovelEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"HOE"}}}]} at @s as @e[tag=HoeEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"AXE"}}}]} at @s as @e[tag=AxeEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"SHEARS"}}}]} at @s as @e[tag=ShearsEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,tag:{Base:{Type:"FISHING ROD"}}}]} at @s as @e[tag=FishingEnchant] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
execute if data storage blue:enchanting {Items:[{Slot:13b,id:"minecraft:book",tag:{Base:{Vanilla:1b}}}]} at @s as @e[tag=EnchantStand] if score @s Ench_Min <= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase if score @s Ench_Max >= @e[tag=MenuChest,sort=nearest,limit=1] E_ModifiedBase run tag @s add EnchantStandList
#--------FIND ENCHANT USING WEIGHTS--------#
function enchanting:enchanting_table/calc/weight_simulator
#------------STORE ENCHANT DATA------------#
data modify storage blue:enchanting EnchantData append from entity @e[tag=EnchantStandSel,limit=1] HandItems[0].tag.EnchantData
data modify storage blue:enchanting FirstEnchant append from entity @e[tag=EnchantStandSel,limit=1] CustomName
#------------------------------------------#