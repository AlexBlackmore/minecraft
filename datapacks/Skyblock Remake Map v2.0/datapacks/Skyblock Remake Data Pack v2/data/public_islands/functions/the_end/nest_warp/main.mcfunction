#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------NEST WARP-----------------#
particle portal ~ ~-0.5 ~ 0.2 0.2 0.2 0.01 1

execute if entity @s[tag=ToThePeak] as @p[distance=..2] at @s if block ~ ~ ~ end_portal_frame run function public_islands:the_end/nest_warp/the_peak
execute if entity @s[tag=ToBedrockPoint] as @p[distance=..2] at @s if block ~ ~ ~ end_portal_frame run function public_islands:the_end/nest_warp/bedrock_point
execute if entity @s[tag=ToEndSpire] as @p[distance=..2] at @s if block ~ ~ ~ end_portal_frame run function public_islands:the_end/nest_warp/end_spire
execute if entity @s[tag=ToObsidianRock] as @p[distance=..2] at @s if block ~ ~ ~ end_portal_frame run function public_islands:the_end/nest_warp/obsidian_rock
execute if entity @s[tag=ToDragonsView] as @p[distance=..2] at @s if block ~ ~ ~ end_portal_frame run function public_islands:the_end/nest_warp/dragons_view
execute if entity @s[tag=ToEndertower] as @p[distance=..2] at @s if block ~ ~ ~ end_portal_frame run function public_islands:the_end/nest_warp/endertower
#------------------------------------------#