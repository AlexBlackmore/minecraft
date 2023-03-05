execute if predicate skyblock:forge/drill_engine run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 30.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 30 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_engine"
scoreboard players remove @s[tag=forge] forge_fuel 30
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge 


execute if predicate skyblock:forge/golden_plate run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 6.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 6 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/golden_plate"
scoreboard players remove @s[tag=forge] forge_fuel 6
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge 

execute if predicate skyblock:forge/mithril_plate run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 18.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 18 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/mithril_plate"
scoreboard players remove @s[tag=forge] forge_fuel 18
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge 

execute if predicate skyblock:forge/gemstone_mixture run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 4.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 4 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/gemstone_mixture"
scoreboard players remove @s[tag=forge] forge_fuel 4
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge 



#Titanium Accessories
execute if predicate skyblock:forge/accessories/titanium_ring run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 20.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 20 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/accessories/titanium_ring"
scoreboard players remove @s[tag=forge] forge_fuel 20
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/accessories/titanium_artifact run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 36.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 36 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/accessories/titanium_artifact"
scoreboard players remove @s[tag=forge] forge_fuel 36
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge 

execute if predicate skyblock:forge/accessories/titanium_relic run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 72.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 72 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/accessories/titanium_relic"
scoreboard players remove @s[tag=forge] forge_fuel 72
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge 


#Pickaxes
execute if predicate skyblock:forge/pickaxes/mithril_pickaxe run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 1.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 1 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/tools/mithril_pickaxe"
scoreboard players remove @s[tag=forge] forge_fuel 1
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge 

execute if predicate skyblock:forge/pickaxes/refined_mithril_pickaxe run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 22.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 22 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/tools/refined_mithril_pickaxe"
scoreboard players remove @s[tag=forge] forge_fuel 22
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge


#Travel Scrolls
execute if predicate skyblock:forge/travel_scrolls/the_forge run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 5.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 5 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/travel_scrolls/the_forge"
scoreboard players remove @s[tag=forge] forge_fuel 5
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/travel_scrolls/crystal_hollows run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 10.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 10 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/travel_scrolls/crystal_hollows"
scoreboard players remove @s[tag=forge] forge_fuel 10
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge


#Pets
execute if predicate skyblock:forge/ammonite_pet run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 288.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 288 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/pets/ammonite/legendary"
scoreboard players remove @s[tag=forge] forge_fuel 288
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge


#Reforge Stones
execute if predicate skyblock:forge/reforge_stones/rock_gemstone run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 22.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 22 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/reforge_stones/rock_gemstone"
scoreboard players remove @s[tag=forge] forge_fuel 22
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/reforge_stones/petrified_starfall run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 14.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 14 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/reforge_stones/petrified_starfall"
scoreboard players remove @s[tag=forge] forge_fuel 14
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/reforge_stones/hot_stuff run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 24.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 24 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/reforge_stones/hot_stuff"
scoreboard players remove @s[tag=forge] forge_fuel 24
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/reforge_stones/amber_material run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 7.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 7 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/reforge_stones/amber_material"
scoreboard players remove @s[tag=forge] forge_fuel 7
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge


#Mithril Drills 
execute if predicate skyblock:forge/drills/mithril/sx-r226 run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 4.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 4 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/tools/drills/mithril/sx-r226"
scoreboard players remove @s[tag=forge] forge_fuel 4
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drills/mithril/sx-r326 run tag @s[tag=!success,tag=!fail] add forge
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/pets/drills/mithril/sx-r326"
tag @s[tag=forge] add success
tag @s remove forge


#Amethyst Drills
execute if predicate skyblock:forge/drills/amethyst/tx-15 run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 1.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 1 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/tools/drills/amethyst/tx-15"
scoreboard players remove @s[tag=forge] forge_fuel 1
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drills/amethyst/lt-522 run tag @s[tag=!success,tag=!fail] add forge
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/pets/drills/amethyst/lt-522"
tag @s[tag=forge] add success
tag @s remove forge

execute if predicate skyblock:forge/drills/amethyst/kgr-12 run tag @s[tag=!success,tag=!fail] add forge
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/pets/drills/amethyst/kgr-12"
tag @s[tag=forge] add success
tag @s remove forge

execute if predicate skyblock:forge/drills/amethyst/x run tag @s[tag=!success,tag=!fail] add forge
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/pets/drills/amethyst/x"
tag @s[tag=forge] add success
tag @s remove forge


#Titanium Drills
execute if predicate skyblock:forge/drills/titanium/dr-x355 run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 64.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 64 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/tools/drills/titanium/dr-x355"
scoreboard players remove @s[tag=forge] forge_fuel 64
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drills/titanium/dr-x455 run tag @s[tag=!success,tag=!fail] add forge
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/pets/drills/titanium/dr-x455"
tag @s[tag=forge] add success
tag @s remove forge

execute if predicate skyblock:forge/drills/titanium/dr-x555 run tag @s[tag=!success,tag=!fail] add forge
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/pets/drills/titanium/dr-x555"
tag @s[tag=forge] add success
tag @s remove forge

