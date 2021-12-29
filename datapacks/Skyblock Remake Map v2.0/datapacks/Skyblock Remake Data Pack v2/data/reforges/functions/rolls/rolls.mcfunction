data modify storage blue:reforge Tellraw.PreName set from storage blue:reforge Item.tag.display.Name


execute if data storage blue:reforge Item.tag.Base{Type:"SWORD"} run function reforges:rolls/melee_roll
execute if data storage blue:reforge Item.tag.Base{Type:"FISHING ROD"} run function reforges:rolls/melee_roll
execute if data storage blue:reforge Item.tag.Base{Type:"HELMET"} run function reforges:rolls/armor_roll
execute if data storage blue:reforge Item.tag.Base{Type:"CHESTPLATE"} run function reforges:rolls/armor_roll
execute if data storage blue:reforge Item.tag.Base{Type:"LEGGINGS"} run function reforges:rolls/armor_roll
execute if data storage blue:reforge Item.tag.Base{Type:"BOOTS"} run function reforges:rolls/armor_roll
execute if data storage blue:reforge Item.tag.Base{Type:"ACCESSORY"} run function reforges:rolls/accessory_roll
execute if data storage blue:reforge Item.tag.Base{Type:"BOW"} run function reforges:rolls/ranged_roll

