execute at @s positioned ^ ^ ^2 run tag @e[type=item_frame,limit=1,sort=nearest] add item_frame
execute at @e[tag=item_frame] positioned ^ ^-0.25 ^-0.5 unless entity @e[tag=Minion,distance=0..1] run summon armor_stand ~ ~ ~ {Marker:true,NoGravity:true,Invulnerable:true,Tags:["Minion","invisible"],DeathLootTable:"minecraft:empty"}



#Minion Expander
tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Minion Expander"}}}] add minion_expander
execute at @e[tag=item_frame,tag=minion_expander] if entity @e[tag=Minion,limit=1,sort=nearest,tag=solar_panel] run loot give @s loot skyblock:items/solar_panel
execute at @e[tag=item_frame,tag=minion_expander] run tag @e[tag=Minion,limit=1,sort=nearest] remove solar_panel
execute at @e[tag=item_frame,tag=minion_expander] if entity @e[tag=Minion,limit=1,sort=nearest,tag=enchanted_lava_bucket] run loot give @s loot skyblock:items/enchanted_lava_bucket
execute at @e[tag=item_frame,tag=minion_expander] run tag @e[tag=Minion,limit=1,sort=nearest] remove enchanted_lava_bucket
execute at @e[tag=item_frame,tag=minion_expander] if entity @e[tag=Minion,limit=1,sort=nearest,tag=magma_bucket] run loot give @s loot skyblock:items/magma_bucket
execute at @e[tag=item_frame,tag=minion_expander] run tag @e[tag=Minion,limit=1,sort=nearest] remove magma_bucket
execute at @e[tag=item_frame,tag=minion_expander] if entity @e[tag=Minion,limit=1,sort=nearest,tag=plasma_bucket] run loot give @s loot skyblock:items/plasma_bucket
execute at @e[tag=item_frame,tag=minion_expander] run tag @e[tag=Minion,limit=1,sort=nearest] remove plasma_bucket
execute at @e[tag=item_frame,tag=minion_expander] if entity @e[tag=Minion,limit=1,sort=nearest,tag=everburning_flame] run loot give @s loot skyblock:items/everburning_flame
execute at @e[tag=item_frame,tag=minion_expander] run tag @e[tag=Minion,limit=1,sort=nearest] remove everburning_flame
execute at @e[tag=item_frame,tag=minion_expander] run tag @e[tag=Minion,limit=1,sort=nearest] add minion_expander
item replace entity @e[tag=item_frame,tag=minion_expander] container.0 with air

#Solar Panel
tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Solar Panel"}}}] add solar_panel
execute at @e[tag=item_frame,tag=solar_panel] if entity @e[tag=Minion,limit=1,sort=nearest,tag=minion_expander] run loot give @s loot skyblock:items/minion_expander
execute at @e[tag=item_frame,tag=solar_panel] run tag @e[tag=Minion,limit=1,sort=nearest] remove minion_expander
execute at @e[tag=item_frame,tag=solar_panel] if entity @e[tag=Minion,limit=1,sort=nearest,tag=enchanted_lava_bucket] run loot give @s loot skyblock:items/enchanted_lava_bucket
execute at @e[tag=item_frame,tag=solar_panel] run tag @e[tag=Minion,limit=1,sort=nearest] remove enchanted_lava_bucket
execute at @e[tag=item_frame,tag=solar_panel] if entity @e[tag=Minion,limit=1,sort=nearest,tag=magma_bucket] run loot give @s loot skyblock:items/magma_bucket
execute at @e[tag=item_frame,tag=solar_panel] run tag @e[tag=Minion,limit=1,sort=nearest] remove magma_bucket
execute at @e[tag=item_frame,tag=solar_panel] if entity @e[tag=Minion,limit=1,sort=nearest,tag=plasma_bucket] run loot give @s loot skyblock:items/plasma_bucket
execute at @e[tag=item_frame,tag=solar_panel] run tag @e[tag=Minion,limit=1,sort=nearest] remove plasma_bucket
execute at @e[tag=item_frame,tag=solar_panel] if entity @e[tag=Minion,limit=1,sort=nearest,tag=everburning_flame] run loot give @s loot skyblock:items/everburning_flame
execute at @e[tag=item_frame,tag=solar_panel] run tag @e[tag=Minion,limit=1,sort=nearest] remove everburning_flame
execute at @e[tag=item_frame,tag=solar_panel] run tag @e[tag=Minion,limit=1,sort=nearest] add solar_panel
item replace entity @e[tag=item_frame,tag=solar_panel] container.0 with air

