execute store result storage blue:reforge Item.tag.Base.MagicFind int 1 run scoreboard players get MagicFind ReforgeStats
execute store result storage blue:reforge Item.tag.Base.Strength int 1 run scoreboard players get Strength ReforgeStats
execute store result storage blue:reforge Item.tag.Base.CritChan int 1 run scoreboard players get CritChan ReforgeStats
execute store result storage blue:reforge Item.tag.Base.PetLuck int 1 run scoreboard players get PetLuck ReforgeStats
execute store result storage blue:reforge Item.tag.Base.Intel int 1 run scoreboard players get Intel ReforgeStats
execute store result storage blue:reforge Item.tag.Base.Speed int 1 run scoreboard players get Speed ReforgeStats
execute store result storage blue:reforge Item.tag.Base.AtkSpd int 1 run scoreboard players get AtkSpd ReforgeStats
execute store result storage blue:reforge Item.tag.Base.Health int 1 run scoreboard players get Health ReforgeStats
execute store result storage blue:reforge Item.tag.Base.Defense int 1 run scoreboard players get Defense ReforgeStats
execute store result storage blue:reforge Item.tag.Base.SCChance int 1 run scoreboard players get SCChance ReforgeStats
execute store result storage blue:reforge Item.tag.Base.Damage int 1 run scoreboard players get Damage ReforgeStats
execute store result storage blue:reforge Item.tag.Base.TrueDef int 1 run scoreboard players get TrueDef ReforgeStats
execute store result storage blue:reforge Item.tag.Base.CritDmg int 1 run scoreboard players get CritDmg ReforgeStats
execute store result storage blue:reforge Item.tag.Base.Ferocity int 1 run scoreboard players get Ferocity ReforgeStats

execute store result storage blue:reforge Item.tag.Base.BMagicFind int 1 run scoreboard players get MagicFind BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BStrength int 1 run scoreboard players get Strength BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BCritChan int 1 run scoreboard players get CritChan BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BPetLuck int 1 run scoreboard players get PetLuck BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BIntel int 1 run scoreboard players get Intel BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BSpeed int 1 run scoreboard players get Speed BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BAtkSpd int 1 run scoreboard players get AtkSpd BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BHealth int 1 run scoreboard players get Health BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BDefense int 1 run scoreboard players get Defense BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BSCChance int 1 run scoreboard players get SCChance BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BDamage int 1 run scoreboard players get Damage BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BTrueDef int 1 run scoreboard players get TrueDef BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BCritDmg int 1 run scoreboard players get CritDmg BReforgeStats
execute store result storage blue:reforge Item.tag.Base.BFerocity int 1 run scoreboard players get Ferocity BReforgeStats

execute unless data storage blue:reforge Item.tag.Base.FirstReforge run data modify storage blue:reforge Item.tag.Base.FirstReforge set value 1b
function items:edit_lore/begin/reforge
execute at @s if entity @s[tag=ReforgeStone] run function reforges:edit_name/apply_prefix
