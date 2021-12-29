execute if predicate personal_compactors:pcompactor_4000 run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["PCompactMove","new_pcompactor","p4000"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["p4000","new_pcompactor","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Personal Compactor 4000"}',DisplayState:{Name:"minecraft:air"}}],DisabledSlots:16191}

execute if predicate personal_compactors:pcompactor_5000 run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["PCompactMove","new_pcompactor","p5000"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["p5000","new_pcompactor","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Personal Compactor 5000"}',DisplayState:{Name:"minecraft:air"}}],DisabledSlots:16191}

execute if predicate personal_compactors:pcompactor_6000 run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["PCompactMove","new_pcompactor","p6000"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["p6000","new_pcompactor","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Personal Compactor 6000"}',DisplayState:{Name:"minecraft:air"}}],DisabledSlots:16191}

execute if predicate personal_compactors:pcompactor_7000 run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["PCompactMove","new_pcompactor","p7000"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["p7000","new_pcompactor","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Personal Compactor 7000"}',DisplayState:{Name:"minecraft:air"}}],DisabledSlots:16191}

execute as @e[type=armor_stand,tag=new_pcompactor] run scoreboard players operation @s pcompact.cartid = @a[tag=summoning_cart,limit=1,sort=nearest] pcompact.cartid
execute as @e[type=chest_minecart,limit=1,sort=nearest,tag=new_pcompactor] run data modify entity @s Items set from entity @p[predicate=personal_compactors:holding] SelectedItem.tag.Items

tag @e[type=chest_minecart,tag=new_pcompactor] add pcompactor
tag @e[type=chest_minecart,tag=new_pcompactor] remove new_pcompactor
tag @e[type=armor_stand,tag=new_pcompactor] add pcompactor
tag @e[type=armor_stand,tag=new_pcompactor] remove new_pcompactor