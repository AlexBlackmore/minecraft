#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MESSAGES------------------#
tellraw @s ["",{"text":"☬ ","color":"dark_purple"},{"text":"You placed a Summoning Eye! Brace yourselves! ","color":"light_purple"},{"text":"(","color":"gray"},{"text":"8","color":"green"},{"text":"/","color":"gray"},{"text":"8","color":"green"},{"text":")","color":"gray"}]
execute at @a unless entity @s[distance=0] run tellraw @p ["",{"text":"☬ ","color":"dark_purple"},{"selector":"@s"},{"text":" placed a Summoning Eye! Brace yourselves! ","color":"light_purple"},{"text":"(","color":"gray"},{"text":"8","color":"green"},{"text":"/","color":"gray"},{"text":"8","color":"green"},{"text":")","color":"gray"}]
#-----------SLEEPING TO REMNANT------------#
replaceitem entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
function public_islands:the_end/summoning_eye/sleepingtoremnant
#-------------START SEQUENCE---------------#
execute as @a at @s run playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 1 2 1
execute in skyblock:the_end run fill -55 110 -40 42 110 41 glass replace air
scoreboard players reset @e[tag=End_EyeStand] End_EyeID
scoreboard players set Global End_DragSeq 1
#-------------DRAGON'S GATE----------------#
scoreboard players set Gate End_DragDamage 1000000
execute in skyblock:the_end run summon minecraft:armor_stand 77 26 0 {NoGravity:1b,CustomName:'{"text":"Dragon\'s Gate","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["DragonGate"]}
execute in skyblock:the_end run summon minecraft:armor_stand 77 25.75 0 {NoGravity:1b,CustomName:'[{"text":"[","color":"gray"},{"text":"||||||||||||||||||||","color":"red"},{"text":"]","color":"gray"}]',CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["DragonGate","DragonGatePercent"]}
#------------------------------------------#