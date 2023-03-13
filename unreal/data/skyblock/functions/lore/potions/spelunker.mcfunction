execute store result score @s seconds run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:115}].Duration 0.05
scoreboard players set @s dummy 60
scoreboard players operation @s minutes = @s seconds 
scoreboard players operation @s minutes /= @s dummy 
scoreboard players operation @s seconds %= @s dummy

execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:115}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/spelunker/0
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:115}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/spelunker/1
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:115}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/spelunker/2
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:115}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/spelunker/3
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:115}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/spelunker/4
