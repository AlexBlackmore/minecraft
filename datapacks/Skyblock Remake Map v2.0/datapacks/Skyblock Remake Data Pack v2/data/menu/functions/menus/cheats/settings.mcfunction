#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
execute unless data entity @s Items[{Slot:0b}].tag.SkyblockMenu run function menu:return_item/0
execute unless data entity @s Items[{Slot:1b}].tag.SkyblockMenu run function menu:return_item/1
execute unless data entity @s Items[{Slot:2b}].tag.SkyblockMenu run function menu:return_item/2
execute unless data entity @s Items[{Slot:3b}].tag.SkyblockMenu run function menu:return_item/3
execute unless data entity @s Items[{Slot:4b}].tag.SkyblockMenu run function menu:return_item/4
execute unless data entity @s Items[{Slot:5b}].tag.SkyblockMenu run function menu:return_item/5
execute unless data entity @s Items[{Slot:6b}].tag.SkyblockMenu run function menu:return_item/6
execute unless data entity @s Items[{Slot:7b}].tag.SkyblockMenu run function menu:return_item/7
execute unless data entity @s Items[{Slot:8b}].tag.SkyblockMenu run function menu:return_item/8
execute unless data entity @s Items[{Slot:9b}].tag.SkyblockMenu run function menu:return_item/9
execute unless data entity @s Items[{Slot:10b}].tag.SkyblockMenu run function menu:return_item/10
execute unless data entity @s Items[{Slot:11b}].tag.SkyblockMenu run function menu:return_item/11
execute unless data entity @s Items[{Slot:12b}].tag.SkyblockMenu run function menu:return_item/12
execute unless data entity @s Items[{Slot:13b}].tag.SkyblockMenu run function menu:return_item/13
execute unless data entity @s Items[{Slot:14b}].tag.SkyblockMenu run function menu:return_item/14
execute unless data entity @s Items[{Slot:15b}].tag.SkyblockMenu run function menu:return_item/15
execute unless data entity @s Items[{Slot:16b}].tag.SkyblockMenu run function menu:return_item/16
execute unless data entity @s Items[{Slot:17b}].tag.SkyblockMenu run function menu:return_item/17
execute unless data entity @s Items[{Slot:18b}].tag.SkyblockMenu run function menu:return_item/18
execute unless data entity @s Items[{Slot:19b}].tag.SkyblockMenu run function menu:return_item/19
execute unless data entity @s Items[{Slot:20b}].tag.SkyblockMenu run function menu:return_item/20
execute unless data entity @s Items[{Slot:21b}].tag.SkyblockMenu run function menu:return_item/21
execute unless data entity @s Items[{Slot:22b}].tag.SkyblockMenu run function menu:return_item/22
execute unless data entity @s Items[{Slot:23b}].tag.SkyblockMenu run function menu:return_item/23
execute unless data entity @s Items[{Slot:24b}].tag.SkyblockMenu run function menu:return_item/24
execute unless data entity @s Items[{Slot:25b}].tag.SkyblockMenu run function menu:return_item/25
execute unless data entity @s Items[{Slot:26b}].tag.SkyblockMenu run function menu:return_item/26

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 0b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/show_anvil_uses
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 1b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/cap_enchant_levels
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 2b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/special_zealot_chances
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 3b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/superior_drag_chances
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 4b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/dragon_damage_multiplier
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 5b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/unlimited_mana
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 6b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/unlimited_money
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 7b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/unlimited_exp
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 8b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/fairy_soul_stats
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 9b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/bonus_accessory_slots
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 10b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/infinite_builder_wand
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 11b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/slayer_bosses_abilities
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 12b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/slayer_requirements
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 13b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/use_old_strength
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 14b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/ability_cooldowns
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 15b, tag: {SkyblockMenu:1b}}]}] run function cheats:settings/potato_book_limit

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 21b, id: "minecraft:arrow", Count: 1b}]}] run scoreboard players set @s M_NewPage 89

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}]}] run function menu:close_menu
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 10b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 11b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 12b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 13b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 15b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 16b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:arrow", Count: 1b, tag: {SkyblockMenu:1b, display: {Lore: ['[{"text":"To Cheats Menu","color":"gray","italic":false}]'], Name: '{"text":"Go Back","color":"green","italic":false}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":" "}'}}}]}

