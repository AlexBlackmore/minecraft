#-----------INK BOMB KILLS STUFF-----------#
kill @s
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,dx=0,sort=nearest,limit=1] ApplyDamage = @s I_AbilDmgStore
execute at @e[tag=!NPC,type=!#stats:show_hp,dx=0,sort=nearest,limit=1] anchored eyes run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 20 normal
effect give @e[tag=!NPC,type=!#stats:show_hp,dx=0,sort=nearest,limit=1] blindness 10 0
#------------------------------------------#