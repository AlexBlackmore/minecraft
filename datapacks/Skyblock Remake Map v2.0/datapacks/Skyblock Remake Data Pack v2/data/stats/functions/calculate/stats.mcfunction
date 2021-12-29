#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------UPDATE STORAGE--------------#
data remove storage blue:item SelectedItem
data remove storage blue:item Inventory
data modify storage blue:item SelectedItem set from entity @s SelectedItem
data modify storage blue:item Inventory set from entity @s Inventory
#-------------RESET ACTIONBAR--------------#
scoreboard players reset @s[scores={I_ActionbarTimer=1..30}] I_ActionbarTimer
tag @s remove ItemUsingActionbar
execute if data storage blue:item SelectedItem.tag.Base.Abilities[].UsesActionbar run tag @s add ItemUsingActionbar
execute if entity @s[tag=ItemUsingActionbar] run scoreboard players reset @s I_ActionbarTimer
#---------RESET TELEKINESIS SCORES---------#
function enchanting:reset_mine_scores
#-------------------TAGS-------------------#
tag @s remove Held_Experience
tag @s remove Held_Fortune
tag @s remove Held_Harvesting
tag @s remove Held_Telekinesis
tag @s remove Held_FrostWalker
tag @s remove Held_FrostWalker1
tag @s remove Wear_Thorns

tag @s remove Held_Treecapitator
execute if data entity @s SelectedItem.tag.Base{PassiveAbility:"Treecapitator"} run tag @s add Held_Treecapitator
execute if data entity @s SelectedItem.tag.Base{PassiveAbility:"JungleAxe"} run tag @s add Held_Treecapitator

tag @s add Held_GrapplingHook
execute unless data storage blue:item {SelectedItem:{tag:{Grapple:1b}}} unless data storage blue:item {Inventory:[{Slot:-106b,tag:{Grapple:1b}}]} run tag @s remove Held_GrapplingHook
execute if entity @s[tag=!Held_GrapplingHook] run function items:item_abilities/grappling_hook/clean_up

execute store result score $HasSoup SoupTrack1 run clear @s minecraft:map{mush:1b} 0
#---------------CAN BREAK TAG--------------#
function mining:holds_pickaxe
#--------------FULL SET TAGS---------------#
function armor:full_set_bonus/find_set_bonus
#----------------MENU ITEMS----------------#
execute if entity @s[tag=MaddoxMenuOpen] unless data storage blue:item SelectedItem.tag.MaddoxMenuItem at @s run function items:item_abilities/right_click/whassup/close
execute if entity @s[tag=PetClickMenuOpen] at @s run function pets:pet_click_detection/close
execute if entity @s[tag=RecipeMenuOpen] unless data storage blue:item SelectedItem.tag.Base.recipe_preview at @s run function menu:recipe_view/close
execute if entity @s[tag=PlacePreventOpen] at @s run function items:place_prevent/close

execute if data storage blue:item SelectedItem.tag.Base.PetData at @s run function pets:pet_click_detection/open
execute if entity @s[tag=!RecipeMenuOpen] if data storage blue:item SelectedItem.tag.Base.recipe_preview at @s run function menu:recipe_view/open
#-------------STOP INTERACTIONS------------#
tag @s remove PreventPlace
execute if data storage blue:item {SelectedItem:{id:"minecraft:player_head"}} unless data storage blue:item SelectedItem.tag.Base{Type:""} unless data storage blue:item SelectedItem.tag.Base{Type:"PET"} run tag @s add PreventPlace
execute unless data storage blue:item {SelectedItem:{id:"minecraft:player_head"}} if data storage blue:item SelectedItem.tag.Base.NotPlaceable run tag @s add PreventPlace
execute unless data storage blue:item {SelectedItem:{id:"minecraft:player_head"}} if data storage blue:item SelectedItem.tag.display.color run tag @s add PreventPlace
#------------------STATS-------------------#
execute if score @s P_BaseHealth matches ..74 run scoreboard players set @s P_BaseHealth 75
scoreboard players operation @s P_Strength = @s P_BaseStrength
scoreboard players operation @s P_Health = @s P_BaseHealth
scoreboard players operation @s P_Defense = @s P_BaseDefense
scoreboard players operation @s P_Speed = @s P_BaseSpeed
scoreboard players operation @s P_CritChance = @s P_BaseCritChance
scoreboard players operation @s P_CritDamage = @s P_BaseCritDamage
scoreboard players operation @s P_Intelligence = @s P_BaseIntel
scoreboard players operation @s P_SCChance = @s P_BaseSCChance
scoreboard players operation @s P_MagicFind = @s P_BaseMagicFind
scoreboard players operation @s P_PetLuck = @s P_BasePetLuck
scoreboard players operation @s P_TrueDef = @s P_BaseTrueDef
scoreboard players operation @s P_AtkSpeed = @s P_BaseAtkSpeed
scoreboard players operation @s P_AbilDmg = @s P_BaseAbilDmg
scoreboard players operation @s P_Ferocity = @s P_BaseFerocity
scoreboard players operation @s F_TreasureC = @s F_BaseTreasureC

