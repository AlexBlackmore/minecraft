execute store result score @s seconds run data get entity @s SelectedItem.tag.CustomPotionEffects[{Id:104}].Duration 0.05
scoreboard players set @s dummy 60
scoreboard players operation @s minutes = @s seconds 
scoreboard players operation @s minutes /= @s dummy 
scoreboard players operation @s seconds %= @s dummy

execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:104,Amplifier:0}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/adrenaline/0
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:104,Amplifier:1}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/adrenaline/1
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:104,Amplifier:2}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/adrenaline/2
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:104,Amplifier:3}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/adrenaline/3
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:104,Amplifier:4}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/adrenaline/4
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:104,Amplifier:5}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/adrenaline/5
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:104,Amplifier:6}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/adrenaline/6
execute if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:104,Amplifier:7}] run item modify entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand skyblock:potions/adrenaline/7
