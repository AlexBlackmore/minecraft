scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 999
function skyblock:random/range_lcg
execute store result score @s ExperienceChan run data get entity @s SelectedItem.tag.Base.Enchantments[{experience:{identifier:1b}}].experience.bonus_float 10
execute if entity @s[scores={U_WPick=1..}] if score out RandMath <= @s ExperienceChan run function enchanting:enchants/experience/success
execute if entity @s[scores={U_SPick=1..}] if score out RandMath <= @s ExperienceChan run function enchanting:enchants/experience/success
execute if entity @s[scores={U_GPick=1..}] if score out RandMath <= @s ExperienceChan run function enchanting:enchants/experience/success
execute if entity @s[scores={U_IPick=1..}] if score out RandMath <= @s ExperienceChan run function enchanting:enchants/experience/success
execute if entity @s[scores={U_DPick=1..}] if score out RandMath <= @s ExperienceChan run function enchanting:enchants/experience/success
execute if entity @s[scores={U_NPick=1..}] if score out RandMath <= @s ExperienceChan run function enchanting:enchants/experience/success
function enchanting:reset_mine_scores