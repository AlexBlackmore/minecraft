#If no Menu, Summon One
execute unless entity @e[tag=builder_storage,limit=1,sort=nearest,distance=..3] run summon chest_minecart ~ ~1.2 ~ {NoGravity: 1b, Motion: [0.0d, 0.0d, 0.0d], CustomDisplayTile: 1b, DisplayState: {Name: "minecraft:air"}, Silent: 1b, Invulnerable: 1b, Air: 0s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], Items:[{}],FallDistance: 0.0f, DisplayOffset: 0, CustomName: '{"italic":false,"color":"dark_gray","text":"Builder\'s Wand"}', Fire: -1s, Tags: ["builder_storage","invisible_minecart"]}
#Set Menu Inv to SelectedItem Store Tag
execute positioned ~ ~1.2 ~ as @e[tag=builder_storage,limit=1,sort=nearest] run data modify entity @s Items set from entity @p SelectedItem.tag.store
#Set Menu ID to Selected Item ID
execute positioned ~ ~1.2 ~ store result score @e[tag=builder_storage,limit=1,sort=nearest] I_BWandID run data get entity @s SelectedItem.tag.ID
