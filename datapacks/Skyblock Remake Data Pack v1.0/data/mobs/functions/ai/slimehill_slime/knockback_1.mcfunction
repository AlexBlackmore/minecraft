#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------KNOCKBACK-----------------#
tp @p ~ ~1 ~
summon creeper ~ ~ ~ {Silent:1b,ExplosionRadius:-3b,Fuse:0,ignited:1b}
stopsound @a[distance=..20] block minecraft:entity.generic.explode
#------------------------------------------#