function mining:tag/reset
data modify storage blue:tag Inventory[].tag.Location set value "minecraft:blazing_fortress"
data modify storage blue:tag Inventory[].tag.CanDestroy set value ["minecraft:glowstone","minecraft:netherrack","minecraft:nether_quartz_ore"]
function mining:tag/set