#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------FIRE BLAST ABILITY (LOOP)--------#
execute as @a[scores={I_FireBlastTime=20}] run function items:item_abilities/right_click/fire_blast/summon_fireball
execute as @a[scores={I_FireBlastTime=1}] run function items:item_abilities/right_click/fire_blast/summon_fireball
scoreboard players remove @a[scores={I_FireBlastTime=1..}] I_FireBlastTime 1
#------------------------------------------#