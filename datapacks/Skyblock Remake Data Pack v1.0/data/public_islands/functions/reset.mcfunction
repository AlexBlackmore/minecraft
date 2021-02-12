#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------OBJECTIVES----------------#
execute unless score PublicIslands SkyblockModules matches 0.. run scoreboard players set PublicIslands SkyblockModules 1

#Main
scoreboard objectives add Location dummy
scoreboard objectives add SubLocation dummy
scoreboard objectives add LastSubLocation dummy
scoreboard objectives add PrevGamemode dummy

#NPCs
scoreboard objectives add NPC_Skin dummy

#Mob Spawning
scoreboard objectives add PI_HowlingCave dummy
scoreboard objectives add PI_DeepCaverns dummy
scoreboard objectives add PI_TheEnd dummy

#The End
scoreboard objectives add End_EyeCount dummy
scoreboard objectives add End_EyeCool dummy
scoreboard objectives add End_EyeID dummy
scoreboard objectives add End_DragSeq dummy
scoreboard objectives add End_DragDeath dummy
scoreboard objectives add End_DragDamage dummy
scoreboard objectives add End_LDragDamage dummy
scoreboard objectives add End_DropWeight dummy
scoreboard objectives add End_DmgRanking dummy
scoreboard objectives add End_RDProtector dummy
scoreboard objectives add End_RDOld dummy
scoreboard objectives add End_RDWise dummy
scoreboard objectives add End_RDUnstable dummy
scoreboard objectives add End_RDYoung dummy
scoreboard objectives add End_RDStrong dummy
scoreboard objectives add End_RDSuperior dummy
scoreboard objectives add End_ZealotKills dummy
#-----------------BOSSBARS-----------------#
bossbar add dragon {"text":"Ender Dragon","color":"red"}
bossbar set dragon color purple
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Public Islands Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#