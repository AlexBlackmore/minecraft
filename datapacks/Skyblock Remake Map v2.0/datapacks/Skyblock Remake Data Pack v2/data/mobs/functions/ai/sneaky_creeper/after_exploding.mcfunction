#==================================================================#
# Created by: Sheep Commander                                      #
#------------------------------------------------------------------#
# How to Contact:                                                  #
#   Discord: Look up 511656055974133780 on https://discord.id      #
#------------------------------------------------------------------#
# Socials:                                                         #
#   Youtube: www.youtube.com/channel/UC6ncYhulGtMD4i56Q4yYp9w      #
#   Twitter: https://twitter.com/sheep_commander                   #
#==================================================================#

# Removes exploding if not moving
tag @s[nbt={Motion:[0.0,0.0,0.0]}] remove scExploding

# Removes invisibility if moving
#tag @s[tag=scExploding] add scStopInvis
#effect clear @s[tag=scExploding] invisibility