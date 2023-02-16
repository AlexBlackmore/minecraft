tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Wise",Name:"Wise Dragon Helmet"}}]}] add very_wise
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Wise",Name:"Wise Dragon Chestplate"}}]}] add very_wise
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Wise",Name:"Wise Dragon Leggings"}}]}] add very_wise
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Wise",Name:"Wise Dragon Boots"}}]}] add very_wise

tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Strong",Name:"Strong Dragon Helmet"}}]}] add very_strong
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Strong",Name:"Strong Dragon Chestplate"}}]}] add very_strong
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Strong",Name:"Strong Dragon Leggings"}}]}] add very_strong
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Strong",Name:"Strong Dragon Boots"}}]}] add very_strong

tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Superior",Name:"Superior Dragon Helmet"}}]}] add highly
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Superior",Name:"Superior Dragon Chestplate"}}]}] add highly
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Superior",Name:"Superior Dragon Leggings"}}]}] add highly
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Superior",Name:"Superior Dragon Boots"}}]}] add highly

tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Helmet"}}]}] add extremely
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Chestplate"}}]}] add extremely
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Leggings"}}]}] add extremely
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Boots"}}]}] add extremely

tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Helmet"}}]}] add not_so
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Chestplate"}}]}] add not_so
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Leggings"}}]}] add not_so
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Boots"}}]}] add not_so

tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Super Heavy Helmet"}}]}] add thicc
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Super Heavy Chestplate"}}]}] add thicc
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Super Heavy Leggings"}}]}] add thicc
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Super Heavy Boots"}}]}] add thicc

tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Perfect",Name:"Perfect Helmet"}}]}] add absolutely
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Perfect",Name:"Perfect Chestplate"}}]}] add absolutely
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Perfect",Name:"Perfect Leggings"}}]}] add absolutely
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Perfect",Name:"Perfect Boots"}}]}] add absolutely

tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Refined",Name:"Refined Copper Pickaxe"}}]}] add even_more
tag @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Refined",Name:"Refined Netherite Pickaxe"}}]}] add even_more


data modify entity @e[tag=very_wise,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Very"
data modify entity @e[tag=very_strong,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Very"
data modify entity @e[tag=highly,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Highly"
data modify entity @e[tag=extremely,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Extremely"
data modify entity @e[tag=not_so,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Not So"
data modify entity @e[tag=thicc,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Thicc"
data modify entity @e[tag=absolutely,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Absolutely"
data modify entity @e[tag=even_more,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Even More"

execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_common
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_uncommon
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_rare
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_epic
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_legendary
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_special

data modify entity @e[tag=very_wise,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Wise"
data modify entity @e[tag=very_strong,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Strong"
data modify entity @e[tag=highly,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Superior"
data modify entity @e[tag=extremely,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Heavy"
data modify entity @e[tag=not_so,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Heavy"
data modify entity @e[tag=thicc,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Heavy"
data modify entity @e[tag=absolutely,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Perfect"
data modify entity @e[tag=even_more,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Refined"


tag @e[tag=anvil,limit=1,sort=nearest] remove very_wise
tag @e[tag=anvil,limit=1,sort=nearest] remove very_strong
tag @e[tag=anvil,limit=1,sort=nearest] remove highly
tag @e[tag=anvil,limit=1,sort=nearest] remove extremely
tag @e[tag=anvil,limit=1,sort=nearest] remove not_so
tag @e[tag=anvil,limit=1,sort=nearest] remove thicc
tag @e[tag=anvil,limit=1,sort=nearest] remove absolutely
tag @e[tag=anvil,limit=1,sort=nearest] remove even_more
