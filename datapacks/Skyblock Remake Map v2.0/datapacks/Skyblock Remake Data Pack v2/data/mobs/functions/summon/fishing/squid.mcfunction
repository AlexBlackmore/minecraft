#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
summon minecraft:squid ~ ~ ~ {Motion:[0.0d,0.5d,0.0d],CustomName:'{"text":"Squid","color":"red","italic":false}',Tags:["NewFishing","Fishing","Squid"],PortalCooldown:1,DeathLootTable:"",Attributes:[{Name:generic.max_health,Base:120}]}
tellraw @s {"text":"You caught a lowly Squid.","color":"green"}
#------------------------------------------#