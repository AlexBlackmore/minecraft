#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------NPC PLACE-----------------#
execute align xyz run summon minecraft:villager ~0.5 ~0.5 ~0.5 {CareerLevel:1,Offers:{},Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:["NPCCampfireAdeptMain","NPCCampfireAdept","NPCMain","NPC"],CustomNameVisible:1b,CustomName:'{"text":"Campfire Adept","color":"white","italic":false,"bold":false}'}
execute align xyz run summon minecraft:armor_stand ~0.5 ~2.2 ~0.5 {CustomNameVisible:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["NPCCampfireAdept","NPC"],CustomName:'{"text":"CLICK","color":"yellow","italic":false,"bold":true}'}
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Skyblock Remake> ","color":"blue","bold":false},{"text":"NPC Placed!","color":"none","bold":false}]
#------------------------------------------#