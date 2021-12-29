#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------POST DRAG SEQUENCE------------#
execute in skyblock:the_end positioned -6 17 -6 run function public_islands:the_end/post_sequence/place_pane/place
execute in skyblock:the_end positioned -6 17 6 run function public_islands:the_end/post_sequence/place_pane/place
execute in skyblock:the_end positioned -6 17 0 run function public_islands:the_end/post_sequence/place_pane/place
execute in skyblock:the_end positioned 0 17 -7 run function public_islands:the_end/post_sequence/place_pane/place
schedule function public_islands:the_end/post_sequence/place_pane/11 1.5s
#------------------------------------------#