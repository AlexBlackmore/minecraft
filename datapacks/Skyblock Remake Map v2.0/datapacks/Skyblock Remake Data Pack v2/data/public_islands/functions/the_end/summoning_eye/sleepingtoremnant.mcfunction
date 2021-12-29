#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------SLEEPING TO REMNANT------------#
execute as @e[type=item,nbt={Item:{tag:{SleepingEye:1b}}}] run data merge entity @s {Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}}}
execute as @a if data entity @s Inventory[].tag.SleepingEye run function public_islands:the_end/summoning_eye/sleepingtoremnant/inventory
execute as @a[tag=Menu] at @s as @e[tag=EnderMenuChest] if score @s PlayerID = @p PlayerID if data entity @s Items[].tag.SleepingEye run function public_islands:the_end/summoning_eye/sleepingtoremnant/enderchest_open
execute as @a[tag=!InsideEnderChest] if data entity @s EnderItems[].tag.SleepingEye run function public_islands:the_end/summoning_eye/sleepingtoremnant/enderchest_closed
tellraw @a[tag=End_HadSleeping] [{"text":"Your Sleeping Eyes have been awoken by the magic of the Dragon. They are now Remnants of the Eye!","color":"dark_purple"}]
tag @e remove InsideEnderChest
tag @a remove End_HadSleeping
#------------------------------------------#