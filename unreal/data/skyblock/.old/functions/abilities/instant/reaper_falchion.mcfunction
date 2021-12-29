tag @p[advancements={skyblock:commands/instant/reaper_falchion=true}] add reaper_falchion

attribute @p[tag=reaper_falchion] minecraft:generic.armor_toughness modifier add 49-84-11-89-61 "Reaper Falchion" 4 add
tellraw @p[tag=reaper_falchion] ["",{"text":"[Reaper Falchion: +4 Armor Toughness]","italic":true,"color":"gray"}]

schedule function skyblock:abilities/instant/reaper_falchion_end 4s replace

advancement revoke @p[tag=reaper_falchion] only skyblock:commands/instant/reaper_falchion