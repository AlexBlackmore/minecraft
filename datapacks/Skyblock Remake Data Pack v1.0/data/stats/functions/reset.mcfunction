#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Stats SkyblockModules matches 0.. run scoreboard players set Stats SkyblockModules 1

#Events
scoreboard objectives add Death deathCount
scoreboard objectives add ShootBow minecraft.used:minecraft.bow
scoreboard objectives add ShootCrossbow minecraft.used:minecraft.crossbow
scoreboard objectives add Fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add PlayerAttacked minecraft.custom:minecraft.damage_dealt

#Damage
scoreboard objectives add P_DamageTaken minecraft.custom:minecraft.damage_resisted
scoreboard objectives add P_IconColour dummy
scoreboard objectives add P_ManualDmgType dummy
scoreboard objectives add ApplyDamage dummy
scoreboard objectives add ApplyTrueDamage dummy

#Tracks Player Height
scoreboard objectives add P_Y dummy

#Slot Scores (Used to see if their current slot has changed)
scoreboard objectives add P_PreviousSlot dummy

#Used to track current stats
scoreboard objectives add PlayerEHP dummy
scoreboard objectives add PlayerHP dummy
scoreboard objectives add PlayerMana dummy

#Used to see if a stat has changed in the new tick
scoreboard objectives add P_PreEHP dummy
scoreboard objectives add P_PreHealth dummy
scoreboard objectives add P_PreDefense dummy
scoreboard objectives add P_PreSpeed dummy
scoreboard objectives add P_PreAtkSpeed dummy
scoreboard objectives add P_PreIntel dummy

#Used to track the maximum a score can get without exceeding the integer limit
scoreboard objectives add P_MaxHealth dummy
scoreboard objectives add P_MaxDefense dummy

#Used to track a player's total value of a stat
scoreboard objectives add P_EHP dummy
scoreboard objectives add P_Health dummy
scoreboard objectives add P_Defense dummy
scoreboard objectives add P_Strength dummy
scoreboard objectives add P_Speed dummy
scoreboard objectives add P_CritChance dummy
scoreboard objectives add P_CritDamage dummy
scoreboard objectives add P_Intelligence dummy
scoreboard objectives add P_SCChance dummy
scoreboard objectives add P_MagicFind dummy
scoreboard objectives add P_PetLuck dummy
scoreboard objectives add P_TrueDef dummy
scoreboard objectives add P_AtkSpeed dummy

#Used to track a player's base stat values
scoreboard objectives add P_BaseHealth trigger
scoreboard objectives add P_BaseDefense trigger
scoreboard objectives add P_BaseStrength trigger
scoreboard objectives add P_BaseSpeed trigger
scoreboard objectives add P_BaseCritChance trigger
scoreboard objectives add P_BaseCritDamage trigger
scoreboard objectives add P_BaseIntel trigger
scoreboard objectives add P_BaseSCChance trigger
scoreboard objectives add P_BaseMagicFind trigger
scoreboard objectives add P_BasePetLuck trigger
scoreboard objectives add P_BaseTrueDef trigger
scoreboard objectives add P_BaseAtkSpeed trigger
scoreboard objectives add P_BaseDamage trigger

#Used to track a player's bonus stat values (from armor, swords, accessories etc)
scoreboard objectives add P_BonusHealth dummy
scoreboard objectives add P_BonusDefense dummy
scoreboard objectives add P_BonusStrength dummy
scoreboard objectives add P_BonusSpeed dummy
scoreboard objectives add P_BonusCritChan dummy
scoreboard objectives add P_BonusCritDmg dummy
scoreboard objectives add P_BonusIntel dummy
scoreboard objectives add P_BonusSCChance dummy
scoreboard objectives add P_BonusMagicFind dummy
scoreboard objectives add P_BonusPetLuck dummy
scoreboard objectives add P_BonusTrueDef dummy
scoreboard objectives add P_BonusAtkSpeed dummy

#Other stats
scoreboard objectives add P_MultDefense dummy
scoreboard objectives add P_ExtraSpeed dummy
scoreboard objectives add P_ManaPool dummy
scoreboard objectives add P_DmgReduction dummy
scoreboard objectives add P_RegenAmount dummy
scoreboard objectives add P_RegenAmount2 dummy
scoreboard objectives add P_RegenTimer dummy
scoreboard objectives add P_ManaRegen dummy
scoreboard objectives add P_Invincibility dummy


#Used to add up accessory stats
scoreboard objectives add P_AccessCount dummy
scoreboard objectives add P_AChecker dummy
scoreboard objectives add P_AHealth dummy
scoreboard objectives add P_ADefense dummy
scoreboard objectives add P_AStrength dummy
scoreboard objectives add P_ASpeed dummy
scoreboard objectives add P_ACritChance dummy
scoreboard objectives add P_ACritDamage dummy
scoreboard objectives add P_AIntelligence dummy
scoreboard objectives add P_ASCChance dummy
scoreboard objectives add P_AMagicFind dummy
scoreboard objectives add P_APetLuck dummy
scoreboard objectives add P_ATrueDef dummy
scoreboard objectives add P_AAtkSpeed dummy

#Entity Stores
scoreboard objectives add DisplayMaxHealth dummy
scoreboard objectives add DisplayLevel dummy
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Stats Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#