scoreboard players set @s P_BonusStrength 0
scoreboard players set @s P_BonusHealth 0
scoreboard players set @s P_BonusDefense 0
scoreboard players set @s P_BonusSpeed 0
scoreboard players set @s P_BonusCritChan 0
scoreboard players set @s P_BonusCritDmg 0
scoreboard players set @s P_BonusIntel 0
scoreboard players set @s P_BonusSCChance 0
scoreboard players set @s P_BonusMagicFind 0
scoreboard players set @s P_BonusPetLuck 0
scoreboard players set @s P_BonusTrueDef 0
scoreboard players set @s P_BonusAtkSpeed 0
scoreboard players set @s P_BonusAbilDmg 0
scoreboard players set @s P_BonusFerocity 0
scoreboard players set @s F_BonusTreasureC 0
scoreboard players set @s E_ThornsAmount 0

execute if data storage blue:item {SelectedItem:{tag:{Base:{Type:"SWORD"}}}} run function stats:collect_stats/hand
execute if data storage blue:item {SelectedItem:{tag:{Base:{Type:"PICKAXE"}}}} run function stats:collect_stats/hand
execute if data storage blue:item {SelectedItem:{tag:{Base:{Type:"AXE"}}}} run function stats:collect_stats/hand
execute if data storage blue:item {SelectedItem:{tag:{Base:{Type:"SHOVEL"}}}} run function stats:collect_stats/hand
execute if data storage blue:item {SelectedItem:{tag:{Base:{Type:"HOE"}}}} run function stats:collect_stats/hand
execute if data storage blue:item {SelectedItem:{tag:{Base:{Type:"SHEARS"}}}} run function stats:collect_stats/hand
execute if data storage blue:item {SelectedItem:{tag:{Base:{Type:"FISHING ROD"}}}} run function stats:collect_stats/hand
execute if entity @s[tag=Wear_Helmet] run function stats:collect_stats/helmet
execute if entity @s[tag=Wear_Chestplate] run function stats:collect_stats/chestplate
execute if entity @s[tag=Wear_Leggings] run function stats:collect_stats/leggings
execute if entity @s[tag=Wear_Boots] run function stats:collect_stats/boots
execute if entity @s[tag=PetSpawned] run function stats:collect_stats/pet
#-----------ADD TEMPORARY STATS------------#
scoreboard players operation @s P_BonusSpeed += @s I_TempSpeed
#---------------FAIRY SOULS----------------#
function stats:calculate/fairy_souls
scoreboard players set @s P_BaseStrength 0
scoreboard players set @s P_BaseHealth 100
scoreboard players set @s P_BaseDefense 0
scoreboard players set @s P_BaseSpeed 100
scoreboard players operation @s P_BaseStrength += @s P_CStrength
scoreboard players operation @s P_BaseHealth += @s P_CHealth
scoreboard players operation @s P_BaseDefense += @s P_CDefense
scoreboard players operation @s P_BaseSpeed += @s P_CSpeed
scoreboard players operation @s P_BaseStrength += @s P_FStrength
scoreboard players operation @s P_BaseHealth += @s P_FHealth
scoreboard players operation @s P_BaseDefense += @s P_FDefense
scoreboard players operation @s P_BaseSpeed += @s P_FSpeed
#---------------ACCESSORIES----------------#
execute store result score Temp P_AccessCount if data entity @s Inventory[{tag:{Base:{Type:"ACCESSORY"}}}]
execute unless score Temp P_AccessCount = @s P_AccessCount run function stats:collect_stats/accessories
scoreboard players operation @s P_AccessCount = Temp P_AccessCount

