execute if score @p[tag=xp_loss] xp_level > @p[tag=xp_loss] xp_target run xp add @p[tag=xp_loss] -1 levels
execute if score @p[tag=xp_loss] xp_level < @p[tag=xp_loss] xp_target run xp add @p[tag=xp_loss] 1 levels

execute store result score @p[tag=xp_loss] xp_level run xp query @p[tag=xp_loss] levels
execute unless score @p[tag=xp_loss] xp_level = @p[tag=xp_loss] xp_target run function skyblock:xp_target