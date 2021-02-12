scoreboard players remove $Raycast WeaverTimer 1
#change these 
#for indimidation-----|         |
execute unless entity @a[dx=2.5] run scoreboard players add Global Motion_speed 55
execute if entity @a[dx=2.5] at @s anchored eyes run function mobs:ai/weaver_spider/summon_web
execute unless entity @a[dx=2.5] unless score $Raycast WeaverTimer matches ..0 positioned ^ ^ ^1 run function mobs:ai/weaver_spider/raycast