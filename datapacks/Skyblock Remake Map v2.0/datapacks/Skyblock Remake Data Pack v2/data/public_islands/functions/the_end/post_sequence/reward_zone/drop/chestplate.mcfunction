#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DROPS-------------------#
execute if score $Drag_Type End_DragSeq matches 0 run loot give @s loot cheats:get_items/armor/protector_dragon/chestplate
execute if score $Drag_Type End_DragSeq matches 1 run loot give @s loot cheats:get_items/armor/old_dragon/chestplate
execute if score $Drag_Type End_DragSeq matches 2 run loot give @s loot cheats:get_items/armor/wise_dragon/chestplate
execute if score $Drag_Type End_DragSeq matches 3 run loot give @s loot cheats:get_items/armor/unstable_dragon/chestplate
execute if score $Drag_Type End_DragSeq matches 4 run loot give @s loot cheats:get_items/armor/young_dragon/chestplate
execute if score $Drag_Type End_DragSeq matches 5 run loot give @s loot cheats:get_items/armor/strong_dragon/chestplate
execute if score $Drag_Type End_DragSeq matches 6 run loot give @s loot cheats:get_items/armor/superior_dragon/chestplate
execute if score $Drag_Type End_DragSeq matches 0 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Protector Dragon Chestplate","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 1 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Old Dragon Chestplate","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 2 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Wise Dragon Chestplate","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 3 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Unstable Dragon Chestplate","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 4 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Young Dragon Chestplate","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 5 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Strong Dragon Chestplate","color":"gold"},{"text":"!","color":"yellow"}]
execute if score $Drag_Type End_DragSeq matches 6 run tellraw @s ["",{"selector":"@s"},{"text":" has obtained ","color":"yellow"},{"text":"Superior Dragon Chestplate","color":"gold"},{"text":"!","color":"yellow"}]
scoreboard players remove @s End_DropWeight 400
tag @s add End_MajorLootGiven
#------------------------------------------#