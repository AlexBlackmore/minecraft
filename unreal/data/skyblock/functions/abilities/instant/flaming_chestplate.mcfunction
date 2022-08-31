tag @s add flaming_chestplate

attribute @s minecraft:generic.armor_toughness modifier add 27-90-46-55-52 "Flaming Chestplate" 1 add
attribute @s minecraft:generic.attack_damage modifier add 6-60-96-21-21 "Flaming Chestplate" 0.1 multiply

tellraw @s {"text":"[Flaming Chestplate: +1 Armor Toughness, +10% Attack Damage]","italic":true,"color":"gray"}

schedule function skyblock:abilities/instant/flaming_chestplate_end 4s replace

advancement revoke @s only skyblock:commands/abilities/flaming_chestplate
