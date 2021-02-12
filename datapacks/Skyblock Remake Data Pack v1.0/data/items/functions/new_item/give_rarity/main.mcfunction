#===================NOTE===================#
# Massive Thanks To Tryashtar For The Base #
#   Of This Item Sorting (By Name Length)  #
#==========================================#
#---------------PLAYER IDS-----------------#
data modify storage blue:item item.id set from entity @s Item.id
execute store result score #length StringLength run data get storage blue:item item.id
execute if score #length StringLength matches 13 run function items:new_item/give_rarity/length_13
execute if score #length StringLength matches 14 run function items:new_item/give_rarity/length_14
execute if score #length StringLength matches 15 run function items:new_item/give_rarity/length_15
execute if score #length StringLength matches 16 run function items:new_item/give_rarity/length_16
execute if score #length StringLength matches 17 run function items:new_item/give_rarity/length_17
execute if score #length StringLength matches 18 run function items:new_item/give_rarity/length_18
execute if score #length StringLength matches 19 run function items:new_item/give_rarity/length_19
execute if score #length StringLength matches 20 run function items:new_item/give_rarity/length_20
execute if score #length StringLength matches 21 run function items:new_item/give_rarity/length_21
execute if score #length StringLength matches 22 run function items:new_item/give_rarity/length_22
execute if score #length StringLength matches 23 run function items:new_item/give_rarity/length_23
execute if score #length StringLength matches 24 run function items:new_item/give_rarity/length_24
execute if score #length StringLength matches 25 run function items:new_item/give_rarity/length_25
execute if score #length StringLength matches 26 run function items:new_item/give_rarity/length_26
execute if score #length StringLength matches 27 run function items:new_item/give_rarity/length_27
execute if score #length StringLength matches 28 run function items:new_item/give_rarity/length_28
execute if score #length StringLength matches 29 run function items:new_item/give_rarity/length_29
execute if score #length StringLength matches 30 run function items:new_item/give_rarity/length_30
execute if score #length StringLength matches 31 run function items:new_item/give_rarity/length_31
execute if score #length StringLength matches 32 run function items:new_item/give_rarity/length_32
execute if score #length StringLength matches 33 run function items:new_item/give_rarity/length_33
execute if score #length StringLength matches 34 run function items:new_item/give_rarity/length_34
execute if score #length StringLength matches 35 run function items:new_item/give_rarity/length_35
execute if score #length StringLength matches 36 run function items:new_item/give_rarity/length_36
execute if score #length StringLength matches 37 run function items:new_item/give_rarity/length_37
execute if score #length StringLength matches 38 run function items:new_item/give_rarity/length_38
execute if score #length StringLength matches 39 run function items:new_item/give_rarity/length_39
execute if score #length StringLength matches 40 run function items:new_item/give_rarity/length_40
execute if score #length StringLength matches 42 run function items:new_item/give_rarity/length_42
execute if score #length StringLength matches 44 run function items:new_item/give_rarity/length_44
#------------------------------------------#