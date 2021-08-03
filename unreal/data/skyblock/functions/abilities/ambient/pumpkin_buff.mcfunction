attribute @p minecraft:generic.armor_toughness modifier remove 19-29-87-62-91
attribute @p[predicate=skyblock:pumpkin_armor] minecraft:generic.armor_toughness modifier add 19-29-87-62-91 "Pumpkin Buff" 2 add

attribute @p minecraft:generic.attack_damage modifier remove 13-88-31-75-55
attribute @p[predicate=skyblock:pumpkin_armor] minecraft:generic.attack_damage modifier add 13-88-31-75-55 "Pumpkin Buff" 0.1 multiply

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/pumpkin_buff=true}] run schedule function skyblock:abilities/ambient/pumpkin_buff 2s replace