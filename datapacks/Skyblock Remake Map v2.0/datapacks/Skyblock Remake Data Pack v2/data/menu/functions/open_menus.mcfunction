#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MENUS-------------------#
execute if entity @s[scores={M_CurrentPage=-1}] run function menu:menus/mainmenu
execute if entity @s[scores={M_CurrentPage=0}] run function menu:menus/collectionmenu
execute if entity @s[scores={M_CurrentPage=1}] run function menu:menus/farming
execute if entity @s[scores={M_CurrentPage=2}] run function menu:menus/mining
execute if entity @s[scores={M_CurrentPage=3}] run function menu:menus/combat
execute if entity @s[scores={M_CurrentPage=4}] run function menu:menus/foraging
execute if entity @s[scores={M_CurrentPage=5}] run function menu:menus/fishing
execute if entity @s[scores={M_CurrentPage=6}] run function menu:menus/farming2
execute if entity @s[scores={M_CurrentPage=7}] run function menu:menus/farming3
execute if entity @s[scores={M_CurrentPage=8}] run function menu:menus/mining2
execute if entity @s[scores={M_CurrentPage=9}] run function menu:menus/mining3
execute if entity @s[scores={M_CurrentPage=10}] run function menu:menus/combat2
execute if entity @s[scores={M_CurrentPage=11}] run function menu:menus/fishing2
execute if entity @s[scores={M_CurrentPage=12}] run function menu:menus/trades
execute if entity @s[scores={M_CurrentPage=13}] run function menu:menus/trades2
execute if entity @s[scores={M_CurrentPage=14}] run function menu:menus/trades3
execute if entity @s[scores={M_CurrentPage=15}] run function menu:menus/trades4
execute if entity @s[scores={M_CurrentPage=16}] run function menu:menus/skillsmenu
execute if entity @s[scores={M_CurrentPage=17}] run function menu:menus/recipemenu
execute if entity @s[scores={M_CurrentPage=18}] run function menu:menus/profile
execute if entity @s[scores={M_CurrentPage=19}] run function menu:menus/craftingtable
execute if entity @s[scores={M_CurrentPage=20..81}] run function menu:collection_pages
execute if entity @s[scores={M_CurrentPage=82}] run function menu:menus/profile2
execute if entity @s[scores={M_CurrentPage=83}] run function menu:menus/skillsmenu2
execute if entity @s[scores={M_CurrentPage=84}] run function menu:menus/block/crafting
execute if entity @s[scores={M_CurrentPage=85}] run function menu:menus/block/enchanting
execute if entity @s[scores={M_CurrentPage=86}] run function menu:menus/block/anvil
execute if entity @s[scores={M_CurrentPage=87}] run function menu:menus/recipepreview
execute if entity @s[scores={M_CurrentPage=88}] run function menu:menus/accessory_bag
execute if entity @s[scores={M_CurrentPage=89}] run function menu:menus/cheats
execute if entity @s[scores={M_CurrentPage=90}] run function menu:menus/cheats/teleports
execute if entity @s[scores={M_CurrentPage=91}] run function menu:menus/cheats/settings
execute if entity @s[scores={M_CurrentPage=92}] run function menu:menus/cheats/get_items/categories
execute if entity @s[scores={M_CurrentPage=93}] run function menu:menus/cheats/get_items/swords
execute if entity @s[scores={M_CurrentPage=94}] run function menu:menus/cheats/get_items/bows
execute if entity @s[scores={M_CurrentPage=95}] run function menu:menus/cheats/get_items/armors
execute if entity @s[scores={M_CurrentPage=96}] run function menu:menus/cheats/get_items/tools
execute if entity @s[scores={M_CurrentPage=97}] run function menu:menus/cheats/get_items/pets
execute if entity @s[scores={M_CurrentPage=98}] run function menu:menus/cheats/get_items/accessories
execute if entity @s[scores={M_CurrentPage=99}] run function menu:menus/cheats/get_items/other/main
execute if entity @s[scores={M_CurrentPage=100}] run function menu:menus/cheats/get_items/spawn_eggs
execute if entity @s[scores={M_CurrentPage=101}] run function menu:menus/cheats/get_items/admin
execute if entity @s[scores={M_CurrentPage=102}] run function menu:menus/cheats/get_items/swords_2
execute if entity @s[scores={M_CurrentPage=103}] run function menu:menus/cheats/get_items/swords_3
execute if entity @s[scores={M_CurrentPage=104}] run function menu:menus/cheats/get_items/armors_2
execute if entity @s[scores={M_CurrentPage=105}] run function menu:menus/cheats/get_items/armors_3
execute if entity @s[scores={M_CurrentPage=106}] run function menu:menus/cheats/get_items/armors_4
execute if entity @s[scores={M_CurrentPage=107}] run function menu:menus/cheats/get_items/armors_5
execute if entity @s[scores={M_CurrentPage=108}] run function menu:menus/cheats/get_items/tools/fishing_rod
execute if entity @s[scores={M_CurrentPage=109}] run function menu:menus/cheats/get_items/tools/pickaxe
execute if entity @s[scores={M_CurrentPage=110}] run function menu:menus/cheats/get_items/tools/axe
execute if entity @s[scores={M_CurrentPage=111}] run function menu:menus/cheats/get_items/tools/shovel
execute if entity @s[scores={M_CurrentPage=112}] run function menu:menus/cheats/get_items/tools/hoe
execute if entity @s[scores={M_CurrentPage=113}] run function menu:menus/cheats/get_items/accessories_2
execute if entity @s[scores={M_CurrentPage=114}] run function menu:menus/cheats/get_items/accessories_3
execute if entity @s[scores={M_CurrentPage=115}] run function menu:menus/cheats/get_items/accessories_4
execute if entity @s[scores={M_CurrentPage=116}] run function menu:menus/cheats/get_items/accessories_5
execute if entity @s[scores={M_CurrentPage=117}] run function menu:menus/cheats/get_items/accessories_6
execute if entity @s[scores={M_CurrentPage=118}] run function menu:menus/cheats/custom_enchanting/main
execute if entity @s[scores={M_CurrentPage=119}] run function menu:menus/cheats/custom_enchanting/swords
execute if entity @s[scores={M_CurrentPage=120}] run function menu:menus/cheats/custom_enchanting/swords_2
execute if entity @s[scores={M_CurrentPage=121}] run function menu:menus/cheats/custom_enchanting/bows
execute if entity @s[scores={M_CurrentPage=122}] run function menu:menus/cheats/get_items/spawn_eggs/blazing_fortress
execute if entity @s[scores={M_CurrentPage=123}] run function menu:menus/cheats/get_items/spawn_eggs/coal_mines
execute if entity @s[scores={M_CurrentPage=124}] run function menu:menus/cheats/get_items/spawn_eggs/deep_caverns
execute if entity @s[scores={M_CurrentPage=125}] run function menu:menus/cheats/get_items/spawn_eggs/graveyard
execute if entity @s[scores={M_CurrentPage=126}] run function menu:menus/cheats/get_items/spawn_eggs/high_level
execute if entity @s[scores={M_CurrentPage=127}] run function menu:menus/cheats/get_items/spawn_eggs/howling_caves
execute if entity @s[scores={M_CurrentPage=128}] run function menu:menus/cheats/get_items/spawn_eggs/ruins
execute if entity @s[scores={M_CurrentPage=129}] run function menu:menus/cheats/get_items/spawn_eggs/spiders_den
execute if entity @s[scores={M_CurrentPage=130}] run function menu:menus/cheats/get_items/spawn_eggs/the_end
execute if entity @s[scores={M_CurrentPage=131}] run function menu:menus/cheats/get_items/admin_2
execute if entity @s[scores={M_CurrentPage=132}] run function menu:menus/cheats/get_items/other/materials
execute if entity @s[scores={M_CurrentPage=133}] run function menu:menus/cheats/get_items/other/materials_2
execute if entity @s[scores={M_CurrentPage=134}] run function menu:menus/cheats/get_items/other/materials_3
execute if entity @s[scores={M_CurrentPage=135}] run function menu:menus/cheats/get_items/other/materials_4
execute if entity @s[scores={M_CurrentPage=136}] run function menu:menus/cheats/get_items/other/materials_5
execute if entity @s[scores={M_CurrentPage=137}] run function menu:menus/cheats/get_items/other/materials_6
execute if entity @s[scores={M_CurrentPage=138}] run function menu:menus/cheats/get_items/other/materials_7
execute if entity @s[scores={M_CurrentPage=139}] run function menu:menus/cheats/custom_enchanting/create_enchant
execute if entity @s[scores={M_CurrentPage=140}] run function menu:menus/cheats/custom_enchanting/armors
execute if entity @s[scores={M_CurrentPage=141}] run function menu:menus/cheats/custom_enchanting/fishing_rods
execute if entity @s[scores={M_CurrentPage=142}] run function menu:menus/cheats/custom_enchanting/pickaxes
execute if entity @s[scores={M_CurrentPage=143}] run function menu:menus/cheats/custom_enchanting/axes
execute if entity @s[scores={M_CurrentPage=144}] run function menu:menus/cheats/custom_enchanting/shovels
execute if entity @s[scores={M_CurrentPage=145}] run function menu:menus/cheats/custom_enchanting/hoes
execute if entity @s[scores={M_CurrentPage=146}] run function menu:menus/cheats/custom_enchanting/shears
execute if entity @s[scores={M_CurrentPage=147}] run function menu:menus/cheats/change_base_stats/main
execute if entity @s[scores={M_CurrentPage=148}] run function menu:menus/cheats/change_base_stats/health
execute if entity @s[scores={M_CurrentPage=149}] run function menu:menus/cheats/change_base_stats/defense
execute if entity @s[scores={M_CurrentPage=150}] run function menu:menus/cheats/change_base_stats/strength
execute if entity @s[scores={M_CurrentPage=151}] run function menu:menus/cheats/change_base_stats/speed
execute if entity @s[scores={M_CurrentPage=152}] run function menu:menus/cheats/change_base_stats/crit_chance
execute if entity @s[scores={M_CurrentPage=153}] run function menu:menus/cheats/change_base_stats/crit_damage
execute if entity @s[scores={M_CurrentPage=154}] run function menu:menus/cheats/change_base_stats/bonus_attack_speed
execute if entity @s[scores={M_CurrentPage=155}] run function menu:menus/cheats/change_base_stats/intelligence
execute if entity @s[scores={M_CurrentPage=156}] run function menu:menus/cheats/change_base_stats/sea_creature_chance
execute if entity @s[scores={M_CurrentPage=157}] run function menu:menus/cheats/change_base_stats/magic_find
execute if entity @s[scores={M_CurrentPage=158}] run function menu:menus/cheats/change_base_stats/pet_luck
execute if entity @s[scores={M_CurrentPage=159}] run function menu:menus/cheats/change_base_stats/true_defense
execute if entity @s[scores={M_CurrentPage=160}] run function menu:menus/cheats/set_coins
execute if entity @s[scores={M_CurrentPage=161}] run function menu:menus/cheats/get_items/swords_4
execute if entity @s[scores={M_CurrentPage=162}] run function menu:menus/cheats/get_items/swords_5
execute if entity @s[scores={M_CurrentPage=163}] run function menu:menus/cheats2
execute if entity @s[scores={M_CurrentPage=164}] run function menu:menus/cheats/slayer_settings
execute if entity @s[scores={M_CurrentPage=165}] run function menu:menus/cheats/change_base_stats/ability_damage
execute if entity @s[scores={M_CurrentPage=166}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie
execute if entity @s[scores={M_CurrentPage=167}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_1
execute if entity @s[scores={M_CurrentPage=168}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_2
execute if entity @s[scores={M_CurrentPage=169}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_3
execute if entity @s[scores={M_CurrentPage=170}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_4
execute if entity @s[scores={M_CurrentPage=171}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_1/health
execute if entity @s[scores={M_CurrentPage=172}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_1/dps
execute if entity @s[scores={M_CurrentPage=173}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_1/xpreward
execute if entity @s[scores={M_CurrentPage=174}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_1/cost
execute if entity @s[scores={M_CurrentPage=175}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_2/health
execute if entity @s[scores={M_CurrentPage=176}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_2/dps
execute if entity @s[scores={M_CurrentPage=177}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_2/xpreward
execute if entity @s[scores={M_CurrentPage=178}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_2/cost
execute if entity @s[scores={M_CurrentPage=179}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_3/health
execute if entity @s[scores={M_CurrentPage=180}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_3/dps
execute if entity @s[scores={M_CurrentPage=181}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_3/xpreward
execute if entity @s[scores={M_CurrentPage=182}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_3/cost
execute if entity @s[scores={M_CurrentPage=183}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_4/health
execute if entity @s[scores={M_CurrentPage=184}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_4/dps
execute if entity @s[scores={M_CurrentPage=185}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_4/xpreward
execute if entity @s[scores={M_CurrentPage=186}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/zombie/tier_4/cost
execute if entity @s[scores={M_CurrentPage=187}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider
execute if entity @s[scores={M_CurrentPage=188}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_1
execute if entity @s[scores={M_CurrentPage=189}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_2
execute if entity @s[scores={M_CurrentPage=190}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_3
execute if entity @s[scores={M_CurrentPage=191}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_4
execute if entity @s[scores={M_CurrentPage=192}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_1/health
execute if entity @s[scores={M_CurrentPage=193}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_1/dps
execute if entity @s[scores={M_CurrentPage=194}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_1/xpreward
execute if entity @s[scores={M_CurrentPage=195}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_1/cost
execute if entity @s[scores={M_CurrentPage=196}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_2/health
execute if entity @s[scores={M_CurrentPage=197}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_2/dps
execute if entity @s[scores={M_CurrentPage=198}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_2/xpreward
execute if entity @s[scores={M_CurrentPage=199}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_2/cost
execute if entity @s[scores={M_CurrentPage=200}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_3/health
execute if entity @s[scores={M_CurrentPage=201}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_3/dps
execute if entity @s[scores={M_CurrentPage=202}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_3/xpreward
execute if entity @s[scores={M_CurrentPage=203}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_3/cost
execute if entity @s[scores={M_CurrentPage=204}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_4/health
execute if entity @s[scores={M_CurrentPage=205}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_4/dps
execute if entity @s[scores={M_CurrentPage=206}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_4/xpreward
execute if entity @s[scores={M_CurrentPage=207}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/spider/tier_4/cost
execute if entity @s[scores={M_CurrentPage=208}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf
execute if entity @s[scores={M_CurrentPage=209}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_1
execute if entity @s[scores={M_CurrentPage=210}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_2
execute if entity @s[scores={M_CurrentPage=211}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_3
execute if entity @s[scores={M_CurrentPage=212}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_4
execute if entity @s[scores={M_CurrentPage=213}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_1/health
execute if entity @s[scores={M_CurrentPage=214}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_1/dps
execute if entity @s[scores={M_CurrentPage=215}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_1/xpreward
execute if entity @s[scores={M_CurrentPage=216}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_1/cost
execute if entity @s[scores={M_CurrentPage=217}] run function menu:menus/cheats/get_items/other/slayer_drops
execute if entity @s[scores={M_CurrentPage=218}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_2/health
execute if entity @s[scores={M_CurrentPage=219}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_2/dps
execute if entity @s[scores={M_CurrentPage=220}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_2/xpreward
execute if entity @s[scores={M_CurrentPage=221}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_2/cost
execute if entity @s[scores={M_CurrentPage=222}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_2/tdps
execute if entity @s[scores={M_CurrentPage=223}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_3/health
execute if entity @s[scores={M_CurrentPage=224}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_3/dps
execute if entity @s[scores={M_CurrentPage=225}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_3/xpreward
execute if entity @s[scores={M_CurrentPage=226}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_3/cost
execute if entity @s[scores={M_CurrentPage=227}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_3/tdps
execute if entity @s[scores={M_CurrentPage=228}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_4/health
execute if entity @s[scores={M_CurrentPage=229}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_4/dps
execute if entity @s[scores={M_CurrentPage=230}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_4/xpreward
execute if entity @s[scores={M_CurrentPage=231}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_4/cost
execute if entity @s[scores={M_CurrentPage=232}] run function menu:menus/cheats/slayer_settings/change_slayer_stats/wolf/tier_4/tdps
execute if entity @s[scores={M_CurrentPage=233}] run function menu:menus/cheats/get_items/other/materials_8
execute if entity @s[scores={M_CurrentPage=234}] run function menu:menus/cheats/slayer_settings/change_random_rewards/tier_3
execute if entity @s[scores={M_CurrentPage=235}] run function menu:menus/cheats/slayer_settings/change_random_rewards/tier_3/cost
execute if entity @s[scores={M_CurrentPage=236}] run function menu:menus/cheats/slayer_settings/change_random_rewards/tier_3/xpreward
execute if entity @s[scores={M_CurrentPage=237}] run function menu:menus/cheats/slayer_settings/change_random_rewards/tier_4
execute if entity @s[scores={M_CurrentPage=238}] run function menu:menus/cheats/slayer_settings/change_random_rewards/tier_4/cost
execute if entity @s[scores={M_CurrentPage=239}] run function menu:menus/cheats/slayer_settings/change_random_rewards/tier_4/xpreward
execute if entity @s[scores={M_CurrentPage=240}] run function menu:menus/maddox/mainpage
execute if entity @s[scores={M_CurrentPage=241}] run function menu:menus/maddox/revenant/mainpage
execute if entity @s[scores={M_CurrentPage=242}] run function menu:menus/maddox/revenant/confirmation
execute if entity @s[scores={M_CurrentPage=243}] run function menu:menus/maddox/spider/mainpage
execute if entity @s[scores={M_CurrentPage=244}] run function menu:menus/maddox/spider/confirmation
execute if entity @s[scores={M_CurrentPage=245}] run function menu:menus/maddox/wolf/mainpage
execute if entity @s[scores={M_CurrentPage=246}] run function menu:menus/maddox/wolf/confirmation
execute if entity @s[scores={M_CurrentPage=247}] run function menu:menus/maddox/already_has_quest
execute if entity @s[scores={M_CurrentPage=248}] run function menu:menus/maddox/cancel_quest
execute if entity @s[scores={M_CurrentPage=249}] run function menu:menus/maddox/claim_rewards
execute if entity @s[scores={M_CurrentPage=250}] run function menu:menus/maddox/revenant/boss_drops
execute if entity @s[scores={M_CurrentPage=251}] run function menu:menus/maddox/revenant/boss_drops2
execute if entity @s[scores={M_CurrentPage=252}] run function menu:menus/maddox/spider/boss_drops
execute if entity @s[scores={M_CurrentPage=253}] run function menu:menus/maddox/spider/boss_drops2
execute if entity @s[scores={M_CurrentPage=254}] run function menu:menus/maddox/wolf/boss_drops
execute if entity @s[scores={M_CurrentPage=255}] run function menu:menus/maddox/wolf/boss_drops2
execute if entity @s[scores={M_CurrentPage=256}] run function menu:menus/maddox/revenant/levelling
execute if entity @s[scores={M_CurrentPage=257}] run function menu:menus/maddox/revenant/levelling2
execute if entity @s[scores={M_CurrentPage=258}] run function menu:menus/maddox/spider/levelling
execute if entity @s[scores={M_CurrentPage=259}] run function menu:menus/maddox/spider/levelling2
execute if entity @s[scores={M_CurrentPage=260}] run function menu:menus/maddox/wolf/levelling
execute if entity @s[scores={M_CurrentPage=261}] run function menu:menus/maddox/wolf/levelling2
execute if entity @s[scores={M_CurrentPage=262}] run function menu:menus/maddox/random_quest
execute if entity @s[scores={M_CurrentPage=263}] run function menu:menus/maddox/random_quest/confirm
execute if entity @s[scores={M_CurrentPage=264}] run function menu:menus/maddox/quest_failed
execute if entity @s[scores={M_CurrentPage=265}] run function menu:menus/pets
execute if entity @s[scores={M_CurrentPage=266}] run function menu:menus/shop/mine_merchant
execute if entity @s[scores={M_CurrentPage=267..276}] run function menu:collection_pages
execute if entity @s[scores={M_CurrentPage=277}] run function menu:menus/cheats/upgrade_skills/main
execute if entity @s[scores={M_CurrentPage=278}] run function menu:menus/cheats/upgrade_skills/farming
execute if entity @s[scores={M_CurrentPage=279}] run function menu:menus/cheats/upgrade_skills/mining
execute if entity @s[scores={M_CurrentPage=280}] run function menu:menus/cheats/upgrade_skills/combat
execute if entity @s[scores={M_CurrentPage=281}] run function menu:menus/cheats/upgrade_skills/foraging
execute if entity @s[scores={M_CurrentPage=282}] run function menu:menus/cheats/upgrade_skills/fishing
execute if entity @s[scores={M_CurrentPage=283}] run function menu:menus/cheats/upgrade_skills/enchanting
execute if entity @s[scores={M_CurrentPage=284}] run function menu:menus/cheats/upgrade_skills/alchemy
execute if entity @s[scores={M_CurrentPage=285}] run function menu:menus/cheats/upgrade_skills/carpentry
execute if entity @s[scores={M_CurrentPage=286}] run function menu:menus/cheats/upgrade_skills/runecrafting
execute if entity @s[scores={M_CurrentPage=287}] run function menu:menus/cheats/upgrade_skills/taming
execute if entity @s[scores={M_CurrentPage=288}] run function menu:menus/cheats/get_items/accessories_7
execute if entity @s[scores={M_CurrentPage=289}] run function menu:menus/cheats/change_base_stats/ferocity
execute if entity @s[scores={M_CurrentPage=290}] run function menu:menus/cheats/get_items/other/backpacks
execute if entity @s[scores={M_CurrentPage=291}] run function menu:menus/cheats/get_items/other/backpacks_2
execute if entity @s[scores={M_CurrentPage=292}] run function menu:menus/cheats/get_items/other/backpacks_3
execute if entity @s[scores={M_CurrentPage=293}] run function menu:menus/cheats/get_items/other/backpacks_4
execute if entity @s[scores={M_CurrentPage=294}] run function menu:menus/cheats/get_items/other/backpacks_5
execute if entity @s[scores={M_CurrentPage=295}] run function menu:menus/cheats/get_items/other/main_2
execute if entity @s[scores={M_CurrentPage=296}] run function menu:menus/select_team
execute if entity @s[scores={M_CurrentPage=297}] run function menu:menus/reforges/reforge
execute if entity @s[scores={M_CurrentPage=298}] run function menu:menus/cheats/get_items/pets2
execute if entity @s[scores={M_CurrentPage=299}] run function menu:menus/cheats/get_items/pets3
execute if entity @s[scores={M_CurrentPage=300}] run function menu:menus/cheats/get_items/pets4
execute if entity @s[scores={M_CurrentPage=301}] run function menu:menus/cheats/get_items/pets/ammonite
execute if entity @s[scores={M_CurrentPage=302}] run function menu:menus/cheats/get_items/pets/armadillo
execute if entity @s[scores={M_CurrentPage=303}] run function menu:menus/cheats/get_items/pets/baby_yeti
execute if entity @s[scores={M_CurrentPage=304}] run function menu:menus/cheats/get_items/pets/bal
execute if entity @s[scores={M_CurrentPage=305}] run function menu:menus/cheats/get_items/pets/bat
execute if entity @s[scores={M_CurrentPage=306}] run function menu:menus/cheats/get_items/pets/bee
execute if entity @s[scores={M_CurrentPage=307}] run function menu:menus/cheats/get_items/pets/black_cat
execute if entity @s[scores={M_CurrentPage=308}] run function menu:menus/cheats/get_items/pets/blaze
execute if entity @s[scores={M_CurrentPage=309}] run function menu:menus/cheats/get_items/pets/blue_whale
execute if entity @s[scores={M_CurrentPage=310}] run function menu:menus/cheats/get_items/pets/chicken
execute if entity @s[scores={M_CurrentPage=311}] run function menu:menus/cheats/get_items/pets/dolphin
execute if entity @s[scores={M_CurrentPage=312}] run function menu:menus/cheats/get_items/pets/elephant
execute if entity @s[scores={M_CurrentPage=313}] run function menu:menus/cheats/get_items/pets/enderman
execute if entity @s[scores={M_CurrentPage=314}] run function menu:menus/cheats/get_items/pets/endermite
execute if entity @s[scores={M_CurrentPage=315}] run function menu:menus/cheats/get_items/pets/ender_dragon
execute if entity @s[scores={M_CurrentPage=316}] run function menu:menus/cheats/get_items/pets/flying_fish
execute if entity @s[scores={M_CurrentPage=317}] run function menu:menus/cheats/get_items/pets/ghoul
execute if entity @s[scores={M_CurrentPage=318}] run function menu:menus/cheats/get_items/pets/giraffe
execute if entity @s[scores={M_CurrentPage=319}] run function menu:menus/cheats/get_items/pets/golden_dragon
execute if entity @s[scores={M_CurrentPage=320}] run function menu:menus/cheats/get_items/pets/golem
execute if entity @s[scores={M_CurrentPage=321}] run function menu:menus/cheats/get_items/pets/grandma_wolf
execute if entity @s[scores={M_CurrentPage=322}] run function menu:menus/cheats/get_items/pets/griffin
execute if entity @s[scores={M_CurrentPage=323}] run function menu:menus/cheats/get_items/pets/guardian
execute if entity @s[scores={M_CurrentPage=324}] run function menu:menus/cheats/get_items/pets/horse
execute if entity @s[scores={M_CurrentPage=325}] run function menu:menus/cheats/get_items/pets/hound
execute if entity @s[scores={M_CurrentPage=326}] run function menu:menus/cheats/get_items/pets/jellyfish
execute if entity @s[scores={M_CurrentPage=327}] run function menu:menus/cheats/get_items/pets/jerry
execute if entity @s[scores={M_CurrentPage=328}] run function menu:menus/cheats/get_items/pets/lion
execute if entity @s[scores={M_CurrentPage=329}] run function menu:menus/cheats/get_items/pets/magma_cube
execute if entity @s[scores={M_CurrentPage=330}] run function menu:menus/cheats/get_items/pets/megalodon
execute if entity @s[scores={M_CurrentPage=331}] run function menu:menus/cheats/get_items/pets/mithril_golem
execute if entity @s[scores={M_CurrentPage=332}] run function menu:menus/cheats/get_items/pets/monkey
execute if entity @s[scores={M_CurrentPage=333}] run function menu:menus/cheats/get_items/pets/ocelot
execute if entity @s[scores={M_CurrentPage=334}] run function menu:menus/cheats/get_items/pets/parrot
execute if entity @s[scores={M_CurrentPage=335}] run function menu:menus/cheats/get_items/pets/phoenix
execute if entity @s[scores={M_CurrentPage=336}] run function menu:menus/cheats/get_items/pets/pig
execute if entity @s[scores={M_CurrentPage=337}] run function menu:menus/cheats/get_items/pets/pigman
execute if entity @s[scores={M_CurrentPage=338}] run function menu:menus/cheats/get_items/pets/rabbit
execute if entity @s[scores={M_CurrentPage=339}] run function menu:menus/cheats/get_items/pets/rat
execute if entity @s[scores={M_CurrentPage=340}] run function menu:menus/cheats/get_items/pets/rock
execute if entity @s[scores={M_CurrentPage=341}] run function menu:menus/cheats/get_items/pets/scatha
execute if entity @s[scores={M_CurrentPage=342}] run function menu:menus/cheats/get_items/pets/sheep
execute if entity @s[scores={M_CurrentPage=343}] run function menu:menus/cheats/get_items/pets/silverfish
execute if entity @s[scores={M_CurrentPage=344}] run function menu:menus/cheats/get_items/pets/skeleton
execute if entity @s[scores={M_CurrentPage=345}] run function menu:menus/cheats/get_items/pets/skeleton_horse
execute if entity @s[scores={M_CurrentPage=346}] run function menu:menus/cheats/get_items/pets/snowman
execute if entity @s[scores={M_CurrentPage=347}] run function menu:menus/cheats/get_items/pets/spider
execute if entity @s[scores={M_CurrentPage=348}] run function menu:menus/cheats/get_items/pets/spirit
execute if entity @s[scores={M_CurrentPage=349}] run function menu:menus/cheats/get_items/pets/squid
execute if entity @s[scores={M_CurrentPage=350}] run function menu:menus/cheats/get_items/pets/tarantula
execute if entity @s[scores={M_CurrentPage=351}] run function menu:menus/cheats/get_items/pets/tiger
execute if entity @s[scores={M_CurrentPage=352}] run function menu:menus/cheats/get_items/pets/turtle
execute if entity @s[scores={M_CurrentPage=353}] run function menu:menus/cheats/get_items/pets/wither_skeleton
execute if entity @s[scores={M_CurrentPage=354}] run function menu:menus/cheats/get_items/pets/wolf
execute if entity @s[scores={M_CurrentPage=355}] run function menu:menus/cheats/get_items/pets/zombie
execute if entity @s[scores={M_CurrentPage=356}] run function menu:menus/cheats/get_items/armors_6
execute if entity @s[scores={M_CurrentPage=357}] run function menu:menus/cheats/get_items/armors_7
#------------------------------------------#