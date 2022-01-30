tellraw @s[predicate=!skyblock:sneaking] ["",{"text":"<Vanessa> For a few coins, I'll conjure the rain!","color":"white"}]

tellraw @s[predicate=skyblock:sneaking,level=..47] ["",{"text":"<Vanessa>","color":"white"},{"text":" You need at least ","color":"red"},{"text":"5,000 XP","color":"dark_aqua"},{"text":" or  ","color":"red"},{"text":"48 levels","color":"green"},{"text":" to summon the rain!","color":"red"}]
playsound minecraft:entity.villager.no player @s[predicate=skyblock:sneaking,level=..47]
execute if entity @s[predicate=skyblock:sneaking,level=48..] run weather rain
xp add @s[predicate=skyblock:sneaking,level=48..] -5000 points

advancement revoke @s only skyblock:commands/npcs/vanessa