#test if soup has been drunk.
execute store result score $Count SoupTrack1 run clear @s minecraft:map{mush1:1b} 0
execute unless score @s SoupTrack1 = $Count SoupTrack1 if entity @s[scores={UseSoup=1..}] run function items:item_abilities/soup/use_soup
scoreboard players operation @s SoupTrack1 = $Count SoupTrack1

execute store result score $Count SoupTrack2 run clear @s minecraft:map{mush2:1b} 0
execute unless score @s SoupTrack2 = $Count SoupTrack2 if entity @s[scores={UseSoup=1..}] run function items:item_abilities/soup/use_soup
scoreboard players operation @s SoupTrack2 = $Count SoupTrack2