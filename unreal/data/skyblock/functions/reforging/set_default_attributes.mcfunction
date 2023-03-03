tag @s[nbt={SelectedItem:{id:"minecraft:shield"}}] add offhand

tag @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{Unbreakable:1b}}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:leather_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:chainmail_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:golden_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:iron_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] add head
tag @s[nbt={SelectedItem:{id:"minecraft:turtle_helmet"}}] add head

tag @s[nbt={SelectedItem:{id:"minecraft:elytra"}}] add chest
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

tag @s[nbt={SelectedItem:{id:"minecraft:leather_boots"}}] add feet
tag @s[nbt={SelectedItem:{id:"minecraft:chainmail_boots"}}] add feet
tag @s[nbt={SelectedItem:{id:"minecraft:golden_boots"}}] add feet
tag @s[nbt={SelectedItem:{id:"minecraft:iron_boots"}}] add feet
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_boots"}}] add feet
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] add feet

tag @s[tag=!offhand,tag=!head,tag=!chest,tag=!legs,tag=!feet] add mainhand

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
