#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------DISPLAY------------------#
#Thorns
execute if entity @p[tag=Wear_Thorns,nbt={HurtTime:9s}] if entity @s[nbt={HurtTime:10s}] run scoreboard players set @s P_IconColour 1
#Drowning
execute if entity @s[nbt={Air:0s}] run scoreboard players set @s P_IconColour 2
#Burning
execute if entity @s[nbt={HurtTime:10s,Fire:160s}] run scoreboard players set @s P_IconColour 3
execute store result score $Fire Temp run data get entity @s Fire
execute if score $Fire Temp matches 1.. run scoreboard players operation $Fire Temp %= c20 Constant
execute if score $Fire Temp matches 19 if entity @s[nbt={HurtTime:9s}] run scoreboard players set @s P_IconColour 3
#Venomous
execute if entity @s[tag=Venomous] run scoreboard players set @s P_IconColour 4
tag @s remove Venomous

#Run Source Function
execute if score @s P_IconColour matches 0 if score @s P_ManualDmgType matches 1 run function stats:manual_damage/apply/normal_mob
execute if score @s P_IconColour matches 0 unless score @s P_ManualDmgType matches 1 run function stats:damage_update/environment_source/other
execute if score @s P_IconColour matches 1 run function stats:damage_update/environment_source/thorns
execute if score @s P_IconColour matches 2 run function stats:damage_update/environment_source/drown
execute if score @s P_IconColour matches 3 run function stats:damage_update/environment_source/burn
execute if score @s P_IconColour matches 4 run function stats:manual_damage/apply/normal_mob

#Reset
scoreboard players reset @s P_ManualDmgType
#------------------------------------------#