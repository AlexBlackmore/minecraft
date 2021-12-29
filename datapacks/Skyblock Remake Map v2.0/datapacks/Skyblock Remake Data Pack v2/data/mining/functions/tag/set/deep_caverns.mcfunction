function mining:tag/reset
data modify storage blue:tag Inventory[].tag.Location set value "minecraft:deep_caverns"
data modify storage blue:tag Inventory[].tag.CanDestroy set value ["minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore","minecraft:stone","minecraft:cobblestone","minecraft:obsidian","minecraft:redstone_ore","minecraft:diamond_ore","minecraft:diamond_block","minecraft:emerald_ore","minecraft:lapis_ore"]
function mining:tag/set