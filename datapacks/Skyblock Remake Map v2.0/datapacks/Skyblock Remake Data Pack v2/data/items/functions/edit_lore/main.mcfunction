#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#NOTE ITS IMPLEMENTATION INTO THE DATA PACK DOESN'T INCLUDE "BREWING INGREDIENT" LORE OR POTENTIALLY ANYTHING ELSE TOOLS/ARMOR/WEAPONS WOULDN'T HAVE
#------------CHECK IF REFORGE--------------#
tag @s add GetBaseStat
execute if data storage blue:lore_builder ItemStorage.Base.FirstReforge run tag @s add Reforging
execute if data storage blue:lore_builder ItemStorage.Base.FirstReforge run tag @s remove GetBaseStat
#----------CHECK IF POTATO BOOK------------#
execute if data storage blue:lore_builder ItemStorage.Base.HotPotatoApplied run tag @s add HasPotatoBook
execute if data storage blue:lore_builder ItemStorage.Base.FumingPotatoApplied run tag @s add HasPotatoBook
execute if data storage blue:lore_builder ItemStorage.Base.HotPotatoApplied run tag @s remove GetBaseStat
execute if data storage blue:lore_builder ItemStorage.Base.FumingPotatoApplied run tag @s remove GetBaseStat
#------------MAKE COPY OF LORE-------------#
tag @s add CurrentEnchant
execute if data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} run function items:edit_lore/book_rarity
execute if data storage blue:lore_builder {TypeStorage:"minecraft:book"} run function items:edit_lore/book_rarity
#-----------GET STATS NO REFORGE-----------#
execute if entity @s[tag=GetBaseStat] store result score @s Ench_Damage run data get storage blue:lore_builder ItemStorage.Base.BaseDamage
execute if entity @s[tag=GetBaseStat] store result score @s Ench_Strength run data get storage blue:lore_builder ItemStorage.Base.BaseStrength
execute if entity @s[tag=GetBaseStat] store result score @s Ench_CritChan run data get storage blue:lore_builder ItemStorage.Base.BaseCritChan
execute if entity @s[tag=GetBaseStat] store result score @s Ench_CritDmg run data get storage blue:lore_builder ItemStorage.Base.BaseCritDmg
execute if entity @s[tag=GetBaseStat] store result score @s Ench_AtkSpd run data get storage blue:lore_builder ItemStorage.Base.BaseAtkSpd
execute if entity @s[tag=GetBaseStat] store result score @s Ench_SCChance run data get storage blue:lore_builder ItemStorage.Base.BaseSCChance
execute if entity @s[tag=GetBaseStat] store result score @s Ench_Health run data get storage blue:lore_builder ItemStorage.Base.BaseHealth
execute if entity @s[tag=GetBaseStat] store result score @s Ench_Defense run data get storage blue:lore_builder ItemStorage.Base.BaseDefense
execute if entity @s[tag=GetBaseStat] store result score @s Ench_Speed run data get storage blue:lore_builder ItemStorage.Base.BaseSpeed
execute if entity @s[tag=GetBaseStat] store result score @s Ench_Intel run data get storage blue:lore_builder ItemStorage.Base.BaseIntel
execute if entity @s[tag=GetBaseStat] store result score @s Ench_TrueDef run data get storage blue:lore_builder ItemStorage.Base.BaseTrueDef
execute if entity @s[tag=GetBaseStat] store result score @s Ench_MagicFind run data get storage blue:lore_builder ItemStorage.Base.BaseMagicFind
execute if entity @s[tag=GetBaseStat] store result score @s Ench_PetLuck run data get storage blue:lore_builder ItemStorage.Base.BasePetLuck
#----------------REFORGING-----------------#
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_Damage run data get storage blue:lore_builder ItemStorage.Base.Damage
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_Strength run data get storage blue:lore_builder ItemStorage.Base.Strength
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_CritChan run data get storage blue:lore_builder ItemStorage.Base.CritChan
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_CritDmg run data get storage blue:lore_builder ItemStorage.Base.CritDmg
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_AtkSpd run data get storage blue:lore_builder ItemStorage.Base.AtkSpd
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_SCChance run data get storage blue:lore_builder ItemStorage.Base.SCChance
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_Health run data get storage blue:lore_builder ItemStorage.Base.Health
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_Defense run data get storage blue:lore_builder ItemStorage.Base.Defense
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_Speed run data get storage blue:lore_builder ItemStorage.Base.Speed
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_Intel run data get storage blue:lore_builder ItemStorage.Base.Intel
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_TrueDef run data get storage blue:lore_builder ItemStorage.Base.TrueDef
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_MagicFind run data get storage blue:lore_builder ItemStorage.Base.MagicFind
execute if entity @s[tag=!GetBaseStat] store result score @s Ench_PetLuck run data get storage blue:lore_builder ItemStorage.Base.PetLuck
#-------------------PETS-------------------#
scoreboard players reset @s Pet_Strength
scoreboard players reset @s Pet_CritChan
scoreboard players reset @s Pet_CritDmg
scoreboard players reset @s Pet_AtkSpd
scoreboard players reset @s Pet_SCChance
scoreboard players reset @s Pet_Health
scoreboard players reset @s Pet_Defense
scoreboard players reset @s Pet_Speed
scoreboard players reset @s Pet_Intel
scoreboard players reset @s Pet_TrueDef
scoreboard players reset @s Pet_MagicFind
scoreboard players reset @s Pet_PetLuck
scoreboard players reset @s Pet_Ferocity
scoreboard players reset @s Pet_AbilDmg

