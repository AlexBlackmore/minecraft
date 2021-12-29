function mining:tag/reset
data modify storage blue:tag Inventory[].tag.Location set value "minecraft:spiders_den"
data modify storage blue:tag Inventory[].tag.CanDestroy set value ["minecraft:gravel"]
function mining:tag/set