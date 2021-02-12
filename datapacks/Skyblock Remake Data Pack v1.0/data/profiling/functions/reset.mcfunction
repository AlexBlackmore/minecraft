#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Profiling SkyblockModules matches 0.. run scoreboard players set Profiling SkyblockModules 1

scoreboard objectives add TeamOccupied dummy
execute unless score $Aqua TeamOccupied matches 0.. run scoreboard players set $Aqua TeamOccupied 0
execute unless score $Black TeamOccupied matches 0.. run scoreboard players set $Black TeamOccupied 0
execute unless score $Blue TeamOccupied matches 0.. run scoreboard players set $Blue TeamOccupied 0
execute unless score $DarkAqua TeamOccupied matches 0.. run scoreboard players set $DarkAqua TeamOccupied 0
execute unless score $DarkBlue TeamOccupied matches 0.. run scoreboard players set $DarkBlue TeamOccupied 0
execute unless score $DarkGray TeamOccupied matches 0.. run scoreboard players set $DarkGray TeamOccupied 0
execute unless score $DarkGreen TeamOccupied matches 0.. run scoreboard players set $DarkGreen TeamOccupied 0
execute unless score $DarkPurple TeamOccupied matches 0.. run scoreboard players set $DarkPurple TeamOccupied 0
execute unless score $DarkRed TeamOccupied matches 0.. run scoreboard players set $DarkRed TeamOccupied 0
execute unless score $Gold TeamOccupied matches 0.. run scoreboard players set $Gold TeamOccupied 0
execute unless score $Gray TeamOccupied matches 0.. run scoreboard players set $Gray TeamOccupied 0
execute unless score $Green TeamOccupied matches 0.. run scoreboard players set $Green TeamOccupied 0
execute unless score $LightPurple TeamOccupied matches 0.. run scoreboard players set $LightPurple TeamOccupied 0
execute unless score $Red TeamOccupied matches 0.. run scoreboard players set $Red TeamOccupied 0
execute unless score $White TeamOccupied matches 0.. run scoreboard players set $White TeamOccupied 0
execute unless score $Yellow TeamOccupied matches 0.. run scoreboard players set $Yellow TeamOccupied 0
#-----------------TEAMS--------------------#
team add aqua {"text":"Aqua","color":"aqua"}
team add black {"text":"Black","color":"black"}
team add blue {"text":"Blue","color":"blue"}
team add dark_aqua {"text":"Dark Aqua","color":"dark_aqua"}
team add dark_blue {"text":"Dark Blue","color":"dark_blue"}
team add dark_gray {"text":"Dark Gray","color":"dark_gray"}
team add dark_green {"text":"Dark Green","color":"dark_green"}
team add dark_purple {"text":"Dark Purple","color":"dark_purple"}
team add dark_red {"text":"Dark Red","color":"dark_red"}
team add gold {"text":"Gold","color":"gold"}
team add gray {"text":"Gray","color":"gray"}
team add green {"text":"Green","color":"green"}
team add light_purple {"text":"Light Purple","color":"light_purple"}
team add red {"text":"Red","color":"red"}
team add white {"text":"White","color":"white"}
team add yellow {"text":"Yellow","color":"yellow"}
team modify aqua color aqua
team modify black color black
team modify blue color blue
team modify dark_aqua color dark_aqua
team modify dark_blue color dark_blue
team modify dark_gray color dark_gray
team modify dark_green color dark_green
team modify dark_purple color dark_purple
team modify dark_red color dark_red
team modify gold color gold
team modify gray color gray
team modify green color green
team modify light_purple color light_purple
team modify red color red
team modify white color white
team modify yellow color yellow
team modify aqua suffix [{"text":" - ","color":"white"},{"text":"Aqua","color":"aqua"}]
team modify black suffix [{"text":" - ","color":"white"},{"text":"Black","color":"black"}]
team modify blue suffix [{"text":" - ","color":"white"},{"text":"Blue","color":"blue"}]
team modify dark_aqua suffix [{"text":" - ","color":"white"},{"text":"Dark Aqua","color":"dark_aqua"}]
team modify dark_blue suffix [{"text":" - ","color":"white"},{"text":"Dark Blue","color":"dark_blue"}]
team modify dark_gray suffix [{"text":" - ","color":"white"},{"text":"Dark Gray","color":"dark_gray"}]
team modify dark_green suffix [{"text":" - ","color":"white"},{"text":"Dark Green","color":"dark_green"}]
team modify dark_purple suffix [{"text":" - ","color":"white"},{"text":"Dark Purple","color":"dark_purple"}]
team modify dark_red suffix [{"text":" - ","color":"white"},{"text":"Dark Red","color":"dark_red"}]
team modify gold suffix [{"text":" - ","color":"white"},{"text":"Gold","color":"gold"}]
team modify gray suffix [{"text":" - ","color":"white"},{"text":"Gray","color":"gray"}]
team modify green suffix [{"text":" - ","color":"white"},{"text":"Green","color":"green"}]
team modify light_purple suffix [{"text":" - ","color":"white"},{"text":"Light Purple","color":"light_purple"}]
team modify red suffix [{"text":" - ","color":"white"},{"text":"Red","color":"red"}]
team modify white suffix [{"text":" - ","color":"white"},{"text":"White","color":"white"}]
team modify yellow suffix [{"text":" - ","color":"white"},{"text":"Yellow","color":"yellow"}]
#---------------COLLECTION-----------------#
execute in skyblock:private_island/master run forceload add 0 0
execute in skyblock:private_island/master run forceload add 0 1
execute in skyblock:private_island/master run forceload add 0 2
execute in skyblock:private_island/master run forceload add -1 2

