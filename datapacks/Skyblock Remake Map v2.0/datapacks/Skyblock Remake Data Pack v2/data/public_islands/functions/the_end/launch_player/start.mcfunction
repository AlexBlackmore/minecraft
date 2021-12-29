#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute as @a[scores={Location=8,SubLocation=35}] in skyblock:the_end run summon creeper 0 1 0 {Invulnerable:1b,NoAI:1b,ExplosionRadius:1b,Fuse:1,ignited:1b,Tags:["HasHealthDisplay","CreeperLaunchPlayer","Drag_LaunchPlayer"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100}]}
execute as @a[scores={Location=8,SubLocation=35}] in skyblock:the_end run summon creeper 0 1 0 {Invulnerable:1b,NoAI:1b,ExplosionRadius:1b,Fuse:1,ignited:1b,Tags:["HasHealthDisplay","CreeperLaunchPlayer","Drag_LaunchPlayer"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100}]}
schedule function public_islands:the_end/launch_player/tp 1t
#------------------------------------------#