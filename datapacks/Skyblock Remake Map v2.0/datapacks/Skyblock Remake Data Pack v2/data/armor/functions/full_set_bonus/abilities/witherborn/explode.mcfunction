execute if score @e[tag=witherborn,limit=1,sort=nearest] WitherID = @p[tag=SetBonus_Witherborn] WitherID at @s run tp @e[tag=witherborn,limit=1,sort=nearest] ~ ~1 ~
particle explosion ~ ~ ~ 2 2 2 10 8
scoreboard players add @e[distance=..8,tag=HasHealthDisplay] ApplyDamage 1000000
execute if score @e[tag=witherborn,limit=1,sort=nearest] WitherID = @p[tag=SetBonus_Witherborn] WitherID run scoreboard players set @p[tag=SetBonus_Witherborn] WitherCooldown 0
function armor:full_set_bonus/abilities/witherborn/kill