execute if score ShowAnvilUses Setting matches 0 run loot replace entity @s container.0 loot cheats:menu/settings/show_anvil_uses_disabled
execute if score ShowAnvilUses Setting matches 1 run loot replace entity @s container.0 loot cheats:menu/settings/show_anvil_uses_enabled
execute if score CapEnchantLevels Setting matches 0 run loot replace entity @s container.1 loot cheats:menu/settings/cap_enchant_levels_disabled
execute if score CapEnchantLevels Setting matches 1 run loot replace entity @s container.1 loot cheats:menu/settings/cap_enchant_levels_enabled
loot replace entity @s container.2 loot cheats:menu/settings/special_zealot_chances
loot replace entity @s container.3 loot cheats:menu/settings/superior_drag_chances
loot replace entity @s container.4 loot cheats:menu/settings/dragon_damage_multiplier
execute if score UnlimitedMana Setting matches 0 run loot replace entity @s container.5 loot cheats:menu/settings/unlimited_mana_disabled
execute if score UnlimitedMana Setting matches 1 run loot replace entity @s container.5 loot cheats:menu/settings/unlimited_mana_enabled
execute if score UnlimitedMoney Setting matches 0 run loot replace entity @s container.6 loot cheats:menu/settings/unlimited_money_disabled
execute if score UnlimitedMoney Setting matches 1 run loot replace entity @s container.6 loot cheats:menu/settings/unlimited_money_enabled
execute if score UnlimitedEXP Setting matches 0 run loot replace entity @s container.7 loot cheats:menu/settings/unlimited_exp_disabled
execute if score UnlimitedEXP Setting matches 1 run loot replace entity @s container.7 loot cheats:menu/settings/unlimited_exp_enabled
loot replace entity @s container.8 loot cheats:menu/settings/fairy_soul_stats
loot replace entity @s container.9 loot cheats:menu/settings/bonus_accessory_slots
execute if score InfiniteBuilderWand Setting matches 0 run loot replace entity @s container.10 loot cheats:menu/settings/infinite_builder_wand_disabled
execute if score InfiniteBuilderWand Setting matches 1 run loot replace entity @s container.10 loot cheats:menu/settings/infinite_builder_wand_enabled
execute if score SlayerBossesAbilities Setting matches 0 run loot replace entity @s container.11 loot cheats:menu/settings/slayer_abilities_disabled
execute if score SlayerBossesAbilities Setting matches 1 run loot replace entity @s container.11 loot cheats:menu/settings/slayer_abilities_enabled
execute if score SlayerRequirements Setting matches 0 run loot replace entity @s container.12 loot cheats:menu/settings/slayer_requirements_disabled
execute if score SlayerRequirements Setting matches 1 run loot replace entity @s container.12 loot cheats:menu/settings/slayer_requirements_enabled
execute if score OldStrength Setting matches 0 run loot replace entity @s container.13 1 loot cheats:menu/settings/old_strength_disabled
execute if score OldStrength Setting matches 1 run loot replace entity @s container.13 1 loot cheats:menu/settings/old_strength_enabled
execute if score CooldownsEnabled Setting matches 0 run loot replace entity @s container.14 1 loot cheats:menu/settings/cooldown_disabled
execute if score CooldownsEnabled Setting matches 1 run loot replace entity @s container.14 1 loot cheats:menu/settings/cooldown_enabled
execute if score PotatoBookLimit Setting matches 0 run loot replace entity @s container.15 1 loot cheats:menu/settings/potato_limit_disabled
execute if score PotatoBookLimit Setting matches 1 run loot replace entity @s container.15 1 loot cheats:menu/settings/potato_limit_enabled
#------------------------------------------#