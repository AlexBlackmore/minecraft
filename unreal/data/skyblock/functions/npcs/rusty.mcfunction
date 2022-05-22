tellraw @s[predicate=!skyblock:sneaking] ["",{"text":"<Rusty> Hi, I'm the janitor of this mine. You would not believe how many people leave broken tools behind them! It drives me insane, everyone should be using ","color":"white"},{"text":"Unbreaking","color":"light_purple"},{"text":" on their tools! If you want I can increase the level of Unbreaking on any of your items for just ","color":"white"},{"text":"100 XP","color":"dark_aqua"},{"text":".","color":"white"}]

execute if data entity @s[predicate=skyblock:sneaking,level=7..] SelectedItem.tag.Damage run tag @s add success

item modify entity @s[tag=success] weapon.mainhand skyblock:enchantments/increase_unbreaking
xp add @s[tag=success] -100 points
playsound minecraft:entity.player.levelup player @s[tag=success]
playsound minecraft:entity.villager.no player @s[tag=!success]

tag @s[tag=success] remove success

advancement revoke @s only skyblock:commands/npcs/rusty