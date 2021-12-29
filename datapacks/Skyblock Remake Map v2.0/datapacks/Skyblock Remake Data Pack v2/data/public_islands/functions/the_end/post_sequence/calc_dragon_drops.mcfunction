#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------CALC DROP WEIGHT-------------#
scoreboard players set @s End_DropWeight 0

scoreboard players add @s[scores={End_EyeCount=1}] End_DropWeight 100
scoreboard players add @s[scores={End_EyeCount=2}] End_DropWeight 200
scoreboard players add @s[scores={End_EyeCount=3}] End_DropWeight 300
scoreboard players add @s[scores={End_EyeCount=4..}] End_DropWeight 400

scoreboard players add @s[scores={End_DmgRanking=1}] End_DropWeight 300
scoreboard players add @s[scores={End_DmgRanking=2}] End_DropWeight 250
scoreboard players add @s[scores={End_DmgRanking=3}] End_DropWeight 200
scoreboard players add @s[scores={End_DmgRanking=4..7}] End_DropWeight 125
scoreboard players add @s[scores={End_DmgRanking=8..15}] End_DropWeight 100
scoreboard players add @s[scores={End_DmgRanking=16..}] End_DropWeight 75
#---------------MAJOR DROPS----------------#
#100%: 1,000,000, 1%: 10,000, 0.0001%: 1

scoreboard players set @s[scores={End_EyeCount=1}] DropChance 40000
scoreboard players set @s[scores={End_EyeCount=2}] DropChance 80000
scoreboard players set @s[scores={End_EyeCount=3}] DropChance 120000
scoreboard players set @s[scores={End_EyeCount=4..}] DropChance 160000
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] unless score $Drag_Type End_DragSeq matches 6 run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] if score out RandMath <= @s DropChance unless score $Drag_Type End_DragSeq matches 6 run function public_islands:the_end/post_sequence/reward_zone/drop/aspect_of_the_dragons


scoreboard players set @s DropChance 100000
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] unless score $Drag_Type End_DragSeq matches 6 run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] if score out RandMath <= @s DropChance unless score $Drag_Type End_DragSeq matches 6 run function public_islands:the_end/post_sequence/reward_zone/drop/dragon_scale

scoreboard players set @s DropChance 150000
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] if score out RandMath <= @s DropChance run function public_islands:the_end/post_sequence/reward_zone/drop/dragon_claw

scoreboard players set @s DropChance 120000
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] if score $Drag_Type End_DragSeq matches 6 run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] if score out RandMath <= @s DropChance if score $Drag_Type End_DragSeq matches 6 run function public_islands:the_end/post_sequence/reward_zone/drop/dragon_horn

scoreboard players set @s DropChance 400
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] if score out RandMath <= @s DropChance run function public_islands:the_end/post_sequence/reward_zone/drop/legendary_ender_dragon_pet

scoreboard players set @s DropChance 1000
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=450..}] if score out RandMath <= @s DropChance run function public_islands:the_end/post_sequence/reward_zone/drop/epic_ender_dragon_pet

scoreboard players set @s DropChance 250000
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=250..}] if score $Drag_Type End_DragSeq matches 3 run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=250..}] if score out RandMath <= @s DropChance if score $Drag_Type End_DragSeq matches 3 run function public_islands:the_end/post_sequence/reward_zone/drop/travel_scroll_to_dragons_nest

scoreboard players set @s DropChance 300000
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=400..}] run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=400..}] if score out RandMath <= @s DropChance run function public_islands:the_end/post_sequence/reward_zone/drop/chestplate

scoreboard players set @s DropChance 350000
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=325..}] run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=325..}] if score out RandMath <= @s DropChance run function public_islands:the_end/post_sequence/reward_zone/drop/helmet

scoreboard players set @s DropChance 550000
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=350..}] run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=350..}] if score out RandMath <= @s DropChance run function public_islands:the_end/post_sequence/reward_zone/drop/leggings

scoreboard players set @s DropChance 550000
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=300..}] run function stats:calculate/drop_chance/success
execute if entity @s[tag=!End_MajorLootGiven,scores={End_DropWeight=300..}] if score out RandMath <= @s DropChance run function public_islands:the_end/post_sequence/reward_zone/drop/boots

tag @s remove End_MajorLootGiven
#----------------FRAGMENTS-----------------#
scoreboard players operation @s End_DropWeight /= c22 Constant

