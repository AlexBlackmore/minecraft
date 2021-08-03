effect give @p[predicate=skyblock:skeletons_helmet,predicate=skyblock:absorption1] absorption 30 2
effect give @p[predicate=skyblock:skeletons_helmet,predicate=skyblock:absorption0] absorption 30 1
effect give @p[predicate=skyblock:skeletons_helmet] absorption 30
function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/skeletons_helmet=true}] run schedule function skyblock:abilities/ambient/skeletons_helmet 29s replace

