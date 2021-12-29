tag @p[advancements={skyblock:commands/instant/infinidirt_wand=true}] add infinidirt_wand

give @p[tag=infinidirt_wand] dirt 64
xp add @p[tag=infinidirt_wand] -64 points
effect give @p[tag=infinidirt_wand] hunger 1
playsound minecraft:block.gravel.place player @p[tag=infinidirt_wand]

tag @p[tag=infinidirt_wand] remove infinidirt_wand

function skyblock:abilities/reset_instant
