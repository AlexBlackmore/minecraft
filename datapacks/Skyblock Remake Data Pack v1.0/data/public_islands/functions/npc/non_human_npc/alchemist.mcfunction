#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------NPC PLACE-----------------#
execute align xyz run summon minecraft:witch ~0.5 ~ ~0.5 {CustomNameVisible:0b,PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:["NPCAlchemistMain","NPCAlchemist","NPCMain","NPC"],CustomNameVisible:1b,CustomName:'{"text":"CLICK","color":"yellow","italic":false,"bold":true}'}
execute align xyz run summon minecraft:armor_stand ~0.5 ~2.2 ~0.5 {CustomNameVisible:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["NPCAlchemist","NPC"],CustomName:'{"text":"Alchemist","color":"white","italic":false,"bold":false}'}
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Skyblock Remake> ","color":"blue","bold":false},{"text":"NPC Placed!","color":"none","bold":false}]
#------------------------------------------#