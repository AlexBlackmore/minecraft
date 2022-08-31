attribute @p[tag=taurus_helmet] minecraft:generic.armor_toughness modifier remove 36-67-32-80-1
attribute @p[tag=taurus_helmet] minecraft:generic.attack_damage modifier remove 6-7-82-32-67

tellraw @p[tag=taurus_helmet] {"text":"[Taurus Helmet: -1 Armor Toughness, -10% Attack Damage]","italic":true,"color":"gray"}

tag @p[tag=taurus_helmet] remove taurus_helmet