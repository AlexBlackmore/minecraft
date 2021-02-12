#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------DURING DRAG SEQUENCE-----------#
execute as @e[type=arrow,distance=..50] if score @s PlayerID = @p PlayerID run tag @s add Drag_ArrowHit
tag @e[tag=Drag_ArrowHit,sort=nearest,limit=1] add TargetEntity
tag @e remove Drag_ArrowHit
execute as @e[type=ender_dragon,name=!"Ender Dragon"] at @s in skyblock:the_end run function stats:damage_update/to_dragon
advancement revoke @s only stats:shot_dragon
#------------------------------------------#