execute in minecraft:overworld run forceload add 17 -80
execute unless entity @e[team=aqua,tag=CollectionStand] run function profiling:reset/aqua/collections
execute unless entity @e[team=black,tag=CollectionStand] run function profiling:reset/black/collections
execute unless entity @e[team=blue,tag=CollectionStand] run function profiling:reset/blue/collections
execute unless entity @e[team=dark_aqua,tag=CollectionStand] run function profiling:reset/dark_aqua/collections
execute unless entity @e[team=dark_blue,tag=CollectionStand] run function profiling:reset/dark_blue/collections
execute unless entity @e[team=dark_gray,tag=CollectionStand] run function profiling:reset/dark_gray/collections
execute unless entity @e[team=dark_green,tag=CollectionStand] run function profiling:reset/dark_green/collections
execute unless entity @e[team=dark_purple,tag=CollectionStand] run function profiling:reset/dark_purple/collections
execute unless entity @e[team=dark_red,tag=CollectionStand] run function profiling:reset/dark_red/collections
execute unless entity @e[team=gold,tag=CollectionStand] run function profiling:reset/gold/collections
execute unless entity @e[team=gray,tag=CollectionStand] run function profiling:reset/gray/collections
execute unless entity @e[team=green,tag=CollectionStand] run function profiling:reset/green/collections
execute unless entity @e[team=light_purple,tag=CollectionStand] run function profiling:reset/light_purple/collections
execute unless entity @e[team=red,tag=CollectionStand] run function profiling:reset/red/collections
execute unless entity @e[team=white,tag=CollectionStand] run function profiling:reset/white/collections
execute unless entity @e[team=yellow,tag=CollectionStand] run function profiling:reset/yellow/collections
#----------------SIDEBAR-------------------#
scoreboard objectives add bar_aqua dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_black dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_blue dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_dark_aqua dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_dark_blue dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_dark_gray dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_dark_green dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_dark_purple dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_dark_red dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_gold dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_gray dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_green dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_light_purple dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_red dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_white dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives add bar_yellow dummy {"text":"SKYBLOCK","color":"yellow","bold":true}
scoreboard objectives setdisplay sidebar.team.aqua bar_aqua
scoreboard objectives setdisplay sidebar.team.black bar_black
scoreboard objectives setdisplay sidebar.team.blue bar_blue
scoreboard objectives setdisplay sidebar.team.dark_aqua bar_dark_aqua
scoreboard objectives setdisplay sidebar.team.dark_blue bar_dark_blue
scoreboard objectives setdisplay sidebar.team.dark_gray bar_dark_gray
scoreboard objectives setdisplay sidebar.team.dark_green bar_dark_green
scoreboard objectives setdisplay sidebar.team.dark_purple bar_dark_purple
scoreboard objectives setdisplay sidebar.team.dark_red bar_dark_red
scoreboard objectives setdisplay sidebar.team.gold bar_gold
scoreboard objectives setdisplay sidebar.team.gray bar_gray
scoreboard objectives setdisplay sidebar.team.green bar_green
scoreboard objectives setdisplay sidebar.team.light_purple bar_light_purple
scoreboard objectives setdisplay sidebar.team.red bar_red
scoreboard objectives setdisplay sidebar.team.white bar_white
scoreboard objectives setdisplay sidebar.team.yellow bar_yellow