scoreboard players operation @s P_BonusStrength += @s P_AStrength
scoreboard players operation @s P_BonusHealth += @s P_AHealth
scoreboard players operation @s P_BonusDefense += @s P_ADefense
scoreboard players operation @s P_BonusSpeed += @s P_ASpeed
scoreboard players operation @s P_BonusCritChan += @s P_ACritChance
scoreboard players operation @s P_BonusCritDmg += @s P_ACritDamage
scoreboard players operation @s P_BonusIntel += @s P_AIntelligence
scoreboard players operation @s P_BonusSCChance += @s P_ASCChance
scoreboard players operation @s P_BonusMagicFind += @s P_AMagicFind
scoreboard players operation @s P_BonusPetLuck += @s P_APetLuck
scoreboard players operation @s P_BonusTrueDef += @s P_ATrueDef
scoreboard players operation @s P_BonusAtkSpeed += @s P_AAtkSpeed
scoreboard players operation @s P_BonusAbilDmg += @s P_AAbilDmg
scoreboard players operation @s P_BonusFerocity += @s P_AFerocity
#------------------STATS-------------------#
scoreboard players set @s[scores={P_BonusHealth=..1}] P_BonusHealth 0
scoreboard players operation @s P_Strength += @s P_BonusStrength
scoreboard players operation @s P_Health += @s P_BonusHealth
scoreboard players operation @s P_Defense += @s P_BonusDefense
scoreboard players operation @s P_Speed += @s P_BonusSpeed
scoreboard players operation @s P_CritChance += @s P_BonusCritChan
scoreboard players operation @s P_CritDamage += @s P_BonusCritDmg
scoreboard players operation @s P_Intelligence += @s P_BonusIntel
scoreboard players operation @s P_SCChance += @s P_BonusSCChance
scoreboard players operation @s P_MagicFind += @s P_BonusMagicFind
scoreboard players operation @s P_PetLuck += @s P_BonusPetLuck
scoreboard players operation @s P_TrueDef += @s P_BonusTrueDef
scoreboard players operation @s P_AtkSpeed += @s P_BonusAtkSpeed
scoreboard players operation @s P_AbilDmg += @s P_BonusAbilDmg
scoreboard players operation @s P_Ferocity += @s P_BonusFerocity
scoreboard players operation @s F_TreasureC += @s F_BonusTreasureC
execute if score @s P_Defense matches ..-1 run scoreboard players set @s P_Defense 0
tag @s[scores={E_ThornsAmount=1..}] add Wear_Thorns
#-------FULL SET BONUS STATS MODS----------#
function armor:full_set_bonus/stat_modification
#----------------EHP UPDATE----------------#
execute unless score @s P_MaxHealth matches 1.. unless score @s P_PreHealth = @s P_Health run function stats:stat_update/health
execute unless score @s P_MaxDefense matches 1.. unless score @s P_PreDefense = @s P_Defense run function stats:stat_update/defense
#-----------KEEP EHP BELOW 21MIL-----------#
execute if score @s P_MaxDefense matches 1.. run scoreboard players operation @s P_Defense = @s P_MaxDefense
execute if score @s P_MaxHealth matches 1.. run scoreboard players operation @s P_Health = @s P_MaxHealth
#----------------EHP UPDATE----------------#
execute unless score @s P_PreHealth = @s P_Health run function stats:stat_update/health_2
execute unless score @s P_PreDefense = @s P_Defense run function stats:stat_update/defense_2
#----------------RESTORE EHP---------------#
execute if score @s P_EHP < @s PlayerEHP run function stats:restore_health
#-----------OTHER STATS UPDATES------------#
execute unless score @s P_PreSpeed = @s P_Speed run function stats:stat_update/speed
execute unless score @s P_PreAtkSpeed = @s P_AtkSpeed run function stats:stat_update/attack_speed
execute unless score @s P_PreIntel = @s P_Intelligence run function stats:stat_update/intelligence
#-------------MAXED OUT STATS--------------#
execute if score @s P_CritChance matches 101.. run function stats:stat_update/maxed/crit_chance
#-------UPDATE ABILITY DAMAGE LORES--------#
execute if data entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage run function stats:calculate/ability_damage
#-------------FEROCITY STRIKES-------------#
function stats:calculate/ferocity_strikes
#----------------PET LORE------------------#
execute if data entity @s SelectedItem.tag.Base.PetData run function items:edit_lore/begin/pet
#------------------------------------------#