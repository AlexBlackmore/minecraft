scoreboard players operation @p[tag=TargetEntity,team=aqua] Coins = aqua Coins
scoreboard players operation @p[tag=TargetEntity,team=black] Coins = black Coins
scoreboard players operation @p[tag=TargetEntity,team=blue] Coins = blue Coins
scoreboard players operation @p[tag=TargetEntity,team=dark_aqua] Coins = dark_aqua Coins
scoreboard players operation @p[tag=TargetEntity,team=dark_blue] Coins = dark_blue Coins
scoreboard players operation @p[tag=TargetEntity,team=dark_gray] Coins = dark_gray Coins
scoreboard players operation @p[tag=TargetEntity,team=dark_green] Coins = dark_green Coins
scoreboard players operation @p[tag=TargetEntity,team=dark_purple] Coins = dark_purple Coins
scoreboard players operation @p[tag=TargetEntity,team=dark_red] Coins = dark_red Coins
scoreboard players operation @p[tag=TargetEntity,team=gold] Coins = gold Coins
scoreboard players operation @p[tag=TargetEntity,team=gray] Coins = gray Coins
scoreboard players operation @p[tag=TargetEntity,team=green] Coins = green Coins
scoreboard players operation @p[tag=TargetEntity,team=light_purple] Coins = light_purple Coins
scoreboard players operation @p[tag=TargetEntity,team=red] Coins = red Coins
scoreboard players operation @p[tag=TargetEntity,team=white] Coins = white Coins
scoreboard players operation @p[tag=TargetEntity,team=yellow] Coins = yellow Coins

scoreboard players operation $COGWeaponDamage Temp = $WeaponDamage Temp
scoreboard players operation $COGWeaponDamage Temp -= @p[tag=TargetEntity] P_BaseDamage

execute if score @p[tag=TargetEntity] Coins >= $COGWeaponDamage Temp run function armor:full_set_bonus/piece_bonuses/crown_of_greed/damage

scoreboard players reset @s Coins