scoreboard players set §fProfile bar_aqua 1
scoreboard players set §§§fProfile bar_black 1
scoreboard players set §§§§§fProfile bar_blue 1
scoreboard players set §§§§§§§fProfile bar_dark_aqua 1
scoreboard players set §§§§§§§§§fProfile bar_dark_blue 1
scoreboard players set §§§§§§§§§§§fProfile bar_dark_gray 1
scoreboard players set §§§§§§§§§§§§§fProfile bar_dark_green 1
scoreboard players set §§§§§§§§§§§§§§§fProfile bar_dark_purple 1
scoreboard players set §§§§§§§§§§§§§§§§§fProfile bar_dark_red 1
scoreboard players set §§§§§§§§§§§§§§§§§§§fProfile bar_gold 1
scoreboard players set §§§§§§§§§§§§§§§§§§§§§fProfile bar_gray 1
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§fProfile bar_green 1
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_light_purple 1
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_red 1
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_white 1
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_yellow 1
team join aqua §fProfile
team join black §§§fProfile
team join blue §§§§§fProfile
team join dark_aqua §§§§§§§fProfile
team join dark_blue §§§§§§§§§fProfile
team join dark_gray §§§§§§§§§§§fProfile
team join dark_green §§§§§§§§§§§§§fProfile
team join dark_purple §§§§§§§§§§§§§§§fProfile
team join dark_red §§§§§§§§§§§§§§§§§fProfile
team join gold §§§§§§§§§§§§§§§§§§§fProfile
team join gray §§§§§§§§§§§§§§§§§§§§§fProfile
team join green §§§§§§§§§§§§§§§§§§§§§§§fProfile
team join light_purple §§§§§§§§§§§§§§§§§§§§§§§§§fProfile
team join red §§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile
team join white §§§§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile
team join yellow §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile

