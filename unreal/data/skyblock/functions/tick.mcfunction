execute as @e[type=!minecraft:armor_stand] unless data entity @s CustomName run function skyblock:set_default_name


execute as @a if predicate skyblock:time/seconds/1 run function skyblock:tick1s

execute store result score @a hour run time query daytime
execute as @a if score @s hour matches 0 run function skyblock:good_morning


execute at @e[type=minecraft:villager] run tp @e[type=#minecraft:zombies,distance=0..2] ~ ~-256 ~
function skyblock:summon_mobs


#Bonus XP
execute as @a if entity @e[type=item,nbt={Item:{tag:{Name:"Experience Orb"}}}] run function skyblock:bonus_xp
execute at @e[type=item,nbt={Item:{tag:{Name:"Haste Powder",Haste:0}}}] run effect give @p haste 5 0
execute at @e[type=item,nbt={Item:{tag:{Name:"Haste Powder",Haste:1}}}] run effect give @p haste 5 1
execute at @e[type=item,nbt={Item:{tag:{Name:"Haste Powder",Haste:2}}}] run effect give @p haste 5 2
execute at @e[type=item,nbt={Item:{tag:{Name:"Haste Powder",Haste:3}}}] run effect give @p haste 5 3
execute at @e[type=item,nbt={Item:{tag:{Name:"Haste Powder",Haste:4}}}] run effect give @p haste 5 4
execute at @e[type=item,nbt={Item:{tag:{Name:"Haste Powder",Haste:5}}}] run effect give @p haste 5 5
execute at @e[type=item,nbt={Item:{tag:{Name:"Haste Powder",Haste:6}}}] run effect give @p haste 5 6
execute at @e[type=item,nbt={Item:{tag:{Name:"Haste Powder",Haste:7}}}] run effect give @p haste 5 7
execute at @e[type=item,nbt={Item:{tag:{Name:"Haste Powder",Haste:8}}}] run effect give @p haste 5 8
execute at @e[type=item,nbt={Item:{tag:{Name:"Haste Powder",Haste:9}}}] run effect give @p haste 5 9
kill @e[type=item,nbt={Item:{tag:{Name:"Haste Powder"}}}]

#Runes
execute as @a if data entity @s Inventory[{Slot:100b}].tag.Rune run function skyblock:runecrafting/boot
execute as @a if data entity @s Inventory[{Slot:102b}].tag.Rune run function skyblock:runecrafting/chestplate
execute if entity @e[type=#minecraft:arrows,tag=rune] run function skyblock:runecrafting/bow