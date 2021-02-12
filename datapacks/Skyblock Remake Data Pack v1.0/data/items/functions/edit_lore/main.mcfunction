#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#NOTE ITS IMPLEMENTATION INTO THE DATA PACK DOESN'T INCLUDE "BREWING INGREDIENT" LORE OR POTENTIALLY ANYTHING ELSE TOOLS/ARMOR/WEAPONS WOULDN'T HAVE
#------------MAKE COPY OF LORE-------------#
tag @s add CurrentEnchant
execute if data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} run function items:edit_lore/book_rarity
execute if data storage blue:lore_builder {TypeStorage:"minecraft:book"} run function items:edit_lore/book_rarity

execute store result score @s Ench_Damage run data get storage blue:lore_builder ItemStorage.Base.BaseDamage
execute store result score @s Ench_Strength run data get storage blue:lore_builder ItemStorage.Base.BaseStrength
execute store result score @s Ench_CritChan run data get storage blue:lore_builder ItemStorage.Base.BaseCritChan
execute store result score @s Ench_CritDmg run data get storage blue:lore_builder ItemStorage.Base.BaseCritDmg
execute store result score @s Ench_AtkSpd run data get storage blue:lore_builder ItemStorage.Base.BaseAtkSpd
execute store result score @s Ench_SCChance run data get storage blue:lore_builder ItemStorage.Base.BaseSCChance
execute store result score @s Ench_Health run data get storage blue:lore_builder ItemStorage.Base.BaseHealth
execute store result score @s Ench_Defense run data get storage blue:lore_builder ItemStorage.Base.BaseDefense
execute store result score @s Ench_Speed run data get storage blue:lore_builder ItemStorage.Base.BaseSpeed
execute store result score @s Ench_Intel run data get storage blue:lore_builder ItemStorage.Base.BaseIntel
execute store result score @s Ench_TrueDef run data get storage blue:lore_builder ItemStorage.Base.BaseTrueDef
execute store result score @s Ench_MagicFind run data get storage blue:lore_builder ItemStorage.Base.BaseMagicFind
execute store result score @s Ench_PetLuck run data get storage blue:lore_builder ItemStorage.Base.BasePetLuck
#-------------ENCHANTMENTS CMDS------------#
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[0] run function items:edit_lore/enchantments/commands/main
#------------STAT SPECIAL CASES------------#
execute unless data storage blue:lore_builder ItemStorage.Description run function items:edit_lore/statspecialcases/main
#--------------STATS IN LORE---------------#
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Damage matches 1.. run function items:edit_lore/stats/damage
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Strength matches 1.. run function items:edit_lore/stats/strength
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_CritChan matches 1.. run function items:edit_lore/stats/critchan
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_CritDmg matches 1.. run function items:edit_lore/stats/critdmg
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_AtkSpd matches 1.. run function items:edit_lore/stats/atkspd
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_SCChance matches 1.. run function items:edit_lore/stats/scchance
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if entity @s[tag=RedStat] run data modify storage blue:lore_builder NewLore append value '{"text":""}'

execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Health matches 1.. run function items:edit_lore/stats/health
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Defense matches 1.. run function items:edit_lore/stats/defense
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Speed matches 1.. run function items:edit_lore/stats/speed
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Intel matches 1.. run function items:edit_lore/stats/intel
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_TrueDef matches 1.. run function items:edit_lore/stats/truedef
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_MagicFind matches 1.. run function items:edit_lore/stats/magicfind
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_PetLuck matches 1.. run function items:edit_lore/stats/petluck
execute unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if entity @s[tag=GreenStat] run data modify storage blue:lore_builder NewLore append value '{"text":""}'
#-------------ENCHANTMENTS LORE------------#
#1-5: UNIQUE LINE AND DESCRIPTIONS, 6-9 : UNIQUE LINE, 10+ TWO PER LINE WITH COMMA
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[0] unless data storage blue:lore_builder ItemStorage.Base.Enchantments[5] run function items:edit_lore/enchantments/lorestyle/large
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[5] unless data storage blue:lore_builder ItemStorage.Base.Enchantments[9] run function items:edit_lore/enchantments/lorestyle/medium
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[9] run function items:edit_lore/enchantments/lorestyle/small
#----------------MAIN LORE-----------------#
execute if data storage blue:lore_builder ItemStorage.Description run data modify storage blue:lore_builder NewLore append from storage blue:lore_builder ItemStorage.Description[]
#------------LORE SPECIAL CASES------------#
execute unless data storage blue:lore_builder ItemStorage.Description run function items:edit_lore/lorespecialcases/main
#-------REFORGABLE, SLAYER & RARITY--------#
execute if data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} run function items:edit_lore/applyonanvil

