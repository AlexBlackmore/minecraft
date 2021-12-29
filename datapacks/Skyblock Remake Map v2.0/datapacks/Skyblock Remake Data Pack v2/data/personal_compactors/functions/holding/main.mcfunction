execute as @s[tag=!PCompact_given_id] run function personal_compactors:give_id
tag @s[tag=!PersonalCompactor] add summoning_cart
execute if entity @s[tag=!PersonalCompactor] run function personal_compactors:holding/summon_cart
tag @s add PersonalCompactor
function personal_compactors:link
execute store result score @s pcompact.select run data get entity @s SelectedItemSlot
execute unless score @s pcompact.select = @s pcompact.previd run function personal_compactors:not_holding/main
execute run scoreboard players operation @s pcompact.previd = @s pcompact.select
execute as @e[type=chest_minecart,limit=1,sort=nearest,tag=pcompactor,distance=0..2] run function personal_compactors:holding/update_item/main