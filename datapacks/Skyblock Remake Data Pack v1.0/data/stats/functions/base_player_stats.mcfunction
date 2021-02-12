#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------PLAYER STATS ON FIRST JOIN--------#
scoreboard players set @s P_BaseHealth 100
scoreboard players set @s P_BaseDefense 0
scoreboard players set @s P_MultDefense 100
scoreboard players set @s P_BaseStrength 0
scoreboard players set @s P_BaseSpeed 100
scoreboard players set @s P_BaseCritChance 30
scoreboard players set @s P_BaseCritDamage 50
scoreboard players set @s P_BaseAtkSpeed 0
scoreboard players set @s P_BaseIntel 0
scoreboard players set @s P_BaseSCChance 20
scoreboard players set @s P_BaseMagicFind 10
scoreboard players set @s P_BasePetLuck 0
scoreboard players set @s P_BaseTrueDef 0
scoreboard players set @s P_ManaPool 100
scoreboard players set @s P_BaseDamage 5
scoreboard players set @s F_BaseTreasureC 0
scoreboard players operation @s P_EHP = @s P_BaseHealth
scoreboard players operation @s PlayerEHP = @s P_BaseHealth
scoreboard players operation @s PlayerMana = @s P_ManaPool
function stats:calculate/stats
#------------------------------------------#