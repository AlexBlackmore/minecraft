scoreboard players add @s SoupClock 1
execute if score @s SoupClock matches 20.. run function items:item_abilities/soup/flight/soup_flight_time_display
execute if entity @s[scores={SoupFlightTime=1}] run function items:item_abilities/soup/flight/soup_flight_end
