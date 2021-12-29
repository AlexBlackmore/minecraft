#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------MESSAGES-----------------#
tellraw @s ["",{"text":"☬ ","color":"dark_purple"},{"text":"You destroyed an ","color":"light_purple"},{"text":"Ender Crystal","color":"dark_purple"},{"text":"!","color":"light_purple"}]
execute at @a[scores={Location=8}] unless entity @s[distance=0] run tellraw @p ["",{"text":"☬ ","color":"dark_purple"},{"selector":"@s"},{"text":" destroyed an ","color":"light_purple"},{"text":"Ender Crystal","color":"dark_purple"},{"text":"!","color":"light_purple"}]
#----------------PLAY SOUND----------------#
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1.1 1
#------------GIVE CRYSTAL FRAGS------------#
give @s[tag=Held_Telekinesis] minecraft:quartz{Enchantments:[{}],Base:{recipe_preview:{Recipes:[{id:"catalyst"},{id:"crystal_helmet"},{id:"crystal_chestplate"},{id:"crystal_leggings"},{id:"crystal_boots"}]},Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Crystal Fragment","color":"dark_purple","italic":false}]',Lore:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if entity @s[tag=!Held_Telekinesis] as @e[tag=EndCrystalHitBox,nbt={HurtTime:10s}] at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:quartz",Count:1b,tag:{Enchantments:[{}],Base:{recipe_preview:{Recipes:[{id:"catalyst"},{id:"crystal_helmet"},{id:"crystal_chestplate"},{id:"crystal_leggings"},{id:"crystal_boots"}]},Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Crystal Fragment","color":"dark_purple","italic":false}]',Lore:['[{"text":"Right-click to view recipes!","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}}}
#---------------DAMAGE DRAGON--------------#
scoreboard players add @s End_DragDamage 1000
scoreboard players remove @e[type=ender_dragon,name=!"Ender Dragon",limit=1] P_Health 1000
#---------------RESPAWN TIMER--------------#
scoreboard players set @e[tag=End_CrystalLocation,sort=random,limit=1,scores={End_DragSeq=0}] End_DragSeq 2000
execute if predicate minecraft:random_chance/50_percent run scoreboard players set @e[tag=End_CrystalLocation,scores={End_DragSeq=2000},limit=1] End_DragSeq 1400
#--------------REMOVE ENTITIES-------------#
execute as @e[tag=EndCrystalHitBox,nbt={HurtTime:10s}] at @s run kill @e[type=arrow,distance=..5]
execute as @e[tag=EndCrystalHitBox,nbt={HurtTime:10s}] at @s run kill @e[tag=EndCrystal,distance=..3]
execute as @e[tag=EndCrystalHitBox,nbt={HurtTime:10s}] at @s run particle minecraft:explosion ~ ~1 ~ 0.6 0.6 0.6 0.01 5
execute as @e[tag=EndCrystalHitBox,nbt={HurtTime:10s}] at @s run function skyblock:kill
#-------------CLEAR ADVANCEMENT------------#
advancement revoke @s only public_islands:the_end/break_crystal
#------------------------------------------#