execute if predicate skyblock:forge/drills/titanium/dr-x655 run tag @s[tag=!success,tag=!fail] add forge
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/pets/drills/titanium/dr-x655"
tag @s[tag=forge] add success
tag @s remove forge


execute if predicate skyblock:forge/drills/divans run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 60.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 60 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/tools/drills/divans"
scoreboard players remove @s[tag=forge] forge_fuel 60
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge


#Drill Upgrades
execute if predicate skyblock:forge/drill_parts/upgrades/pesto_goblin_omelette run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 20.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 20 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/upgrades/pesto_goblin_omelette"
scoreboard players remove @s[tag=forge] forge_fuel 20
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/upgrades/goblin_omelette run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 18.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 18 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/upgrades/goblin_omelette"
scoreboard players remove @s[tag=forge] forge_fuel 18
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/upgrades/spicy_goblin_omelette run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 20.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 20 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/upgrades/spicy_goblin_omelette"
scoreboard players remove @s[tag=forge] forge_fuel 20
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/upgrades/sunny_side_goblin_omelette run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 20.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 20 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/upgrades/sunny_side_goblin_omelette"
scoreboard players remove @s[tag=forge] forge_fuel 20
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/upgrades/blue_cheese_goblin_omelette run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 20.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 20 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/upgrades/blue_cheese_goblin_omelette"
scoreboard players remove @s[tag=forge] forge_fuel 20
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge


#Drill Engines
execute if predicate skyblock:forge/drill_parts/engines/mithril_plated run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 15.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 15 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/engines/mithril_plated"
scoreboard players remove @s[tag=forge] forge_fuel 15
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/engines/titanium_plated run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 30.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 30 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/engines/titanium_plated"
scoreboard players remove @s[tag=forge] forge_fuel 30
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/engines/ruby_polished run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 20.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 20 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/engines/ruby_polished"
scoreboard players remove @s[tag=forge] forge_fuel 20
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/engines/sapphire_polished run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 20.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 20 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/engines/sapphire_polished"
scoreboard players remove @s[tag=forge] forge_fuel 20
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/engines/amber_polished run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 50.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 50 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/engines/amber_polished"
scoreboard players remove @s[tag=forge] forge_fuel 50
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge


#Fuel Tanks
execute if predicate skyblock:forge/drill_parts/fuel_tanks/mithril_infused run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 10.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 10 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/fuel_tanks/mithril_infused"
scoreboard players remove @s[tag=forge] forge_fuel 10
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/fuel_tanks/titanium_infused run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 25.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 25 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/fuel_tanks/titanium_infused"
scoreboard players remove @s[tag=forge] forge_fuel 25
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/fuel_tanks/gemstone run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 30.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 30 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/fuel_tanks/gemstone"
scoreboard players remove @s[tag=forge] forge_fuel 30
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/drill_parts/fuel_tanks/perfectly_cut run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 50.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 50 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/drill_parts/fuel_tanks/perfectly_cut"
scoreboard players remove @s[tag=forge] forge_fuel 50
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge


#Armor of Divan
execute if predicate skyblock:forge/armor_of_divan/gemstone_chamber run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 4.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 4 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/armor_of_divan/gemstone_chamber"
scoreboard players remove @s[tag=forge] forge_fuel 4
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/armor_of_divan/helmet run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 23.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 23 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/armor_of_divan/helmet"
scoreboard players remove @s[tag=forge] forge_fuel 23
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/armor_of_divan/chestplate run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 23.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 23 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/armor_of_divan/chestplate"
scoreboard players remove @s[tag=forge] forge_fuel 23
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/armor_of_divan/leggings run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 23.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 23 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/armor_of_divan/leggings"
scoreboard players remove @s[tag=forge] forge_fuel 23
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/armor_of_divan/boots run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 23.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 23 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/armor_of_divan/boots"
scoreboard players remove @s[tag=forge] forge_fuel 23
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge


#Beacon
execute if predicate skyblock:forge/beacon/2 run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 20.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 20 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/beacon/2"
scoreboard players remove @s[tag=forge] forge_fuel 20
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/beacon/3 run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 30.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 30 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/beacon/3"
scoreboard players remove @s[tag=forge] forge_fuel 30
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/beacon/4 run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 40.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 40 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/beacon/4"
scoreboard players remove @s[tag=forge] forge_fuel 40
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge

execute if predicate skyblock:forge/beacon/5 run tag @s[tag=!success,tag=!fail] add match
execute if score @s[tag=match] forge_fuel matches 50.. run tag @s add forge
tellraw @s[tag=match,tag=!forge] {"text":"You need at least 50 forge fuel to craft that item!","color":"red"}
execute if entity @s[tag=forge] run data modify block ~ ~ ~ LootTable set value "skyblock:items/beacon/5"
scoreboard players remove @s[tag=forge] forge_fuel 50
tag @s[tag=match,tag=!forge] add fail
tag @s[tag=forge] add success
tag @s remove match
tag @s remove forge


tag @s remove success
tag @s remove fail