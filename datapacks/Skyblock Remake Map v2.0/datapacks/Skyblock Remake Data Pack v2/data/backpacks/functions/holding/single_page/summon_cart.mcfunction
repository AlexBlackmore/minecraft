execute if predicate backpacks:small_backpack run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["BackpackMove","new_backpack","small_backpack"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["small_backpack","new_backpack","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Small Backpack"}',DisplayState:{Name:"minecraft:air"}}],DisabledSlots:16191}

execute if predicate backpacks:medium_backpack run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["BackpackMove","new_backpack","medium_backpack"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["medium_backpack","new_backpack","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Medium Backpack"}',DisplayState:{Name:"minecraft:air"}}],DisabledSlots:16191}

execute if predicate backpacks:large_backpack run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["BackpackMove","new_backpack","large_backpack"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["large_backpack","new_backpack","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Large Backpack"}',DisplayState:{Name:"minecraft:air"}}],DisabledSlots:16191}

execute as @e[type=armor_stand,tag=new_backpack] run scoreboard players operation @s backpacks.cartid = @a[tag=summoning_cart,limit=1,sort=nearest] backpacks.cartid
execute as @e[type=chest_minecart,limit=1,sort=nearest,tag=new_backpack] run data modify entity @s Items set from entity @p[predicate=backpacks:holding] SelectedItem.tag.Items

tag @e[type=chest_minecart,tag=new_backpack] add backpack
tag @e[type=chest_minecart,tag=new_backpack] remove new_backpack
tag @e[type=armor_stand,tag=new_backpack] add backpack
tag @e[type=armor_stand,tag=new_backpack] remove new_backpack
tag @s remove summoning_cart