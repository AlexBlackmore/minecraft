tellraw @s[predicate=!skyblock:sneaking] ["",{"text":"<Rusty> Hi, I'm the janitor of this mine. You would not believe how many people leave broken tools behind them! It drives me insane, everyone should be using ","color":"white"},{"text":"Unbreaking","color":"light_purple"},{"text":" on their tools! If you want I can increase the level of Unbreaking on any of your items for just ","color":"white"},{"text":"1 level","color":"dark_aqua"},{"text":".","color":"white"}]

execute if data entity @s[predicate=skyblock:sneaking,level=1..] SelectedItem.tag.Damage run tag @s add success

scoreboard objectives add unbreaking dummy "Unbreaking Level"
scoreboard objectives add level dummy "XP Level"

execute store result score @s unbreaking run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score @s level run data get entity @s XpLevel

execute if score @s[tag=success] level < @s[tag=success] unbreaking run tag @s remove success
item modify entity @s[tag=success] weapon.mainhand skyblock:enchantments/unbreaking_increase
xp add @s[tag=success] -1 levels
playsound minecraft:entity.player.levelup player @s[tag=success]

tellraw @s[predicate=skyblock:sneaking,tag=!success] ["",{"text":"<Rusty>","color":"white"},{"text":" I can increase the level of Unbreaking on an item only if your total ","color":"red"},{"text":"XP level","color":"dark_aqua"},{"text":" is greater than that item's ","color":"red"},{"text":"Unbreaking","color":"blue"},{"text":" level!","color":"red"}]
playsound minecraft:entity.villager.no player @s[tag=!success]

tag @s[tag=success] remove success

advancement revoke @s only skyblock:commands/npcs/rusty