execute store result score @s Pet_Strength run data get storage blue:lore_builder ItemStorage.Base.Strength
execute store result score @s Pet_CritChan run data get storage blue:lore_builder ItemStorage.Base.CritChan
execute store result score @s Pet_CritDmg run data get storage blue:lore_builder ItemStorage.Base.CritDmg
execute store result score @s Pet_AtkSpd run data get storage blue:lore_builder ItemStorage.Base.AtkSpd
execute store result score @s Pet_SCChance run data get storage blue:lore_builder ItemStorage.Base.SCChance
execute store result score @s Pet_Health run data get storage blue:lore_builder ItemStorage.Base.Health
execute store result score @s Pet_Defense run data get storage blue:lore_builder ItemStorage.Base.Defense
execute store result score @s Pet_Speed run data get storage blue:lore_builder ItemStorage.Base.Speed
execute store result score @s Pet_Intel run data get storage blue:lore_builder ItemStorage.Base.Intel
execute store result score @s Pet_TrueDef run data get storage blue:lore_builder ItemStorage.Base.TrueDef
execute store result score @s Pet_MagicFind run data get storage blue:lore_builder ItemStorage.Base.MagicFind
execute store result score @s Pet_PetLuck run data get storage blue:lore_builder ItemStorage.Base.PetLuck
execute store result score @s Pet_Ferocity run data get storage blue:lore_builder ItemStorage.Base.Ferocity
execute store result score @s Pet_AbilDmg run data get storage blue:lore_builder ItemStorage.Base.AbilDmg
#-------------ENCHANTMENTS CMDS------------#
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[0] run function items:edit_lore/enchantments/commands/main
#------------STAT SPECIAL CASES------------#
execute unless data storage blue:lore_builder ItemStorage.Description run function items:edit_lore/statspecialcases/main
#-----------------PET TYPE-----------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.PetData.Skill run setblock 29999978 1 29832 oak_sign{Text1:"[{\"nbt\":\"ItemStorage.Base.PetData.Skill\",\"storage\":\"blue:lore_builder\",\"color\":\"dark_gray\",\"italic\":false},{\"text\":\" Pet\",\"color\":\"dark_gray\",\"italic\":false}]"}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.PetData.Skill run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1