execute if data storage blue:lore_builder {ItemStorage:{Base:{Reforge:""}}} run data modify storage blue:lore_builder NewLore append value '{"text":"This item can be reforged!","color":"dark_gray","italic":false}'

execute if data storage blue:lore_builder ItemStorage.Base.SlayerRequired run function items:edit_lore/slayer

execute if score ShowAnvilUses Setting matches 1 run function items:edit_lore/anviluses

execute in minecraft:overworld run setblock 29999978 1 29832 air
execute if data storage blue:lore_builder {ItemStorage:{Base:{Type:""}}} in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[{\"nbt\":\"ItemStorage.Base.RarityColor\",\"storage\":\"blue:lore_builder\",\"interpret\":true},{\"nbt\":\"ItemStorage.Base.Rarity\",\"storage\":\"blue:lore_builder\",\"bold\":true,\"italic\":false}]"}
execute unless data storage blue:lore_builder {ItemStorage:{Base:{Type:""}}} in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[{\"nbt\":\"ItemStorage.Base.RarityColor\",\"storage\":\"blue:lore_builder\",\"interpret\":true},{\"nbt\":\"ItemStorage.Base.Rarity\",\"storage\":\"blue:lore_builder\",\"bold\":true,\"italic\":false},{\"text\":\" \",\"bold\":true,\"italic\":false},{\"nbt\":\"ItemStorage.Base.Type\",\"storage\":\"blue:lore_builder\",\"bold\":true,\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1

execute if entity @s[tag=AnvilPairSuccess] run function items:edit_lore/anvilpreview
#------------MOVE TO REAL LORE-------------#
execute if entity @s[tag=!PreserveDamage] store result storage blue:lore_builder ItemStorage.Base.Damage int 1 run scoreboard players get @s Ench_Damage
execute store result storage blue:lore_builder ItemStorage.Base.Strength int 1 run scoreboard players get @s Ench_Strength
execute store result storage blue:lore_builder ItemStorage.Base.CritChan int 1 run scoreboard players get @s Ench_CritChan
execute store result storage blue:lore_builder ItemStorage.Base.CritDmg int 1 run scoreboard players get @s Ench_CritDmg
execute store result storage blue:lore_builder ItemStorage.Base.AtkSpd int 1 run scoreboard players get @s Ench_AtkSpd
execute store result storage blue:lore_builder ItemStorage.Base.SCChance int 1 run scoreboard players get @s Ench_SCChance
execute store result storage blue:lore_builder ItemStorage.Base.Health int 1 run scoreboard players get @s Ench_Health
execute store result storage blue:lore_builder ItemStorage.Base.Defense int 1 run scoreboard players get @s Ench_Defense
execute store result storage blue:lore_builder ItemStorage.Base.Speed int 1 run scoreboard players get @s Ench_Speed
execute store result storage blue:lore_builder ItemStorage.Base.Intel int 1 run scoreboard players get @s Ench_Intel
execute store result storage blue:lore_builder ItemStorage.Base.TrueDef int 1 run scoreboard players get @s Ench_TrueDef
execute store result storage blue:lore_builder ItemStorage.Base.MagicFind int 1 run scoreboard players get @s Ench_MagicFind
execute store result storage blue:lore_builder ItemStorage.Base.PetLuck int 1 run scoreboard players get @s Ench_PetLuck
#-----------RESET SCORES & TAGS------------#
tag @s remove RedStat
tag @s remove GreenStat
tag @s remove CurrentEnchant
tag @s remove PreserveDamage
#------------------------------------------#