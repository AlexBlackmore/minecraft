execute if score @s I_HealCharges matches 5.. run function items:item_abilities/right_click/instant_heal/not_enough_charges
execute unless score @s I_HealCharges matches 5.. run function items:item_abilities/right_click/instant_heal/ornate_zombie_sword/main
