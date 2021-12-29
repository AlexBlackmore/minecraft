tag @p[advancements={skyblock:commands/instant/depth_champion=true}] add depth_champion

attribute @p[tag=depth_champion] minecraft:generic.armor_toughness modifier add 43-14-99-78-59 "Depth Champion" 6 add
tellraw @p[tag=depth_champion] {"text":"[Depth Champion: +4 Armor Toughness]","italic":true,"color":"gray"}

schedule function skyblock:abilities/instant/depth_champion_end 4s replace

advancement revoke @p[tag=depth_champion] only skyblock:commands/instant/depth_champion
