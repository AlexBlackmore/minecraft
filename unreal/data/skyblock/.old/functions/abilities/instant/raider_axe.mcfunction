tag @p[advancements={skyblock:commands/instant/raider_axe_upgrade=true}] add raider_axe_upgrade

scoreboard objectives add sharpness_level dummy "Sharpness Level"

execute store result score @p[tag=raider_axe_upgrade] sharpness_level run data get entity @p[tag=raider_axe_upgrade] SelectedItem.tag.Enchantments[{id:"minecraft:sharpness"}].lvl

execute unless score @p[tag=raider_axe_upgrade] sharpness_level matches 45 run tellraw @p[tag=raider_axe_upgrade] {"text":"[Raider Axe: +1 Sharpness]","italic":true,"color":"gray"}
execute if score @p[tag=raider_axe_upgrade] sharpness_level matches 45 run tellraw @p[tag=raider_axe_upgrade] {"text":"[Raider Axe: MAXED!]","italic":true,"color":"gray"}

execute unless score @p[tag=raider_axe_upgrade] sharpness_level matches 45 run item modify entity @p[tag=raider_axe_upgrade] weapon.mainhand skyblock:increase_sharpness_level
execute if score @p[tag=raider_axe_upgrade] sharpness_level matches 44 run execute unless entity @p[tag=raider_axe_upgrade,nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"MAXED!\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"]}}}}] run item modify entity @p[tag=raider_axe_upgrade] weapon.mainhand skyblock:add_lore_maxed


scoreboard objectives remove sharpness_level
advancement revoke @p[tag=raider_axe_upgrade] only skyblock:commands/instant/raider_axe_upgrade_upgrade
tag @p[tag=raider_axe_upgrade] remove raider_axe_upgrade