execute if score @s End_DropWeight matches 1.. if score $Drag_Type End_DragSeq matches 0 run summon item ~ ~ ~ {Tags:["End_DragFragInit"],PickupDelay:0,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;487755728,-1138208796,-1931667479,-620626379],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDhkZTMzOWFmNjNhMjI5YzkyMzhkMDI3ZTQ3ZjUzZWViNTYxNDFhNDE5ZjUxYjM1YzMxZWExNDk0YjQzNWRkMyJ9fX0="}]}},Base:{recipe_preview:{Recipes:[{id:"protector_helmet"},{id:"protector_chestplate"},{id:"protector_leggings"},{id:"protector_boots"}]},Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Protector Dragon Fragment","color":"dark_purple","italic":false}]',Lore:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}}}
execute if score @s End_DropWeight matches 1.. if score $Drag_Type End_DragSeq matches 1 run summon item ~ ~ ~ {Tags:["End_DragFragInit"],PickupDelay:0,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1803996097,-241548902,-1590779544,-2130894356],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2FhMDlhZDE3N2ZiY2NjNTNmYTMxNmNjMDRiZGQyYzkzNjZiYWVkODg5ZGY3NmM1YTI5ZGVmZWE4MTcwZGVmNSJ9fX0="}]}},Base:{recipe_preview:{Recipes:[{id:"old_helmet"},{id:"old_chestplate"},{id:"old_leggings"},{id:"old_boots"}]},Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Old Dragon Fragment","color":"dark_purple","italic":false}]',Lore:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}}}
execute if score @s End_DropWeight matches 1.. if score $Drag_Type End_DragSeq matches 2 run summon item ~ ~ ~ {Tags:["End_DragFragInit"],PickupDelay:0,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1724413355,-1505541214,-1844459610,-770184410],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQ3NjIwYjJlNDkzNDk2M2JiMTI1MDgzMTBkMDU0OTRjMDY3ZGMzM2UwMDhjZWNmMmNkN2I0NTQ5NjU0ZmFiMyJ9fX0="}]}},Base:{recipe_preview:{Recipes:[{id:"wise_helmet"},{id:"wise_chestplate"},{id:"wise_leggings"},{id:"wise_boots"}]},Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Wise Dragon Fragment","color":"dark_purple","italic":false}]',Lore:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}}}
execute if score @s End_DropWeight matches 1.. if score $Drag_Type End_DragSeq matches 3 run summon item ~ ~ ~ {Tags:["End_DragFragInit"],PickupDelay:0,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1727092443,-1155445646,-1514790250,1739467457],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTgyMjhjMjM0YzM5MDNjNTEyYTVhMGFhNDUyNjBlN2I1NjdlMGUyMGVlZmM3ZDU2MWNjZWM5N2IyOTU4NzFhZiJ9fX0="}]}},Base:{recipe_preview:{Recipes:[{id:"unstable_helmet"},{id:"unstable_chestplate"},{id:"unstable_leggings"},{id:"unstable_boots"}]},Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Unstable Dragon Fragment","color":"dark_purple","italic":false}]',Lore:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}}}
execute if score @s End_DropWeight matches 1.. if score $Drag_Type End_DragSeq matches 4 run summon item ~ ~ ~ {Tags:["End_DragFragInit"],PickupDelay:0,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-375021975,857554978,-2083636233,-1277249446],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGI1YmQ2YjY0ZThiZDZjNThmNWNkMWU3OWE1NTAyZDQ0NDhiYWZjMDA2ZDJmZTA1NjhmNmEwZDZiODZkNDQ5ZSJ9fX0="}]}},Base:{recipe_preview:{Recipes:[{id:"young_helmet"},{id:"young_chestplate"},{id:"young_leggings"},{id:"young_boots"}]},Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Young Dragon Fragment","color":"dark_purple","italic":false}]',Lore:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}}}
execute if score @s End_DropWeight matches 1.. if score $Drag_Type End_DragSeq matches 5 run summon item ~ ~ ~ {Tags:["End_DragFragInit"],PickupDelay:0,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1162558492,1849773382,-1544087557,-1954597724],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmVlMzJmYmQ0YzdiMDNiODY5MDc4YWExZjQ5M2EzOTBlNmUxM2I0NjFkNjEzNzA3ZWFmYjMyNmRiY2QyYjRiNSJ9fX0="}]}},Base:{recipe_preview:{Recipes:[{id:"strong_helmet"},{id:"strong_chestplate"},{id:"strong_leggings"},{id:"strong_boots"}]},Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Strong Dragon Fragment","color":"dark_purple","italic":false}]',Lore:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}}}
execute if score @s End_DropWeight matches 1.. if score $Drag_Type End_DragSeq matches 6 run summon item ~ ~ ~ {Tags:["End_DragFragInit"],PickupDelay:0,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2084327970,717899712,-1577301697,-329191066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmY4OWIxNTBiZTljNGM1MjQ5ZjM1NWY2OGVhMGM0MzkxMzAwYTliZTFmMjYwZDc1MGZjMzVhMTgxN2FkNzk2ZSJ9fX0="}]}},Base:{recipe_preview:{Recipes:[{id:"superior_helmet"},{id:"superior_chestplate"},{id:"superior_leggings"},{id:"superior_boots"}]},Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Superior Dragon Fragment","color":"dark_purple","italic":false}]',Lore:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}}}
execute store result entity @e[tag=End_DragFragInit,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get @s End_DropWeight
tag @e remove End_DragFragInit
#------------------------------------------#