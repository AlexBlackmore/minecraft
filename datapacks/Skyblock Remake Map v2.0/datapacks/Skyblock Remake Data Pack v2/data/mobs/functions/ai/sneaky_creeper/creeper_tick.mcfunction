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

# Makes sneaky creeper invisible
effect give @s[tag=!scExploding] minecraft:invisibility 1 1 true

# Removes invisibility from creeper if hit
tag @s[nbt={HurtTime:10s}] add scStopInvis

# Removes invisibility and adds tag if exploding
execute if entity @s[tag=!scExploding,predicate=mobs:ai/sneaky_creeper/sc_exploding] run function mobs:ai/sneaky_creeper/exploding

# Removes exploding tag if not moving and player 3 blocks away, removes sneakiness if moving and player 3 blocks away
execute if entity @s[tag=scExploding,predicate=!mobs:ai/sneaky_creeper/sc_exploding] run function mobs:ai/sneaky_creeper/after_exploding

#kill leftover clouds
tag @p add CreeperEffectCloudCheck