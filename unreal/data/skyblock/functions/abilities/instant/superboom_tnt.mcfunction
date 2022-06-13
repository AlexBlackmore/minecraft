execute in minecraft:overworld if entity @s[distance=0..] run tag @s add success
execute in minecraft:the_nether if entity @s[distance=0..] run tag @s add success
execute in minecraft:the_end if entity @s[distance=0..] run tag @s add success

execute at @s[tag=success] run summon minecraft:tnt ~ ~ ~ {Fuse:40}
playsound minecraft:item.flintandsteel.use player @s
effect give @s hunger 2

tag @s[predicate=skyblock:random_chance5] add break
item modify entity @s[tag=break] weapon.mainhand skyblock:subtract_item
tellraw @s[tag=break] {"text":"Your Superboom TNT has run out of magical energy...","color":"red"}
give @s[tag=break] minecraft:tnt

tag @p[tag=success] remove success
tag @p[tag=break] remove break
