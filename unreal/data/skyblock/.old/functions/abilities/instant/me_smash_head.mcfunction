tag @p[tag=ability] add me_smash_head
attribute @p[tag=me_smash_head] minecraft:generic.attack_damage modifier add 9-65-15-20-96 "ME SMASH HEAD" 1.0 multiply
tellraw @p[tag=me_smash_head] ["",{"text":"ME SMASH HEAD! ","bold":true,"color":"gold"},{"text":" +100% Attack Damage","color":"blue"}]
xp add @p[tag=me_smash_head] -100 points