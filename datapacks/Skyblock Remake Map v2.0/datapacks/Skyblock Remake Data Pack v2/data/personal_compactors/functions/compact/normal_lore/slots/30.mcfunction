data modify storage skyblock:personal_compactors item set from entity @s Inventory[{Slot:29b}]
function personal_compactors:compact/normal_lore/modify_lore
loot replace entity @s inventory.20 1 mine 29999980 1 29832 air{drop_contents:true}