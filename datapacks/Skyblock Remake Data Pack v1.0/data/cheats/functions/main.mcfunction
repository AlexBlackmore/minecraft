#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------ENABLE ADMIN COMMANDS-----------#
scoreboard players enable @a[tag=CheatsEnabled] ChangeTeam
scoreboard players enable @a[tag=CheatsEnabled] P_BaseHealth
scoreboard players enable @a[tag=CheatsEnabled] P_BaseDefense
scoreboard players enable @a[tag=CheatsEnabled] P_BaseStrength
scoreboard players enable @a[tag=CheatsEnabled] P_BaseSpeed
scoreboard players enable @a[tag=CheatsEnabled] P_BaseCritChance
scoreboard players enable @a[tag=CheatsEnabled] P_BaseCritDamage
scoreboard players enable @a[tag=CheatsEnabled] P_BaseIntel
scoreboard players enable @a[tag=CheatsEnabled] P_BaseSCChance
scoreboard players enable @a[tag=CheatsEnabled] P_BaseMagicFind
scoreboard players enable @a[tag=CheatsEnabled] P_BasePetLuck
scoreboard players enable @a[tag=CheatsEnabled] P_BaseTrueDef
scoreboard players enable @a[tag=CheatsEnabled] P_BaseAtkSpeed
scoreboard players enable @a[tag=CheatsEnabled] P_BaseDamage
scoreboard players enable @a[tag=CheatsEnabled] TeleportBook
#-----------------ADMINS-------------------#
execute as @a[scores={ChangeTeam=1..}] run function cheats:teleports/to_team_selection
execute as @a[tag=CheatsEnabled,scores={TeleportBook=1..}] run function cheats:get_book

execute if score UnlimitedEXP Setting matches 1 run xp set @a 999999999 levels
execute if score UnlimitedMana Setting matches 1 run scoreboard players set @a PlayerMana 999999999
execute if score UnlimitedMoney Setting matches 1 run function cheats:settings/resources/refill_money
#------------------------------------------#