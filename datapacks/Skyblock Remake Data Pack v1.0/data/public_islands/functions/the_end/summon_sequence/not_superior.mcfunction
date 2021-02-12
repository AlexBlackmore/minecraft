#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SUMMON DRAGON---------------#
scoreboard players set in1 RandMath 95
function skyblock:random/range_lcg

execute if score out RandMath matches 0..15 run schedule function public_islands:the_end/summon_sequence/dragon/protector 2t
execute if score out RandMath matches 16..31 run schedule function public_islands:the_end/summon_sequence/dragon/old 2t
execute if score out RandMath matches 32..47 run schedule function public_islands:the_end/summon_sequence/dragon/wise 2t
execute if score out RandMath matches 48..63 run schedule function public_islands:the_end/summon_sequence/dragon/unstable 2t
execute if score out RandMath matches 64..79 run schedule function public_islands:the_end/summon_sequence/dragon/young 2t
execute if score out RandMath matches 80..95 run schedule function public_islands:the_end/summon_sequence/dragon/strong 2t
#------------------------------------------#