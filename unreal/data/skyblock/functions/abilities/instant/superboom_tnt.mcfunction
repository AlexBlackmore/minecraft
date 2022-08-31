execute at @s[gamemode=survival] run summon minecraft:tnt ~ ~ ~ {Fuse:40}
playsound minecraft:item.flintandsteel.use player @s
effect give @s hunger 2

tag @s[predicate=skyblock:random_chance/1] add break
item modify entity @s[tag=break] weapon.mainhand skyblock:subtract_item
playsound minecraft:block.fire.extinguish player @s[tag=break]
give @s[tag=break] minecraft:tnt

tag @p[tag=break] remove break
