scoreboard players operation @p[tag=TargetEntity] Coins -= $COGWeaponDamage Temp
scoreboard players operation @p[tag=TargetEntity] SetCoins = @p[tag=TargetEntity] Coins
scoreboard players operation $WeaponDamage Temp *= c125 Constant
scoreboard players operation $WeaponDamage Temp /= c100 Constant
function profiling:sidebar_reload_money/reload