#test if soup in inventory.
execute if score $HasSoup SoupTrack1 matches 1.. run function items:item_abilities/soup/test_soup
execute if entity @s[tag=HoldSoup] unless predicate items:has_soup run function items:item_abilities/soup/soup_counter_reset
scoreboard players set @s UseSoup 0
clear @s[gamemode=creative] minecraft:filled_map
execute if predicate items:has_soup run tag @s add HoldSoup
#Fly Main
execute if entity @s[scores={Location=0,SoupFlightTime=1..}] run function items:item_abilities/soup/flight/main