scoreboard players set §e bar_aqua 2
scoreboard players set §e bar_black 2
scoreboard players set §e bar_blue 2
scoreboard players set §e bar_dark_aqua 2
scoreboard players set §e bar_dark_blue 2
scoreboard players set §e bar_dark_gray 2
scoreboard players set §e bar_dark_green 2
scoreboard players set §e bar_dark_purple 2
scoreboard players set §e bar_dark_red 2
scoreboard players set §e bar_gold 2
scoreboard players set §e bar_gray 2
scoreboard players set §e bar_green 2
scoreboard players set §e bar_light_purple 2
scoreboard players set §e bar_red 2
scoreboard players set §e bar_white 2
scoreboard players set §e bar_yellow 2
#------------------COINS-------------------#
team add coins_aqua
team add coins_black
team add coins_blue
team add coins_dark_aqua
team add coins_dark_blue
team add coins_dark_gray
team add coins_dark_green
team add coins_dark_purp
team add coins_dark_red
team add coins_gold
team add coins_gray
team add coins_green
team add coins_light_purp
team add coins_red
team add coins_white
team add coins_yellow
team join coins_aqua §fPurse:
team join coins_black §§§fPurse:
team join coins_blue §§§§§fPurse:
team join coins_dark_aqua §§§§§§§fPurse:
team join coins_dark_blue §§§§§§§§§fPurse:
team join coins_dark_gray §§§§§§§§§§§fPurse:
team join coins_dark_green §§§§§§§§§§§§§fPurse:
team join coins_dark_purp §§§§§§§§§§§§§§§fPurse:
team join coins_dark_red §§§§§§§§§§§§§§§§§fPurse:
team join coins_gold §§§§§§§§§§§§§§§§§§§fPurse:
team join coins_gray §§§§§§§§§§§§§§§§§§§§§fPurse:
team join coins_green §§§§§§§§§§§§§§§§§§§§§§§fPurse:
team join coins_light_purp §§§§§§§§§§§§§§§§§§§§§§§§§fPurse:
team join coins_red §§§§§§§§§§§§§§§§§§§§§§§§§§§fPurse:
team join coins_white §§§§§§§§§§§§§§§§§§§§§§§§§§§§§fPurse:
team join coins_yellow §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§fPurse:
scoreboard players set §fPurse: bar_aqua 3
scoreboard players set §§§fPurse: bar_black 3
scoreboard players set §§§§§fPurse: bar_blue 3
scoreboard players set §§§§§§§fPurse: bar_dark_aqua 3
scoreboard players set §§§§§§§§§fPurse: bar_dark_blue 3
scoreboard players set §§§§§§§§§§§fPurse: bar_dark_gray 3
scoreboard players set §§§§§§§§§§§§§fPurse: bar_dark_green 3
scoreboard players set §§§§§§§§§§§§§§§fPurse: bar_dark_purple 3
scoreboard players set §§§§§§§§§§§§§§§§§fPurse: bar_dark_red 3
scoreboard players set §§§§§§§§§§§§§§§§§§§fPurse: bar_gold 3 
scoreboard players set §§§§§§§§§§§§§§§§§§§§§fPurse: bar_gray 3
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§fPurse: bar_green 3
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§fPurse: bar_light_purple 3
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§fPurse: bar_red 3
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§§§fPurse: bar_white 3
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§fPurse: bar_yellow 3

scoreboard objectives add SetCoins trigger
scoreboard objectives add AddCoins trigger
scoreboard objectives add ResetCoins trigger

scoreboard objectives add Coins dummy
execute unless score aqua Coins matches 0.. run function profiling:reset/aqua/coins
execute unless score black Coins matches 0.. run function profiling:reset/black/coins
execute unless score blue Coins matches 0.. run function profiling:reset/blue/coins
execute unless score dark_aqua Coins matches 0.. run function profiling:reset/dark_aqua/coins
execute unless score dark_blue Coins matches 0.. run function profiling:reset/dark_blue/coins
execute unless score dark_gray Coins matches 0.. run function profiling:reset/dark_gray/coins
execute unless score dark_green Coins matches 0.. run function profiling:reset/dark_green/coins
execute unless score dark_purple Coins matches 0.. run function profiling:reset/dark_purple/coins
execute unless score dark_red Coins matches 0.. run function profiling:reset/dark_red/coins
execute unless score gold Coins matches 0.. run function profiling:reset/gold/coins
execute unless score gray Coins matches 0.. run function profiling:reset/gray/coins
execute unless score green Coins matches 0.. run function profiling:reset/green/coins
execute unless score light_purple Coins matches 0.. run function profiling:reset/light_purple/coins
execute unless score red Coins matches 0.. run function profiling:reset/red/coins
execute unless score white Coins matches 0.. run function profiling:reset/white/coins
execute unless score yellow Coins matches 0.. run function profiling:reset/yellow/coins

