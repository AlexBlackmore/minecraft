tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Wise",Name:"Wise Dragon Helmet"}}]}] add very_wise
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Wise",Name:"Wise Dragon Chestplate"}}]}] add very_wise
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Wise",Name:"Wise Dragon Leggings"}}]}] add very_wise
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Wise",Name:"Wise Dragon Boots"}}]}] add very_wise

tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Strong",Name:"Strong Dragon Helmet"}}]}] add very_strong
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Strong",Name:"Strong Dragon Chestplate"}}]}] add very_strong
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Strong",Name:"Strong Dragon Leggings"}}]}] add very_strong
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Strong",Name:"Strong Dragon Boots"}}]}] add very_strong

tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Superior",Name:"Superior Dragon Helmet"}}]}] add highly
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Superior",Name:"Superior Dragon Chestplate"}}]}] add highly
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Superior",Name:"Superior Dragon Leggings"}}]}] add highly
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Superior",Name:"Superior Dragon Boots"}}]}] add highly

tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Helmet"}}]}] add extremely
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Chestplate"}}]}] add extremely
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Leggings"}}]}] add extremely
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Boots"}}]}] add extremely

tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Helmet"}}]}] add not_so
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Chestplate"}}]}] add not_so
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Leggings"}}]}] add not_so
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Heavy Boots"}}]}] add not_so

tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Super Heavy Helmet"}}]}] add thicc
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Super Heavy Chestplate"}}]}] add thicc
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Super Heavy Leggings"}}]}] add thicc
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy",Name:"Super Heavy Boots"}}]}] add thicc

tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Perfect",Name:"Perfect Helmet"}}]}] add absolutely
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Perfect",Name:"Perfect Chestplate"}}]}] add absolutely
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Perfect",Name:"Perfect Leggings"}}]}] add absolutely
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Perfect",Name:"Perfect Boots"}}]}] add absolutely

tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Refined",Name:"Refined Copper Pickaxe"}}]}] add even_more
tag @e[tag=reforge_anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Refined",Name:"Refined Netherite Pickaxe"}}]}] add even_more


data modify entity @e[tag=very_wise,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Prefixes[0] set value "Very"
data modify entity @e[tag=very_strong,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Prefixes[0] set value "Very"
data modify entity @e[tag=highly,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Prefixes[0] set value "Highly"
data modify entity @e[tag=extremely,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Prefixes[0] set value "Extremely"
data modify entity @e[tag=not_so,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Prefixes[0] set value "Not So"
data modify entity @e[tag=thicc,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Prefixes[0] set value "Thicc"
data modify entity @e[tag=absolutely,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Prefixes[0] set value "Absolutely"
data modify entity @e[tag=even_more,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Prefixes[0] set value "Even More"


tag @e[tag=reforge_anvil,limit=1,sort=nearest] remove very_wise
tag @e[tag=reforge_anvil,limit=1,sort=nearest] remove very_strong
tag @e[tag=reforge_anvil,limit=1,sort=nearest] remove highly
tag @e[tag=reforge_anvil,limit=1,sort=nearest] remove extremely
tag @e[tag=reforge_anvil,limit=1,sort=nearest] remove not_so
tag @e[tag=reforge_anvil,limit=1,sort=nearest] remove thicc
tag @e[tag=reforge_anvil,limit=1,sort=nearest] remove absolutely
tag @e[tag=reforge_anvil,limit=1,sort=nearest] remove even_more
