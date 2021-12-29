execute if score $Face I_BWBlank_Score matches 1 at @e[tag=Count1] run clone ~1 ~ ~ ~1 ~ ~ ~ ~ ~
execute if score $Face I_BWBlank_Score matches 2 at @e[tag=Count2] run clone ~ ~1 ~ ~ ~1 ~ ~ ~ ~
execute if score $Face I_BWBlank_Score matches 3 at @e[tag=Count3] run clone ~ ~ ~1 ~ ~ ~1 ~ ~ ~
execute if score $Face I_BWBlank_Score matches 4 at @e[tag=Count4] run clone ~-1 ~ ~ ~-1 ~ ~ ~ ~ ~
execute if score $Face I_BWBlank_Score matches 5 at @e[tag=Count5] run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~
execute if score $Face I_BWBlank_Score matches 6 at @e[tag=Count6] run clone ~ ~ ~-1 ~ ~ ~-1 ~ ~ ~
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..6] ~ ~ ~ .035 .95