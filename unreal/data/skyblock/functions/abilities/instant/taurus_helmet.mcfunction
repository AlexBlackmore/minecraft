tag @s add taurus_helmet

attribute @s minecraft:generic.armor_toughness modifier add 36-67-32-80-1 "Taurus Helmet" 1 add
attribute @s minecraft:generic.attack_damage modifier add 6-7-82-32-67 "Taurus Helmet" 0.1 multiply

tellraw @s {"text":"[Taurus Helmet: +1 Armor Toughness, +10% Attack Damage]","italic":true,"color":"gray"}

schedule function skyblock:abilities/instant/taurus_helmet_end 4s replace

advancement revoke @s only skyblock:commands/abilities/taurus_helmet
