#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------ABILITY STATS CALCS------------#
data remove storage blue:lore_builder PetAbility

execute store result score $PetAbility1 Temp run data get storage blue:lore_builder ItemStorage.Base.PetData.Current.Ability[0][0]
execute store result score $PetAbility1_2 Temp run data get storage blue:lore_builder ItemStorage.Base.PetData.Current.Ability[0][1]

execute store result score $PetAbility2 Temp run data get storage blue:lore_builder ItemStorage.Base.PetData.Current.Ability[1][0]
execute store result score $PetAbility2_2 Temp run data get storage blue:lore_builder ItemStorage.Base.PetData.Current.Ability[1][1]

execute store result score $PetAbility3 Temp run data get storage blue:lore_builder ItemStorage.Base.PetData.Current.Ability[2][0]
execute store result score $PetAbility3_2 Temp run data get storage blue:lore_builder ItemStorage.Base.PetData.Current.Ability[2][1]

execute store result score $PetAbility4 Temp run data get storage blue:lore_builder ItemStorage.Base.PetData.Current.Ability[3][0]
execute store result score $PetAbility4_2 Temp run data get storage blue:lore_builder ItemStorage.Base.PetData.Current.Ability[3][1]

#--------------GET RARITY ID---------------#
execute store result score $PetRarityID Temp run data get storage blue:lore_builder ItemStorage.Base.RarityID
#----------GET ABILITY UNLOCKING-----------#
execute store result score $Ability1RarityID Temp run data get storage blue:lore_builder ItemStorage.Base.Abilities[0].RarityID
execute store result score $Ability2RarityID Temp run data get storage blue:lore_builder ItemStorage.Base.Abilities[1].RarityID
execute store result score $Ability3RarityID Temp run data get storage blue:lore_builder ItemStorage.Base.Abilities[2].RarityID
execute store result score $Ability4RarityID Temp run data get storage blue:lore_builder ItemStorage.Base.Abilities[3].RarityID
#------------GET ABILITY DESCS-------------#
# 1st ability
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29833 air

execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[0] run setblock 29999978 1 29832 oak_sign{Text1:'{"nbt":"ItemStorage.Base.Abilities[0].Description[0]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[1] run data merge block 29999978 1 29832 {Text2:'{"nbt":"ItemStorage.Base.Abilities[0].Description[1]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[2] run data merge block 29999978 1 29832 {Text3:'{"nbt":"ItemStorage.Base.Abilities[0].Description[2]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[3] run data merge block 29999978 1 29832 {Text4:'{"nbt":"ItemStorage.Base.Abilities[0].Description[3]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[4] run setblock 29999978 1 29833 birch_sign{Text1:'{"nbt":"ItemStorage.Base.Abilities[0].Description[4]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[5] run data merge block 29999978 1 29833 {Text2:'{"nbt":"ItemStorage.Base.Abilities[0].Description[5]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[6] run data merge block 29999978 1 29833 {Text3:'{"nbt":"ItemStorage.Base.Abilities[0].Description[6]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[7] run data merge block 29999978 1 29833 {Text4:'{"nbt":"ItemStorage.Base.Abilities[0].Description[7]","storage":"blue:lore_builder","interpret":true}'}

execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[0] run data modify storage blue:lore_builder PetAbility.Description1 append from block 29999978 1 29832 Text1
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[1] run data modify storage blue:lore_builder PetAbility.Description1 append from block 29999978 1 29832 Text2
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[2] run data modify storage blue:lore_builder PetAbility.Description1 append from block 29999978 1 29832 Text3
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[3] run data modify storage blue:lore_builder PetAbility.Description1 append from block 29999978 1 29832 Text4
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[4] run data modify storage blue:lore_builder PetAbility.Description1 append from block 29999978 1 29833 Text1
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[5] run data modify storage blue:lore_builder PetAbility.Description1 append from block 29999978 1 29833 Text2
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[6] run data modify storage blue:lore_builder PetAbility.Description1 append from block 29999978 1 29833 Text3
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[0].Description[7] run data modify storage blue:lore_builder PetAbility.Description1 append from block 29999978 1 29833 Text4

# 2nd ability
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29833 air

execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[0] run setblock 29999978 1 29832 oak_sign{Text1:'{"nbt":"ItemStorage.Base.Abilities[1].Description[0]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[1] run data merge block 29999978 1 29832 {Text2:'{"nbt":"ItemStorage.Base.Abilities[1].Description[1]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[2] run data merge block 29999978 1 29832 {Text3:'{"nbt":"ItemStorage.Base.Abilities[1].Description[2]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[3] run data merge block 29999978 1 29832 {Text4:'{"nbt":"ItemStorage.Base.Abilities[1].Description[3]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[4] run setblock 29999978 1 29833 birch_sign{Text1:'{"nbt":"ItemStorage.Base.Abilities[1].Description[4]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[5] run data merge block 29999978 1 29833 {Text2:'{"nbt":"ItemStorage.Base.Abilities[1].Description[5]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[6] run data merge block 29999978 1 29833 {Text3:'{"nbt":"ItemStorage.Base.Abilities[1].Description[6]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[7] run data merge block 29999978 1 29833 {Text4:'{"nbt":"ItemStorage.Base.Abilities[1].Description[7]","storage":"blue:lore_builder","interpret":true}'}

execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[0] run data modify storage blue:lore_builder PetAbility.Description2 append from block 29999978 1 29832 Text1
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[1] run data modify storage blue:lore_builder PetAbility.Description2 append from block 29999978 1 29832 Text2
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[2] run data modify storage blue:lore_builder PetAbility.Description2 append from block 29999978 1 29832 Text3
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[3] run data modify storage blue:lore_builder PetAbility.Description2 append from block 29999978 1 29832 Text4
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[4] run data modify storage blue:lore_builder PetAbility.Description2 append from block 29999978 1 29833 Text1
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[5] run data modify storage blue:lore_builder PetAbility.Description2 append from block 29999978 1 29833 Text2
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[6] run data modify storage blue:lore_builder PetAbility.Description2 append from block 29999978 1 29833 Text3
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[1].Description[7] run data modify storage blue:lore_builder PetAbility.Description2 append from block 29999978 1 29833 Text4

# 3rd ability
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29833 air

execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[0] run setblock 29999978 1 29832 oak_sign{Text1:'{"nbt":"ItemStorage.Base.Abilities[2].Description[0]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[1] run data merge block 29999978 1 29832 {Text2:'{"nbt":"ItemStorage.Base.Abilities[2].Description[1]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[2] run data merge block 29999978 1 29832 {Text3:'{"nbt":"ItemStorage.Base.Abilities[2].Description[2]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[3] run data merge block 29999978 1 29832 {Text4:'{"nbt":"ItemStorage.Base.Abilities[2].Description[3]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[4] run setblock 29999978 1 29833 birch_sign{Text1:'{"nbt":"ItemStorage.Base.Abilities[2].Description[4]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[5] run data merge block 29999978 1 29833 {Text2:'{"nbt":"ItemStorage.Base.Abilities[2].Description[5]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[6] run data merge block 29999978 1 29833 {Text3:'{"nbt":"ItemStorage.Base.Abilities[2].Description[5]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[7] run data merge block 29999978 1 29833 {Text4:'{"nbt":"ItemStorage.Base.Abilities[2].Description[5]","storage":"blue:lore_builder","interpret":true}'}

execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[0] run data modify storage blue:lore_builder PetAbility.Description3 append from block 29999978 1 29832 Text1
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[1] run data modify storage blue:lore_builder PetAbility.Description3 append from block 29999978 1 29832 Text2
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[2] run data modify storage blue:lore_builder PetAbility.Description3 append from block 29999978 1 29832 Text3
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[3] run data modify storage blue:lore_builder PetAbility.Description3 append from block 29999978 1 29832 Text4
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[4] run data modify storage blue:lore_builder PetAbility.Description3 append from block 29999978 1 29833 Text1
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[5] run data modify storage blue:lore_builder PetAbility.Description3 append from block 29999978 1 29833 Text2
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[6] run data modify storage blue:lore_builder PetAbility.Description3 append from block 29999978 1 29833 Text3
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[2].Description[7] run data modify storage blue:lore_builder PetAbility.Description3 append from block 29999978 1 29833 Text4

# 4th ability
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29833 air

execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[0] run setblock 29999978 1 29832 oak_sign{Text1:'{"nbt":"ItemStorage.Base.Abilities[3].Description[0]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[1] run data merge block 29999978 1 29832 {Text2:'{"nbt":"ItemStorage.Base.Abilities[3].Description[1]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[2] run data merge block 29999978 1 29832 {Text3:'{"nbt":"ItemStorage.Base.Abilities[3].Description[2]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[3] run data merge block 29999978 1 29832 {Text4:'{"nbt":"ItemStorage.Base.Abilities[3].Description[3]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[4] run setblock 29999978 1 29833 birch_sign{Text1:'{"nbt":"ItemStorage.Base.Abilities[3].Description[4]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[5] run data merge block 29999978 1 29833 {Text2:'{"nbt":"ItemStorage.Base.Abilities[3].Description[5]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[6] run data merge block 29999978 1 29833 {Text3:'{"nbt":"ItemStorage.Base.Abilities[3].Description[5]","storage":"blue:lore_builder","interpret":true}'}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[7] run data merge block 29999978 1 29833 {Text4:'{"nbt":"ItemStorage.Base.Abilities[3].Description[5]","storage":"blue:lore_builder","interpret":true}'}

execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[0] run data modify storage blue:lore_builder PetAbility.Description4 append from block 29999978 1 29832 Text1
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[1] run data modify storage blue:lore_builder PetAbility.Description4 append from block 29999978 1 29832 Text2
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[2] run data modify storage blue:lore_builder PetAbility.Description4 append from block 29999978 1 29832 Text3
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[3] run data modify storage blue:lore_builder PetAbility.Description4 append from block 29999978 1 29832 Text4
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[4] run data modify storage blue:lore_builder PetAbility.Description4 append from block 29999978 1 29833 Text1
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[5] run data modify storage blue:lore_builder PetAbility.Description4 append from block 29999978 1 29833 Text2
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[6] run data modify storage blue:lore_builder PetAbility.Description4 append from block 29999978 1 29833 Text3
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.Abilities[3].Description[7] run data modify storage blue:lore_builder PetAbility.Description4 append from block 29999978 1 29833 Text4
#------APPLY DESCS IF RARITY MATCHES-------#
execute if score $PetRarityID Temp >= $Ability1RarityID Temp run data modify storage blue:lore_builder NewLore append from storage blue:lore_builder PetAbility.Description1[]
execute if score $PetRarityID Temp >= $Ability2RarityID Temp run data modify storage blue:lore_builder NewLore append from storage blue:lore_builder PetAbility.Description2[]
execute if score $PetRarityID Temp >= $Ability3RarityID Temp run data modify storage blue:lore_builder NewLore append from storage blue:lore_builder PetAbility.Description3[]
execute if score $PetRarityID Temp >= $Ability4RarityID Temp run data modify storage blue:lore_builder NewLore append from storage blue:lore_builder PetAbility.Description4[]