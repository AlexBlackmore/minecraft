execute store result score @s seconds run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:113}].Duration 0.05
scoreboard players set @s dummy 60
scoreboard players operation @s minutes = @s seconds 
scoreboard players operation @s minutes /= @s dummy 
scoreboard players operation @s seconds %= @s dummy

execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:113,Amplifier:0}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/magic_find/0
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:113,Amplifier:1}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/magic_find/1
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:113,Amplifier:2}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/magic_find/2
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:113,Amplifier:3}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/magic_find/3
