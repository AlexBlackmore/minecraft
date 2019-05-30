scoreboard players tag @e[tag=!log1] add log0 {Item:{id:"minecraft:log"}}
execute @e[type=item,tag=log0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:log0,CustomNameVisible:1,Invisible:1,NoGravity:1}
entitydata @e[type=item,tag=log0] {tag:log1}
