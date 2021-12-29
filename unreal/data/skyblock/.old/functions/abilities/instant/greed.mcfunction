scoreboard objectives add emeralds dummy "Emerald Count"
scoreboard objectives add sharpness dummy "Sharpness Level"

execute store result score @p[tag=ability] emeralds run data get entity @p[tag=ability] Inventory[{Slot:-106b}].Count
execute store result score @p[tag=ability] sharpness run data get entity @p[tag=ability] SelectedItem.tag.Enchantments[{id:"minecraft:sharpness"}].lvl

tag @p[tag=ability,scores={emeralds=10..,sharpness=..106}] add greed
tellraw @p[tag=greed] {"text":"[Greed: +2 Sharpness, +1 Attack Damage]","italic":true,"color":"gray"}
tellraw @p[tag=ability,tag=!greed,scores={emeralds=10..}] {"text":"This Midas' Sword is already max level!","color":"red"}
tellraw @p[tag=ability,tag=!greed,scores={sharpness=..106}] {"text":"You need at least 10 Rare Enchanted Emeralds to upgrade this sword!","color":"red"}

playsound minecraft:block.anvil.use player @p[tag=greed]
item modify entity @p[tag=greed] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=greed] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=greed] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=greed] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=greed] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=greed] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=greed] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=greed] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=greed] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=greed] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=greed] weapon.mainhand skyblock:increase_sharpness_level
item modify entity @p[tag=greed] weapon.mainhand skyblock:increase_sharpness_level
item modify entity @p[tag=greed] weapon.mainhand skyblock:increase_attack_damage_mainhand
item modify entity @p[tag=greed,scores={sharpness=106}] weapon.mainhand skyblock:add_lore_maxed


scoreboard objectives remove emeralds
scoreboard objectives remove sharpness
tag @p[tag=greed] remove greed
