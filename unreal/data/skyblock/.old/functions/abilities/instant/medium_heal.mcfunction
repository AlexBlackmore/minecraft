tag @p[tag=revenant,nbt={Inventory:[{Slot:100b,tag:{Name:"Revenant Boots"}},{Slot:101b,tag:{Name:"Revenant Leggings"}},{Slot:102b,tag:{Name:"Revenant Chestplate"}}]}] add revenant
effect give @p[tag=revenant] instant_health 3 1
tellraw @p[tag=revenant] {"text":"[Small Heal/Trolling the Reaper: +24 Health]","italic":true,"color":"gray"}

effect give @p[tag=ability,tag=!revenant] instant_health 1 2
tellraw @p[tag=ability,tag=!revenant] {"text":"[Medium Heal: +16 Health]","italic":true,"color":"gray"}
xp add @p[tag=ability] -100 points
tag @p[tag=revenant] remove revenant
