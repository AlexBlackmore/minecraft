tag @p[advancements={skyblock:accessories/zombie_talisman=true}] add zombie_talisman
tellraw @p[tag=zombie_talisman] ["",{"text":"[Zombie Talisman: +1 Armor Toughness]","italic":true,"color":"gray"}]

attribute @p[tag=zombie_talisman] minecraft:generic.armor_toughness modifier add 7-41-1-76-50 "Zombie Talisman" 1 add
schedule function skyblock:abilities/accessories/zombie_talisman_end 4s replace

advancement revoke @p[tag=zombie_talisman] only skyblock:accessories/zombie_talisman