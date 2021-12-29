execute if predicate backpacks:greater_backpack run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["BackpackMove","new_backpack","greater_backpack"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["greater_backpack","new_backpack","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Greater Backpack"}',DisplayState:{Name:"minecraft:air"}}],DisabledSlots:16191}

execute if predicate backpacks:jumbo_backpack run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["BackpackMove","new_backpack","jumbo_backpack"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["jumbo_backpack","new_backpack","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Jumbo Backpack"}',DisplayState:{Name:"minecraft:air"}}],DisabledSlots:16191}

execute as @e[type=armor_stand,tag=new_backpack] run scoreboard players operation @s backpacks.cartid = @a[tag=summoning_cart,limit=1,sort=nearest] backpacks.cartid
execute as @e[type=chest_minecart,limit=1,sort=nearest,tag=new_backpack] run data modify entity @s Items set from entity @p SelectedItem.tag.Items.Page1
execute as @e[type=chest_minecart,limit=1,sort=nearest,tag=new_backpack] run item replace entity @s container.26 with arrow{display:{Name:'[{"text":"Down","italic":false,"color":"green"}]'},LockedSlot:1b,DownArrow:1b}

tag @e[type=chest_minecart,tag=new_backpack] add backpack
tag @e[type=chest_minecart,tag=new_backpack] remove new_backpack
tag @e[type=armor_stand,tag=new_backpack] add backpack
tag @e[type=armor_stand,tag=new_backpack] remove new_backpack
tag @s remove summoning_cart