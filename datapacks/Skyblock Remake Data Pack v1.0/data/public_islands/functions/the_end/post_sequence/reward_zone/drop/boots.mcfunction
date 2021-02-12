#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DROPS-------------------#
execute if score $Drag_Type End_DragSeq matches 0 run loot give @s loot cheats:get_items/armor/protector_dragon/boots
execute if score $Drag_Type End_DragSeq matches 1 run loot give @s loot cheats:get_items/armor/old_dragon/boots
execute if score $Drag_Type End_DragSeq matches 2 run loot give @s loot cheats:get_items/armor/wise_dragon/boots
execute if score $Drag_Type End_DragSeq matches 3 run loot give @s loot cheats:get_items/armor/unstable_dragon/boots
execute if score $Drag_Type End_DragSeq matches 4 run loot give @s loot cheats:get_items/armor/young_dragon/boots
execute if score $Drag_Type End_DragSeq matches 5 run loot give @s loot cheats:get_items/armor/strong_dragon/boots
execute if score $Drag_Type End_DragSeq matches 6 run loot give @s loot cheats:get_items/armor/superior_dragon/boots
execute if score $Drag_Type End_DragSeq matches 0 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Protector Dragon Boots","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 1 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Old Dragon Boots","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 2 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Wise Dragon Boots","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 3 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Unstable Dragon Boots","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 4 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Young Dragon Boots","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 5 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Strong Dragon Boots","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 6 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Superior Dragon Boots","color":"gold"},{"text":"!","color":"yellow"}]
scoreboard players remove @s End_DropWeight 300
tag @s add End_MajorLootGiven
#------------------------------------------#