execute if data storage blue:lore_builder ItemStorage.Base.PetData.Skill run data modify storage blue:lore_builder NewLore append value '{"text":""}'
#--------------STATS IN LORE---------------#
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Damage matches 1.. run function items:edit_lore/stats/damage
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Strength matches 1.. run function items:edit_lore/stats/strength
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_CritChan matches 1.. run function items:edit_lore/stats/critchan
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_CritDmg matches 1.. run function items:edit_lore/stats/critdmg
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_AtkSpd matches 1.. run function items:edit_lore/stats/atkspd
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_SCChance matches 1.. run function items:edit_lore/stats/scchance
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if entity @s[tag=RedStat] run data modify storage blue:lore_builder NewLore append value '{"text":""}'

execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Health matches 1.. run function items:edit_lore/stats/health
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Defense matches 1.. run function items:edit_lore/stats/defense
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Speed matches 1.. run function items:edit_lore/stats/speed
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_Intel matches 1.. run function items:edit_lore/stats/intel
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_TrueDef matches 1.. run function items:edit_lore/stats/truedef
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_MagicFind matches 1.. run function items:edit_lore/stats/magicfind
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if score @s Ench_PetLuck matches 1.. run function items:edit_lore/stats/petluck
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} unless data storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"} if entity @s[tag=GreenStat] run data modify storage blue:lore_builder NewLore append value '{"text":""}'

execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.Strength run function items:edit_lore/stats/pets/strength
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.CritChan run function items:edit_lore/stats/pets/critchan
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.CritDmg run function items:edit_lore/stats/pets/critdmg
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.AtkSpd run function items:edit_lore/stats/pets/atkspd
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.SCChance run function items:edit_lore/stats/pets/scchance
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.Ferocity run function items:edit_lore/stats/pets/abildmg
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.Health run function items:edit_lore/stats/pets/health
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.Defense run function items:edit_lore/stats/pets/defense
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.Speed run function items:edit_lore/stats/pets/speed
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.Intel run function items:edit_lore/stats/pets/intel
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.TrueDef run function items:edit_lore/stats/pets/truedef
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.MagicFind run function items:edit_lore/stats/pets/magicfind
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.PetLuck run function items:edit_lore/stats/pets/petluck
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if data storage blue:lore_builder ItemStorage.Base.Ferocity run function items:edit_lore/stats/pets/ferocity
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} if entity @s[tag=GreenStat] run data modify storage blue:lore_builder NewLore append value '{"text":""}'