scoreboard objectives add BankCoins dummy
execute unless score aqua BankCoins matches 0.. run scoreboard players set aqua BankCoins 0
execute unless score black BankCoins matches 0.. run scoreboard players set black BankCoins 0
execute unless score blue BankCoins matches 0.. run scoreboard players set blue BankCoins 0
execute unless score dark_aqua BankCoins matches 0.. run scoreboard players set dark_aqua BankCoins 0
execute unless score dark_blue BankCoins matches 0.. run scoreboard players set dark_blue BankCoins 0
execute unless score dark_gray BankCoins matches 0.. run scoreboard players set dark_gray BankCoins 0
execute unless score dark_green BankCoins matches 0.. run scoreboard players set dark_green BankCoins 0
execute unless score dark_purple BankCoins matches 0.. run scoreboard players set dark_purple BankCoins 0
execute unless score dark_red BankCoins matches 0.. run scoreboard players set dark_red BankCoins 0
execute unless score gold BankCoins matches 0.. run scoreboard players set gold BankCoins 0
execute unless score gray BankCoins matches 0.. run scoreboard players set gray BankCoins 0
execute unless score green BankCoins matches 0.. run scoreboard players set green BankCoins 0
execute unless score light_purple BankCoins matches 0.. run scoreboard players set light_purple BankCoins 0
execute unless score red BankCoins matches 0.. run scoreboard players set red BankCoins 0
execute unless score white BankCoins matches 0.. run scoreboard players set white BankCoins 0
execute unless score yellow BankCoins matches 0.. run scoreboard players set yellow BankCoins 0

#--------------DRAGON STATS----------------#
team add drag_health
team join drag_health HP:
team modify drag_health prefix [{"text":"Dragon ","color":"white"}]

team add dd_aqua
team add dd_black
team add dd_blue
team add dd_dark_aqua
team add dd_dark_blue
team add dd_dark_gray
team add dd_dark_green
team add dd_dark_purple
team add dd_dark_red
team add dd_gold
team add dd_gray
team add dd_green
team add dd_light_purple
team add dd_red
team add dd_white
team add dd_yellow
team join dd_aqua §fDamage:
team join dd_black §§§fDamage:
team join dd_blue §§§§§fDamage:
team join dd_dark_aqua §§§§§§§fDamage:
team join dd_dark_blue §§§§§§§§§fDamage:
team join dd_dark_gray §§§§§§§§§§§fDamage:
team join dd_dark_green §§§§§§§§§§§§§fDamage:
team join dd_dark_purple §§§§§§§§§§§§§§§fDamage:
team join dd_dark_red §§§§§§§§§§§§§§§§§fDamage:
team join dd_gold §§§§§§§§§§§§§§§§§§§fDamage:
team join dd_gray §§§§§§§§§§§§§§§§§§§§§fDamage:
team join dd_green §§§§§§§§§§§§§§§§§§§§§§§fDamage:
team join dd_light_purple §§§§§§§§§§§§§§§§§§§§§§§§§fDamage:
team join dd_red §§§§§§§§§§§§§§§§§§§§§§§§§§§fDamage:
team join dd_white §§§§§§§§§§§§§§§§§§§§§§§§§§§§§fDamage:
team join dd_yellow §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§fDamage:
team modify dd_aqua prefix [{"text":"Your ","color":"white"}]
team modify dd_black prefix [{"text":"Your ","color":"white"}]
team modify dd_blue prefix [{"text":"Your ","color":"white"}]
team modify dd_dark_aqua prefix [{"text":"Your ","color":"white"}]
team modify dd_dark_blue prefix [{"text":"Your ","color":"white"}]
team modify dd_dark_gray prefix [{"text":"Your ","color":"white"}]
team modify dd_dark_green prefix [{"text":"Your ","color":"white"}]
team modify dd_dark_purple prefix [{"text":"Your ","color":"white"}]
team modify dd_dark_red prefix [{"text":"Your ","color":"white"}]
team modify dd_gold prefix [{"text":"Your ","color":"white"}]
team modify dd_gray prefix [{"text":"Your ","color":"white"}]
team modify dd_green prefix [{"text":"Your ","color":"white"}]
team modify dd_light_purple prefix [{"text":"Your ","color":"white"}]
team modify dd_red prefix [{"text":"Your ","color":"white"}]
team modify dd_white prefix [{"text":"Your ","color":"white"}]
team modify dd_yellow prefix [{"text":"Your ","color":"white"}]
#----------------LOCATION------------------#
scoreboard players set §1 bar_aqua 4
scoreboard players set §1 bar_black 4
scoreboard players set §1 bar_blue 4
scoreboard players set §1 bar_dark_aqua 4
scoreboard players set §1 bar_dark_blue 4
scoreboard players set §1 bar_dark_gray 4
scoreboard players set §1 bar_dark_green 4
scoreboard players set §1 bar_dark_purple 4
scoreboard players set §1 bar_dark_red 4
scoreboard players set §1 bar_gold 4
scoreboard players set §1 bar_gray 4
scoreboard players set §1 bar_green 4
scoreboard players set §1 bar_light_purple 4
scoreboard players set §1 bar_red 4
scoreboard players set §1 bar_white 4
scoreboard players set §1 bar_yellow 4

