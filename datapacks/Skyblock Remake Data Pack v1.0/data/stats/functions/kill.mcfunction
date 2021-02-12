#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------RESETTING-----------------#
#Prevent endermen from dropping end portal or e chest
execute if entity @s[type=enderman] run data merge entity @s {carriedBlockState:{Name:"minecraft:air"}}
#Get Scavenger Bonus
execute as @p[tag=TargetEntity] store result score $EnchantLevel Temp run data get entity @s SelectedItem.tag.Base.Enchantments[{scavenger:{identifier:1b}}].scavenger.bonus_float 10
scoreboard players operation $DisplayLevel Temp = @s DisplayLevel
#Fix data get bug for level 3
execute if score $EnchantLevel Temp matches 8 run scoreboard players set $EnchantLevel Temp 9
kill @s
#Coins when using Bow or Fishing Rod
execute unless entity @p[tag=TargetEntity] unless entity @e[tag=TargetEntity,tag=TelekinesisEnchant,sort=nearest,limit=1,type=!player] as @e[type=item,nbt={Age:0s,Item:{tag:{TempCoin:1b}}}] at @s run function items:coins/main
execute as @e[tag=TargetEntity,tag=TelekinesisEnchant,sort=nearest,limit=1,type=!player] at @a if score @s PlayerID = @p PlayerID as @p run function items:coins/telekinesis_main
#Coins when using Melee
execute as @p[tag=TargetEntity,tag=!Held_Telekinesis] as @e[type=item,nbt={Age:0s,Item:{tag:{TempCoin:1b}}}] at @s run function items:coins/main
execute as @p[tag=TargetEntity,tag=Held_Telekinesis] at @s run function items:coins/telekinesis_main
#Normal Telekinesis Enchant
execute as @e[tag=TargetEntity,sort=nearest,limit=1,type=fishing_bobber] at @s as @a if score @s PlayerID = @e[tag=TargetEntity,sort=nearest,limit=1,type=fishing_bobber] PlayerID at @s if data entity @s {SelectedItem:{tag:{Base:{Enchantments:[{telekinesis:{identifier:1b}}]}}}} run function enchanting:enchants/telekinesis/items_and_xp
#Vampirism
execute if entity @s[scores={P_Health=..0}] as @p[tag=TargetEntity] run function enchanting:enchants/vampirism
#------------------------------------------#