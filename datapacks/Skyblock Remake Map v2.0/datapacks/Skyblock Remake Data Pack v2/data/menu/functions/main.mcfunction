#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COMPASS MENU---------------#
tag @a remove SelectedItemSlot8
tag @a[nbt={SelectedItemSlot:8}] add SelectedItemSlot8
execute as @a[team=!,tag=SelectedItemSlot8,tag=!Menu,tag=!BlockMenuOpen,tag=!RecipeMenuOpen,tag=!NPCMenuOpen,tag=!PlacePreventOpen] at @s run function menu:summon_menu
execute as @a[scores={MenuSpawnDelay=1..}] at @s run function menu:menu_spawn_delay
execute as @a[team=!,tag=!SelectedItemSlot8,tag=Menu,tag=!BlockMenuOpen,tag=!RecipeMenuOpen,tag=!PetClickMenuOpen,tag=!NPCMenuOpen,tag=!MaddoxMenuOpen,tag=!PlacePreventOpen] at @s run function menu:remove_menu
execute as @a[team=!] if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b}].tag.SkyblockMenu run function menu:return_item/menu_slot
item replace entity @a[team=!] hotbar.8 with minecraft:nether_star{SkyblockMenu:1b, HideFlags: 63, display: {Lore: ['{"text":"View all your SkyBlock","color":"gray","italic":false}', '{"text":"progress, including your Skills,","color":"gray","italic":false}', '{"text":"Collections, Recipes, and more!","color":"gray","italic":false}', '{"text":" "}', '{"text":"Click to open!","color":"yellow","italic":false}'], Name: '{"text":"SkyBlock Menu","color":"green","italic":false}'}}
execute as @e[type=#menu:minecarts,tag=!invisible_minecart] run function menu:invisible_minecarts
#-------------SELECT TEAM MENU-------------#
execute as @a[team=,tag=SelectedItemSlot8,tag=!Menu,tag=!BlockMenuOpen,tag=!RecipeMenuOpen,tag=!NPCMenuOpen] at @s run function menu:summon_select
execute as @a[team=,tag=!SelectedItemSlot8,tag=Menu,tag=!BlockMenuOpen,tag=!RecipeMenuOpen,tag=!PetClickMenuOpen,tag=!NPCMenuOpen,tag=!MaddoxMenuOpen] at @s run function menu:remove_menu
execute as @a[team=] if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b}].tag.SkyblockMenu run function menu:return_item/menu_slot
item replace entity @a[team=] hotbar.8 with minecraft:nether_star{SkyblockMenu:1b, HideFlags: 63, display: {Lore: ['{"text":"View all available","color":"gray","italic":false}', '{"text":"islands to join!","color":"gray","italic":false}', '{"text":" "}', '{"text":"Click to open!","color":"yellow","italic":false}'], Name: '{"text":"Select Team","color":"red","italic":false}'}}
#--------------BLOCK GUI MENU--------------#
execute as @a[tag=BlockMenuOpen] at @s unless entity @e[tag=BlockRevamp,distance=..5] run function menu:block_menu_close
execute as @a[tag=!RecipeMenuOpen] at @s if entity @e[tag=BlockRevamp,distance=..5] run function menu:block_menu_main
#----------------NPC SHOPS-----------------#
tag @a remove NPCMenuFound
execute as @a at @s positioned ~ ~1.62 ~ if entity @e[tag=NPC,distance=..6] run function menu:npc_menu/look_check
execute as @a[tag=NPCMenuOpen] at @s unless entity @e[tag=NPC,distance=..6] run function menu:npc_menu/close
#--------------NO ITEM DUPING--------------#
execute as @a[tag=Menu,scores={M_ClickElement=1..}] at @s as @e[tag=MenuChest,tag=!EnderMenuChest] if score @s PlayerID = @p PlayerID at @s run function menu:chest_main
scoreboard players reset @a M_ClickElement
execute as @a store result score @s M_ClickElement run clear @s #menu:menu_items{SkyblockMenu:1b}
#----------NO DUPING NETHER STAR-----------#
execute as @a store result score @s M_DupeNStar run clear @s minecraft:nether_star{SkyblockMenu:1b} 0
clear @a[scores={M_DupeNStar=2..}] minecraft:nether_star{SkyblockMenu:1b}
#------------------MENUS-------------------#
execute as @e[tag=MenuChest,scores={M_CurrentPage=19}] at @s run function crafting:menu/main
execute as @e[tag=MenuChest,scores={M_CurrentPage=84}] at @s run function crafting:menu/main
execute as @e[tag=MenuChest,scores={M_CurrentPage=85}] at @s run function enchanting:enchanting_table/main
execute as @e[tag=MenuChest,scores={M_CurrentPage=86}] at @s run function anvils:normal/menu/main
execute as @e[tag=MenuChest,scores={M_CurrentPage=88}] at @s run function menu:menus/accessory_bag
execute as @e[tag=MenuChest,scores={M_CurrentPage=297}] at @s run function reforges:menu/main
execute as @a[tag=Menu] at @s run function menu:active_player

execute as @e[type=item,nbt={Item:{tag:{SkyblockMenu:1b}}}] at @s run function menu:dropped_menu_item
execute as @e[tag=MenuMove] at @s unless entity @e[tag=MenuChest,distance=..8] run function menu:manual_break
#------------DROPPED MENU ITEMS------------#
execute as @e[type=item,nbt={Item:{tag:{RecipeTaken:1b}}}] at @s run function menu:dropped_menu_item
#------------------------------------------#