team add loc_aqua
team add loc_black
team add loc_blue
team add loc_dark_aqua
team add loc_dark_blue
team add loc_dark_gray
team add loc_dark_green
team add loc_dark_purp
team add loc_dark_red
team add loc_gold
team add loc_gray
team add loc_green
team add loc_light_purp
team add loc_red
team add loc_white
team add loc_yellow
team join loc_aqua §7
team join loc_black §§§7
team join loc_blue §§§§§7
team join loc_dark_aqua §§§§§§§7
team join loc_dark_blue §§§§§§§§§7
team join loc_dark_gray §§§§§§§§§§§7
team join loc_dark_green §§§§§§§§§§§§§7
team join loc_dark_purp §§§§§§§§§§§§§§§7
team join loc_dark_red §§§§§§§§§§§§§§§§§7
team join loc_gold §§§§§§§§§§§§§§§§§§§7
team join loc_gray §§§§§§§§§§§§§§§§§§§§§7
team join loc_green §§§§§§§§§§§§§§§§§§§§§§§7
team join loc_light_purp §§§§§§§§§§§§§§§§§§§§§§§§§7
team join loc_red §§§§§§§§§§§§§§§§§§§§§§§§§§§7
team join loc_white §§§§§§§§§§§§§§§§§§§§§§§§§§§§§7
team join loc_yellow §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§7
scoreboard players set §7 bar_aqua 5
scoreboard players set §§§7 bar_black 5
scoreboard players set §§§§§7 bar_blue 5
scoreboard players set §§§§§§§7 bar_dark_aqua 5
scoreboard players set §§§§§§§§§7 bar_dark_blue 5
scoreboard players set §§§§§§§§§§§7 bar_dark_gray 5
scoreboard players set §§§§§§§§§§§§§7 bar_dark_green 5
scoreboard players set §§§§§§§§§§§§§§§7 bar_dark_purple 5
scoreboard players set §§§§§§§§§§§§§§§§§7 bar_dark_red 5
scoreboard players set §§§§§§§§§§§§§§§§§§§7 bar_gold 5
scoreboard players set §§§§§§§§§§§§§§§§§§§§§7 bar_gray 5
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§7 bar_green 5
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§7 bar_light_purple 5
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§7 bar_red 5
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§§§7 bar_white 5
scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§7 bar_yellow 5
team modify loc_aqua prefix [{"text":" ⏣","color":"gray"}]
team modify loc_black prefix [{"text":" ⏣","color":"gray"}]
team modify loc_blue prefix [{"text":" ⏣","color":"gray"}]
team modify loc_dark_aqua prefix [{"text":" ⏣","color":"gray"}]
team modify loc_dark_blue prefix [{"text":" ⏣","color":"gray"}]
team modify loc_dark_gray prefix [{"text":" ⏣","color":"gray"}]
team modify loc_dark_green prefix [{"text":" ⏣","color":"gray"}]
team modify loc_dark_purp prefix [{"text":" ⏣","color":"gray"}]
team modify loc_dark_red prefix [{"text":" ⏣","color":"gray"}]
team modify loc_gold prefix [{"text":" ⏣","color":"gray"}]
team modify loc_gray prefix [{"text":" ⏣","color":"gray"}]
team modify loc_green prefix [{"text":" ⏣","color":"gray"}]
team modify loc_light_purp prefix [{"text":" ⏣","color":"gray"}]
team modify loc_red prefix [{"text":" ⏣","color":"gray"}]
team modify loc_white prefix [{"text":" ⏣","color":"gray"}]
team modify loc_yellow prefix [{"text":" ⏣","color":"gray"}]
#-------------TITLE ANIMATION--------------#
function profiling:sidebar_title_animation/init
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Profiling Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#