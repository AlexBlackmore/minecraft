#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
execute as @p[tag=LaunchPlayer] run gamemode survival @s[scores={PrevGamemode=0}]
execute as @p[tag=LaunchPlayer] run gamemode creative @s[scores={PrevGamemode=1}]
execute as @p[tag=LaunchPlayer] run gamemode adventure @s[scores={PrevGamemode=2}]
scoreboard players reset @p[tag=LaunchPlayer] PrevGamemode
execute if entity @s[tag=hub_island1] as @p[tag=LaunchPlayer] at @s in skyblock:gold_mine run tp @s -4.5 74 -278.5 -180 0
execute if entity @s[tag=gold_mine2] as @p[tag=LaunchPlayer] at @s in skyblock:deep_caverns run tp @s 100168.0 157 99349.0 -180 0
execute if entity @s[tag=hub_island4] as @p[tag=LaunchPlayer] at @s in skyblock:the_barn run tp @s 113.5 71 -207.5 -135 0
execute if entity @s[tag=the_barn2] as @p[tag=LaunchPlayer] at @s in skyblock:mushroom_desert run tp @s 152.5 76.5 -360.5 -135 0
execute if entity @s[tag=hub_island2] as @p[tag=LaunchPlayer] at @s in skyblock:the_park run tp @s -277.5 82 -13.5 90 0
execute if entity @s[tag=hub_island3] as @p[tag=LaunchPlayer] at @s in skyblock:spiders_den run tp @s -202.5 84 -233.5 135 0
execute if entity @s[tag=spiders_den2] as @p[tag=LaunchPlayer] at @s in skyblock:blazing_fortress run tp @s -310.0 83 -380.5 -180 0
execute if entity @s[tag=spiders_den3] as @p[tag=LaunchPlayer] at @s run function cheats:teleports/to_the_end

tag @p[tag=LaunchPlayer] remove LaunchPlayer
#------------------------------------------#