#--------------PET ABILITIES---------------#
execute if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} run function items:edit_lore/pet_abilities
#--------PET PROGRESS TO NEXT LEVEL--------#
execute if entity @s[tag=MenuEdit,tag=!Specialcase] store result score $PetLevel Temp run data get storage blue:lore_builder ItemStorage.Base.PetData.Current.Level
execute if entity @s[tag=MenuEdit,tag=!Specialcase] unless score $PetLevel Temp matches 100.. if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} run function items:edit_lore/pet_exp_progress
execute if entity @s[tag=MenuEdit,tag=!Specialcase] if score $PetLevel Temp matches 100.. if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} run data modify storage blue:lore_builder NewLore append value '[{"text":"MAX LEVEL","color":"aqua","bold":true,"italic":false}]'
execute if entity @s[tag=MenuEdit,tag=!Specialcase] if score $PetLevel Temp matches 100.. if data storage blue:lore_builder ItemStorage.Base{Type:"PET"} run data modify storage blue:lore_builder NewLore append value '[{"text":""}]'
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
#Non Dungeon Item Rarity
execute unless entity @s[tag=MenuEdit,tag=!Specialcase] unless data storage blue:lore_builder ItemStorage.Base.DungeonItem if data storage blue:lore_builder {ItemStorage:{Base:{Type:""}}} in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[{\"nbt\":\"ItemStorage.Base.RarityColor\",\"storage\":\"blue:lore_builder\",\"interpret\":true},{\"nbt\":\"ItemStorage.Base.Rarity\",\"storage\":\"blue:lore_builder\",\"bold\":true,\"italic\":false}]"}
execute unless entity @s[tag=MenuEdit,tag=!Specialcase] unless data storage blue:lore_builder ItemStorage.Base.DungeonItem unless data storage blue:lore_builder {ItemStorage:{Base:{Type:""}}} in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[{\"nbt\":\"ItemStorage.Base.RarityColor\",\"storage\":\"blue:lore_builder\",\"interpret\":true},{\"nbt\":\"ItemStorage.Base.Rarity\",\"storage\":\"blue:lore_builder\",\"bold\":true,\"italic\":false},{\"text\":\" \",\"bold\":true,\"italic\":false},{\"nbt\":\"ItemStorage.Base.Type\",\"storage\":\"blue:lore_builder\",\"bold\":true,\"italic\":false}]"}
#Dungeon Item Rarity
execute unless entity @s[tag=MenuEdit,tag=!Specialcase] if data storage blue:lore_builder ItemStorage.Base.DungeonItem if data storage blue:lore_builder {ItemStorage:{Base:{Type:""}}} in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[{\"nbt\":\"ItemStorage.Base.RarityColor\",\"storage\":\"blue:lore_builder\",\"interpret\":true},{\"nbt\":\"ItemStorage.Base.Rarity\",\"storage\":\"blue:lore_builder\",\"bold\":true,\"italic\":false},{\"text\":\" DUNGEON ITEM\",\"bold\":true,\"italic\":false}]"}
execute unless entity @s[tag=MenuEdit,tag=!Specialcase] if data storage blue:lore_builder ItemStorage.Base.DungeonItem unless data storage blue:lore_builder {ItemStorage:{Base:{Type:""}}} in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[{\"nbt\":\"ItemStorage.Base.RarityColor\",\"storage\":\"blue:lore_builder\",\"interpret\":true},{\"nbt\":\"ItemStorage.Base.Rarity\",\"storage\":\"blue:lore_builder\",\"bold\":true,\"italic\":false},{\"text\":\" DUNGEON \",\"bold\":true,\"italic\":false},{\"nbt\":\"ItemStorage.Base.Type\",\"storage\":\"blue:lore_builder\",\"bold\":true,\"italic\":false}]"}
execute unless entity @s[tag=MenuEdit,tag=!Specialcase] in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1

execute if entity @s[tag=AnvilPairSuccess] run function items:edit_lore/anvilpreview
#------------MOVE TO REAL LORE-------------#
execute if entity @s[tag=!PreserveDamage] store result storage blue:lore_builder ItemStorage.Base.Damage int 1 run scoreboard players get @s Ench_Damage
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.Strength int 1 run scoreboard players get @s Ench_Strength
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.CritChan int 1 run scoreboard players get @s Ench_CritChan
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.CritDmg int 1 run scoreboard players get @s Ench_CritDmg
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.AtkSpd int 1 run scoreboard players get @s Ench_AtkSpd
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.SCChance int 1 run scoreboard players get @s Ench_SCChance
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.Health int 1 run scoreboard players get @s Ench_Health
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.Defense int 1 run scoreboard players get @s Ench_Defense
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.Speed int 1 run scoreboard players get @s Ench_Speed
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.Intel int 1 run scoreboard players get @s Ench_Intel
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.TrueDef int 1 run scoreboard players get @s Ench_TrueDef
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.MagicFind int 1 run scoreboard players get @s Ench_MagicFind
execute unless data storage blue:lore_builder ItemStorage.Base{Type:"PET"} store result storage blue:lore_builder ItemStorage.Base.PetLuck int 1 run scoreboard players get @s Ench_PetLuck
#-----------RESET SCORES & TAGS------------#
tag @s remove RedStat
tag @s remove GreenStat
tag @s remove CurrentEnchant
tag @s remove PreserveDamage
tag @s remove Reforging
tag @s remove HasPotatoBook
tag @s remove GetBaseStat
#------------------------------------------#