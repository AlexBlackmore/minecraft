#---------------TUXEDO BONUSES-------------#
execute if entity @s[tag=SetBonus_Dashing_Elegant] run scoreboard players set @s P_Health 250
execute if entity @s[tag=SetBonus_Dashing_Fancy] run scoreboard players set @s P_Health 150
execute if entity @s[tag=SetBonus_Dashing_Cheap] run scoreboard players set @s P_Health 75
execute if entity @s[tag=SetBonus_Dashing_Elegant] run scoreboard players set @s PlayerHP 250
execute if entity @s[tag=SetBonus_Dashing_Fancy] run scoreboard players set @s PlayerHP 150
execute if entity @s[tag=SetBonus_Dashing_Cheap] run scoreboard players set @s PlayerHP 75
#---------------STRONG BLOOD---------------#
execute if entity @s[tag=SetBonus_Strong_Blood] run scoreboard players operation @s P_Strength += @s P_StrBloodStr
#--------------EMERALD ARMOR---------------#
scoreboard players operation @s P_Defense += @s emCollection
scoreboard players operation @s P_Health += @s emCollection
#----------OTHER FULL SET BONUSES----------#
execute if entity @s[tag=SetBonus_Bonus_Speed] run function armor:full_set_bonus/abilities/bonus_speed/bonus_speed
execute if entity @s[tag=SetBonus_Superior_Blood] run function armor:full_set_bonus/abilities/superior_blood/superior_blood
execute if entity @s[tag=SetBonus_Young_Blood] run function armor:full_set_bonus/abilities/young_blood/young_blood
execute if entity @s[tag=SetBonus_Health] run function armor:full_set_bonus/abilities/health/health
execute if entity @s[tag=SetBonus_Absolute_Unit] run function armor:full_set_bonus/abilities/absolute_unit/absolute_unit
execute if data entity @s Inventory[{Slot:103b,tag:{Base:{Abilities:[{Name:"Brute Force"}]}}}] run function armor:full_set_bonus/piece_bonuses/warden_helmet
#------------------------------------------#
