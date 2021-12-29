tag @p[nbt={Inventory:[{tag:{Name:"Night Vision Charm"}}]}] add night_vision_charm
advancement revoke @p[advancements={skyblock:accessories/night_vision_charm=true},tag=!night_vision_charm] only skyblock:accessories/night_vision_charm

effect give @p[tag=night_vision_charm] night_vision 15 0 true

execute if entity @p[tag=night_vision_charm] run schedule function skyblock:abilities/accessories/night_vision_charm 4s replace
tag @p[tag=night_vision_charm] remove night_vision_charm