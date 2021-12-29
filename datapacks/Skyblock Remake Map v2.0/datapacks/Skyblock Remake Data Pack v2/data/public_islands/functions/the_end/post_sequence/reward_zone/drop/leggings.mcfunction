#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DROPS-------------------#
execute if score $Drag_Type End_DragSeq matches 0 run loot give @s loot cheats:get_items/armor/protector_dragon/leggings
execute if score $Drag_Type End_DragSeq matches 1 run loot give @s loot cheats:get_items/armor/old_dragon/leggings
execute if score $Drag_Type End_DragSeq matches 2 run loot give @s loot cheats:get_items/armor/wise_dragon/leggings
execute if score $Drag_Type End_DragSeq matches 3 run loot give @s loot cheats:get_items/armor/unstable_dragon/leggings
execute if score $Drag_Type End_DragSeq matches 4 run loot give @s loot cheats:get_items/armor/young_dragon/leggings
execute if score $Drag_Type End_DragSeq matches 5 run loot give @s loot cheats:get_items/armor/strong_dragon/leggings
execute if score $Drag_Type End_DragSeq matches 6 run loot give @s loot cheats:get_items/armor/superior_dragon/leggings
execute if score $Drag_Type End_DragSeq matches 0 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Protector Dragon Leggings","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 1 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Old Dragon Leggings","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 2 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Wise Dragon Leggings","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 3 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Unstable Dragon Leggings","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 4 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Young Dragon Leggings","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 5 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Strong Dragon Leggings","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 6 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Superior Dragon Leggings","color":"gold"},{"text":"!","color":"yellow"}]
scoreboard players remove @s End_DropWeight 350
tag @s add End_MajorLootGiven
#------------------------------------------#