#Enchanted Lava Bucket
tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Enchanted Lava Bucket"}}}] add enchanted_lava_bucket
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=minion_expander] run loot give @s loot skyblock:items/minion_expander
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove minion_expander
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=solar_panel] run loot give @s loot skyblock:items/solar_panel
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove solar_panel
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=magma_bucket] run loot give @s loot skyblock:items/magma_bucket
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove magma_bucket
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=plasma_bucket] run loot give @s loot skyblock:items/plasma_bucket
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove plasma_bucket
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=everburning_flame] run loot give @s loot skyblock:items/everburning_flame
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove everburning_flame
execute at @e[tag=item_frame,tag=enchanted_lava_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] add enchanted_lava_bucket
item replace entity @e[tag=item_frame,tag=enchanted_lava_bucket] container.0 with air

#Magma Bucket
tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Magma Bucket"}}}] add magma_bucket
execute at @e[tag=item_frame,tag=magma_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=minion_expander] run loot give @s loot skyblock:items/minion_expander
execute at @e[tag=item_frame,tag=magma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove minion_expander
execute at @e[tag=item_frame,tag=magma_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=solar_panel] run loot give @s loot skyblock:items/solar_panel
execute at @e[tag=item_frame,tag=magma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove solar_panel
execute at @e[tag=item_frame,tag=magma_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=enchanted_lava_bucket] run loot give @s loot skyblock:items/enchanted_lava_bucket
execute at @e[tag=item_frame,tag=magma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove enchanted_lava_bucket
execute at @e[tag=item_frame,tag=magma_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=plasma_bucket] run loot give @s loot skyblock:items/plasma_bucket
execute at @e[tag=item_frame,tag=magma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove plasma_bucket
execute at @e[tag=item_frame,tag=magma_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=everburning_flame] run loot give @s loot skyblock:items/everburning_flame
execute at @e[tag=item_frame,tag=magma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove everburning_flame
execute at @e[tag=item_frame,tag=magma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] add magma_bucket
item replace entity @e[tag=item_frame,tag=magma_bucket] container.0 with air

#Plasma Bucket
tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Plasma Bucket"}}}] add plasma_bucket
execute at @e[tag=item_frame,tag=plasma_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=minion_expander] run loot give @s loot skyblock:items/minion_expander
execute at @e[tag=item_frame,tag=plasma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove minion_expander
execute at @e[tag=item_frame,tag=plasma_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=solar_panel] run loot give @s loot skyblock:items/solar_panel
execute at @e[tag=item_frame,tag=plasma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove solar_panel
execute at @e[tag=item_frame,tag=plasma_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=enchanted_lava_bucket] run loot give @s loot skyblock:items/enchanted_lava_bucket
execute at @e[tag=item_frame,tag=plasma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove enchanted_lava_bucket
execute at @e[tag=item_frame,tag=plasma_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=magma_bucket] run loot give @s loot skyblock:items/magma_bucket
execute at @e[tag=item_frame,tag=plasma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove magma_bucket
execute at @e[tag=item_frame,tag=plasma_bucket] if entity @e[tag=Minion,limit=1,sort=nearest,tag=everburning_flame] run loot give @s loot skyblock:items/everburning_flame
execute at @e[tag=item_frame,tag=plasma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] remove everburning_flame
execute at @e[tag=item_frame,tag=plasma_bucket] run tag @e[tag=Minion,limit=1,sort=nearest] add plasma_bucket
item replace entity @e[tag=item_frame,tag=plasma_bucket] container.0 with air

#Everburning Flame
tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Everburning Flame"}}}] add everburning_flame
execute at @e[tag=item_frame,tag=everburning_flame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=minion_expander] run loot give @s loot skyblock:items/minion_expander
execute at @e[tag=item_frame,tag=everburning_flame] run tag @e[tag=Minion,limit=1,sort=nearest] remove minion_expander
execute at @e[tag=item_frame,tag=everburning_flame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=solar_panel] run loot give @s loot skyblock:items/solar_panel
execute at @e[tag=item_frame,tag=everburning_flame] run tag @e[tag=Minion,limit=1,sort=nearest] remove solar_panel
execute at @e[tag=item_frame,tag=everburning_flame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=enchanted_lava_bucket] run loot give @s loot skyblock:items/enchanted_lava_bucket
execute at @e[tag=item_frame,tag=everburning_flame] run tag @e[tag=Minion,limit=1,sort=nearest] remove enchanted_lava_bucket
execute at @e[tag=item_frame,tag=everburning_flame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=magma_bucket] run loot give @s loot skyblock:items/magma_bucket
execute at @e[tag=item_frame,tag=everburning_flame] run tag @e[tag=Minion,limit=1,sort=nearest] remove magma_bucket
execute at @e[tag=item_frame,tag=everburning_flame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=plasma_bucket] run loot give @s loot skyblock:items/plasma_bucket
execute at @e[tag=item_frame,tag=everburning_flame] run tag @e[tag=Minion,limit=1,sort=nearest] remove plasma_bucket
execute at @e[tag=item_frame,tag=everburning_flame] run tag @e[tag=Minion,limit=1,sort=nearest] add everburning_flame
item replace entity @e[tag=item_frame,tag=everburning_flame] container.0 with air


#Enchanted Coal
execute unless data entity @e[tag=Minion,limit=1,sort=nearest] ActiveEffects[{Id:1}].Duration run tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Enchanted Coal"}}}] add enchanted_coal
execute at @e[tag=item_frame,tag=enchanted_coal] run tag @e[tag=Minion,limit=1,sort=nearest] add enchanted_coal
execute if entity @e[tag=item_frame,tag=enchanted_coal] run effect give @e[tag=Minion,limit=1,sort=nearest] speed 86400 0 false
item replace entity @e[tag=item_frame,tag=enchanted_coal] container.0 with air

#Enchanted Charcoal
execute unless data entity @e[tag=Minion,limit=1,sort=nearest] ActiveEffects[{Id:1}].Duration run tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Enchanted Charcoal"}}}] add enchanted_charcoal
execute at @e[tag=item_frame,tag=enchanted_charcoal] run tag @e[tag=Minion,limit=1,sort=nearest] add enchanted_charcoal
execute if entity @e[tag=item_frame,tag=enchanted_charcoal] run effect give @e[tag=Minion,limit=1,sort=nearest] speed 129600 0 false
item replace entity @e[tag=item_frame,tag=enchanted_charcoal] container.0 with air

#Hamster Wheel
execute unless data entity @e[tag=Minion,limit=1,sort=nearest] ActiveEffects[{Id:1}].Duration run tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Hamster Wheel"}}}] add hamster_wheel
execute at @e[tag=item_frame,tag=hamster_wheel] run tag @e[tag=Minion,limit=1,sort=nearest] add hamster_wheel
execute if entity @e[tag=item_frame,tag=hamster_wheel] run effect give @e[tag=Minion,limit=1,sort=nearest] speed 86400 0 false
item replace entity @e[tag=item_frame,tag=hamster_wheel] container.0 with air

#Foul Flesh
execute unless data entity @e[tag=Minion,limit=1,sort=nearest] ActiveEffects[{Id:1}].Duration run tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Foul Flesh"}}}] add foul_flesh
execute at @e[tag=item_frame,tag=foul_flesh] run tag @e[tag=Minion,limit=1,sort=nearest] add foul_flesh
execute if entity @e[tag=item_frame,tag=foul_flesh] run effect give @e[tag=Minion,limit=1,sort=nearest] speed 18000 0 false
item replace entity @e[tag=item_frame,tag=foul_flesh] container.0 with air

#Enchanted Bread
execute unless data entity @e[tag=Minion,limit=1,sort=nearest] ActiveEffects[{Id:1}].Duration run tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Enchanted Bread"}}}] add enchanted_bread
execute at @e[tag=item_frame,tag=enchanted_bread] run tag @e[tag=Minion,limit=1,sort=nearest] add enchanted_bread
execute if entity @e[tag=item_frame,tag=enchanted_bread] run effect give @e[tag=Minion,limit=1,sort=nearest] speed 43200 0 false
item replace entity @e[tag=item_frame,tag=enchanted_bread] container.0 with air

#Catalyst
execute unless data entity @e[tag=Minion,limit=1,sort=nearest] ActiveEffects[{Id:1}].Duration run tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Catalyst"}}}] add catalyst
execute at @e[tag=item_frame,tag=catalyst] run tag @e[tag=Minion,limit=1,sort=nearest] add catalyst
execute if entity @e[tag=item_frame,tag=catalyst] run effect give @e[tag=Minion,limit=1,sort=nearest] speed 10800 0 false
item replace entity @e[tag=item_frame,tag=catalyst] container.0 with air

#Hyper Catalyst
execute unless data entity @e[tag=Minion,limit=1,sort=nearest] ActiveEffects[{Id:1}].Duration run tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Hyper Catalyst"}}}] add hyper_catalyst
execute at @e[tag=item_frame,tag=hyper_catalyst] run tag @e[tag=Minion,limit=1,sort=nearest] add hyper_catalyst
execute if entity @e[tag=item_frame,tag=hyper_catalyst] run effect give @e[tag=Minion,limit=1,sort=nearest] speed 21600 0 false
item replace entity @e[tag=item_frame,tag=hyper_catalyst] container.0 with air

#Tasty Cheese
execute unless data entity @e[tag=Minion,limit=1,sort=nearest] ActiveEffects[{Id:1}].Duration run tag @e[tag=item_frame,nbt={Item:{tag:{Name:"Tasty Cheese"}}}] add tasty_cheese
execute at @e[tag=item_frame,tag=tasty_cheese] run tag @e[tag=Minion,limit=1,sort=nearest] add tasty_cheese
execute if entity @e[tag=item_frame,tag=tasty_cheese] run effect give @e[tag=Minion,limit=1,sort=nearest] speed 3600 0 false
item replace entity @e[tag=item_frame,tag=tasty_cheese] container.0 with air


tag @e[tag=item_frame] remove minion_expander
tag @e[tag=item_frame] remove solar_panel
tag @e[tag=item_frame] remove enchanted_lava_bucket
tag @e[tag=item_frame] remove magma_bucket
tag @e[tag=item_frame] remove plasma_bucket
tag @e[tag=item_frame] remove everburning_flame
tag @e[tag=item_frame] remove enchanted_coal
tag @e[tag=item_frame] remove enchanted_charcoal
tag @e[tag=item_frame] remove hamster_wheel
tag @e[tag=item_frame] remove foul_flesh
tag @e[tag=item_frame] remove enchanted_bread
tag @e[tag=item_frame] remove catalyst
tag @e[tag=item_frame] remove hyper_catalyst
tag @e[tag=item_frame] remove tasty_chesse


function skyblock:spawners/update


execute at @e[tag=item_frame] run tellraw @s ["",{"text":"[Delay: ","color":"gray","italic":true},{"nbt":"MinSpawnDelay","block":"^ ^ ^-1","color":"gray","italic":true},{"text":"-","color":"gray","italic":true},{"nbt":"MaxSpawnDelay","block":"^ ^ ^-1","color":"gray","italic":true},{"text":"]","color":"gray","italic":true}]
execute at @e[tag=item_frame] run tellraw @s ["",{"text":"[SpawnCount: ","color":"gray","italic":true},{"nbt":"SpawnCount","block":"^ ^ ^-1","color":"gray","italic":true},{"text":"]","color":"gray","italic":true}]
execute at @e[tag=item_frame] run tellraw @s ["",{"text":"[SpawnRange: ","color":"gray","italic":true},{"nbt":"SpawnRange","block":"^ ^ ^-1","color":"gray","italic":true},{"text":"]","color":"gray","italic":true}]

execute at @e[tag=item_frame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=minion_expander] run tellraw @s ["",{"text":"[Upgrade: Minion Expander","color":"gray","italic":true}]
execute at @e[tag=item_frame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=solar_panel] run tellraw @s ["",{"text":"[Upgrade: Solar Panel","color":"gray","italic":true}]
execute at @e[tag=item_frame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=enchanted_lava_bucket] run tellraw @s ["",{"text":"[Upgrade: Enchanted Lava Bucket","color":"gray","italic":true}]
execute at @e[tag=item_frame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=magma_bucket] run tellraw @s ["",{"text":"[Upgrade: Magma Bucket","color":"gray","italic":true}]
execute at @e[tag=item_frame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=plasma_bucket] run tellraw @s ["",{"text":"[Upgrade: Plasma Bucket","color":"gray","italic":true}]
execute at @e[tag=item_frame] if entity @e[tag=Minion,limit=1,sort=nearest,tag=everburning_flame] run tellraw @s ["",{"text":"[Upgrade: Everburning Flame","color":"gray","italic":true}]

execute at @e[tag=item_frame] if data entity @e[tag=Minion,limit=1,sort=nearest,tag=enchanted_coal] ActiveEffects[{Id:1}].Duration run tellraw @s ["",{"text":"[Fuel: Enchanted Coal","color":"gray","italic":true}]
execute at @e[tag=item_frame] if data entity @e[tag=Minion,limit=1,sort=nearest,tag=enchanted_charcoal] ActiveEffects[{Id:1}].Duration run tellraw @s ["",{"text":"[Fuel: Enchanted Charcoal","color":"gray","italic":true}]
execute at @e[tag=item_frame] if data entity @e[tag=Minion,limit=1,sort=nearest,tag=hamster_wheel] ActiveEffects[{Id:1}].Duration run tellraw @s ["",{"text":"[Fuel: Hamster Wheel","color":"gray","italic":true}]
execute at @e[tag=item_frame] if data entity @e[tag=Minion,limit=1,sort=nearest,tag=foul_flesh] ActiveEffects[{Id:1}].Duration run tellraw @s ["",{"text":"[Fuel: Foul Flesh","color":"gray","italic":true}]
execute at @e[tag=item_frame] if data entity @e[tag=Minion,limit=1,sort=nearest,tag=enchanted_bread] ActiveEffects[{Id:1}].Duration run tellraw @s ["",{"text":"[Fuel: Enchanted Bread","color":"gray","italic":true}]
execute at @e[tag=item_frame] if data entity @e[tag=Minion,limit=1,sort=nearest,tag=catalyst] ActiveEffects[{Id:1}].Duration run tellraw @s ["",{"text":"[Fuel: Catalyst","color":"gray","italic":true}]
execute at @e[tag=item_frame] if data entity @e[tag=Minion,limit=1,sort=nearest,tag=hyper_catalyst] ActiveEffects[{Id:1}].Duration run tellraw @s ["",{"text":"[Fuel: Hyper Catalyst","color":"gray","italic":true}]
execute at @e[tag=item_frame] if data entity @e[tag=Minion,limit=1,sort=nearest,tag=tasty_chesse] ActiveEffects[{Id:1}].Duration run tellraw @s ["",{"text":"[Fuel: Tasty Cheese","color":"gray","italic":true}]

execute at @e[tag=item_frame] if data entity @e[tag=Minion,limit=1,sort=nearest] ActiveEffects[{Id:1}].Duration run tellraw @s ["",{"text":"[Duration: ","color":"gray","italic":true},{"nbt":"ActiveEffects[{Id:1}].Duration","entity":"@e[tag=Minion,limit=1,sort=nearest]","color":"gray","italic":true},{"text":"]","color":"gray","italic":true}]


tag @e[tag=item_frame] remove item_frame
schedule function skyblock:spawners/revoke 1t replace 