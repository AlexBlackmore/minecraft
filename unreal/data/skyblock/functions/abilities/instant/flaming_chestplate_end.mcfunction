attribute @p[tag=flaming_chestplate] minecraft:generic.armor_toughness modifier remove 27-90-46-55-52
attribute @p[tag=flaming_chestplate] minecraft:generic.attack_damage modifier remove 6-60-96-21-21

tellraw @p[tag=flaming_chestplate] {"text":"[Flaming Chestplate: -1 Armor Toughness, -10% Attack Damage]","italic":true,"color":"gray"}

tag @p[tag=flaming_chestplate] remove flaming_chestplate