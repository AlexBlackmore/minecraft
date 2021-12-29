function mining:tag/reset
data modify storage blue:tag Inventory[].tag.Location set value "minecraft:coal_mine"
data modify storage blue:tag Inventory[].tag.CanDestroy set value ["minecraft:cobblestone","minecraft:stone","minecraft:coal_ore"]
function mining:tag/set