#test if soup in inventory.
execute store result score $HasSoup SoupTrack1 run clear @s minecraft:map{mush:1b} 0
execute if score $HasSoup SoupTrack1 matches 1.. run function items:item_abilities/soup/test_soup
execute as @s[nbt=!{Inventory:[{tag:{mush:1b}}]},tag=HoldSoup] run function items:item_abilities/soup/soup_counter_reset
scoreboard players set @s UseSoup 0
clear @s[gamemode=creative] minecraft:filled_map
tag @a[tag=!HoldSoup,nbt={Inventory:[{tag:{mush:1b}}]}] add HoldSoup
#Fly Main
execute if entity @s[scores={Location=0,SoupFlightTime=1..}] run function items:item_abilities/soup/flight/main