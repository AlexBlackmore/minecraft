function mining:tag/reset
data modify storage blue:tag Inventory[].tag.Location set value "minecraft:end"
data modify storage blue:tag Inventory[].tag.CanDestroy set value ["minecraft:end_stone","minecraft:obsidian"]
function mining:tag/set