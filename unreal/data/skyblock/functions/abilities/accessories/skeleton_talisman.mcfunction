tag @p[advancements={skyblock:accessories/skeleton_talisman=true}] add skeleton_talisman
tellraw @p[tag=skeleton_talisman] ["",{"text":"[Skeleton Talisman: +1 Armor Toughness]","italic":true,"color":"gray"}]

attribute @p[tag=skeleton_talisman] minecraft:generic.armor_toughness modifier add 74-66-91-36-42 "Skeleton Talisman" 1 add
schedule function skyblock:abilities/accessories/skeleton_talisman_end 4s replace

advancement revoke @p[tag=skeleton_talisman] only skyblock:accessories/skeleton_talisman