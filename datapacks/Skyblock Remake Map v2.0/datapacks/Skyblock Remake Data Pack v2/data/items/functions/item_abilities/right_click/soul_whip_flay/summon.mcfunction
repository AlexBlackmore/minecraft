#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#summon the soul whip armor stand and make it look to the position where the player used the ability (flay_distance_limit)
summon armor_stand ^ ^2 ^ {Tags:["flay_bolt"],Invulnerable:1b,Invisible:1b}
execute as @e[tag=flay_bolt] at @s run tp @s ~ ~ ~ facing entity @e[tag=flay_distance_limit,limit=1]
