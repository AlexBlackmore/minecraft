tag @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] add mainhand

tag @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] add mainhand

tag @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] add mainhand

tag @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] add mainhand

tag @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] add mainhand

tag @s[nbt={SelectedItem:{id:"minecraft:trident"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:bow"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] add mainhand


tag @s[nbt={SelectedItem:{id:"minecraft:shield"}}] add offhand

tag @s[nbt={SelectedItem:{id:"minecraft:leather_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:chainmail_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:golden_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:iron_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:turtle_helmet"}}] add head

tag @s[nbt={SelectedItem:{id:"minecraft:leather_chestplate"}}] add chest
tag @s[nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}}] add chest
tag @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate"}}] add chest
tag @s[nbt={SelectedItem:{id:"minecraft:iron_chestplate"}}] add chest
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}}] add chest
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] add chest

tag @s[nbt={SelectedItem:{id:"minecraft:leather_leggings"}}] add legs
tag @s[nbt={SelectedItem:{id:"minecraft:chainmail_leggings"}}] add legs
tag @s[nbt={SelectedItem:{id:"minecraft:golden_leggings"}}] add legs
tag @s[nbt={SelectedItem:{id:"minecraft:iron_leggings"}}] add legs
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_leggings"}}] add legs
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] add legs

tag @s[nbt={SelectedItem:{id:"minecraft:leather_boots"}}] add boots
tag @s[nbt={SelectedItem:{id:"minecraft:chainmail_boots"}}] add boots
tag @s[nbt={SelectedItem:{id:"minecraft:golden_boots"}}] add boots
tag @s[nbt={SelectedItem:{id:"minecraft:iron_boots"}}] add boots
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_boots"}}] add boots
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] add boots

item modify entity @s[tag=mainhand] weapon.mainhand skyblock:reforging/set_default_attributes/mainhand
item modify entity @s[tag=mainhand] weapon.mainhand skyblock:reforging/set_default_attributes/set_nbt

item modify entity @s[tag=offhand] weapon.mainhand skyblock:reforging/set_default_attributes/offhand
item modify entity @s[tag=offhand] weapon.mainhand skyblock:reforging/set_default_attributes/set_nbt

item modify entity @s[tag=head] weapon.mainhand skyblock:reforging/set_default_attributes/head
item modify entity @s[tag=head] weapon.mainhand skyblock:reforging/set_default_attributes/set_nbt

item modify entity @s[tag=chest] weapon.mainhand skyblock:reforging/set_default_attributes/chest
item modify entity @s[tag=chest] weapon.mainhand skyblock:reforging/set_default_attributes/set_nbt

item modify entity @s[tag=legs] weapon.mainhand skyblock:reforging/set_default_attributes/legs
item modify entity @s[tag=legs] weapon.mainhand skyblock:reforging/set_default_attributes/set_nbt

item modify entity @s[tag=feet] weapon.mainhand skyblock:reforging/set_default_attributes/feet
item modify entity @s[tag=feet] weapon.mainhand skyblock:reforging/set_default_attributes/set_nbt


tag @s[tag=mainhand] remove mainhand
tag @s[tag=offhand] remove offhand
tag @s[tag=head] remove head
tag @s[tag=chest] remove chest
tag @s[tag=legs] remove legs
tag @s[tag=feet] remove feet


#item modify entity @s[nbt={SelectedItem:{tag:{Rarity:0}}}] weapon.mainhand skyblock:reforging/set_name_common
#item modify entity @s[nbt={SelectedItem:{tag:{Rarity:1}}}] weapon.mainhand skyblock:reforging/set_name_uncommon
#item modify entity @s[nbt={SelectedItem:{tag:{Rarity:2}}}] weapon.mainhand skyblock:reforging/set_name_rare
#item modify entity @s[nbt={SelectedItem:{tag:{Rarity:3}}}] weapon.mainhand skyblock:reforging/set_name_epic
#item modify entity @s[nbt={SelectedItem:{tag:{Rarity:4}}}] weapon.mainhand skyblock:reforging/set_name_legendary
#item modify entity @s[nbt={SelectedItem:{tag:{Rarity:5}}}] weapon.mainhand skyblock:reforging/set_name_special