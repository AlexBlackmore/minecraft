summon lightning_bolt ~ ~-9 ~
scoreboard players reset @s ThunderlordHits

execute store result score $EnchantLevel Temp run data get entity @e[sort=nearest,limit=1,tag=TargetEntity,type=player,nbt={SelectedItem:{tag:{Base:{Enchantments:[{thunderlord:{identifier:1b}}]}}}}] SelectedItem.tag.Base.Enchantments[{thunderlord:{identifier:1b}}].thunderlord.bonus
scoreboard players operation $Damage Temp = @e[sort=nearest,limit=1,tag=TargetEntity,type=player,nbt={SelectedItem:{tag:{Base:{Enchantments:[{thunderlord:{identifier:1b}}]}}}}] P_Strength
scoreboard players operation $Damage Temp *= $EnchantLevel Temp
scoreboard players operation $Damage Temp /= c100 Constant
scoreboard players operation @s P_Health -= $Damage Temp

execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign
execute at @s rotated as @p run summon minecraft:armor_stand ^ ^0.5 ^-2 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Timeout","1SecTimeout","DamageDealt","DamageDealtNew2"],CustomNameVisible:1b,CustomName:'{"text":"","color":"gray","italic":false}'}
execute in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'[{"score":{"name":"$Damage","objective":"Temp"},"color":"gray"}]'}
execute in minecraft:overworld run data modify entity @e[tag=DamageDealtNew2,limit=1,sort=nearest] CustomName set from block 29999978 1 29832 Text1
tag @s remove DamageDealtNew2
execute in minecraft:overworld run setblock 29999978 1 29832 air