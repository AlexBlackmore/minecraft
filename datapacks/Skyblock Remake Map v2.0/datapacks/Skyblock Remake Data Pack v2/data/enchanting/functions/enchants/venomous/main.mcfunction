#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------VENOMOUS-----------------#
execute store result score @s E_VenomousLVL run data get storage blue:stats Weapon.tag.Base.Enchantments[{venomous:{identifier:1b}}].venomous.bonus
scoreboard players set @s E_VenomousTime 80

data modify entity @s HandItems[1].tag.AttributeModifiers set value [{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0,Operation:1,UUID:[I;1985988768,-382776040,-1305437264,1023233698],Slot:"offhand"}]
execute store result entity @s HandItems[1].tag.AttributeModifiers[{AttributeName:"generic.movement_speed"}].Amount float -0.01 run scoreboard players get @s E_VenomousLVL
#------------------------------------------#