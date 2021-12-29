#Mastiff armor
execute if score @s MastiffCooldown matches 20 run function armor:full_set_bonus/abilities/absolute_unit/heal
execute if entity @s[tag=SetBonus_Absolute_Unit] run execute if entity @e[tag=DamageDealtNew, type=wolf] run function armor:full_set_bonus/abilities/absolute_unit/decrease_damage
#Monster armors
execute if entity @s[tag=SetBonus_Monster_Hunter] run function armor:full_set_bonus/abilities/monster_hunter/took_damage
execute if entity @s[tag=SetBonus_Monster_Raider] run function armor:full_set_bonus/abilities/monster_raider/took_damage