# Proximity
execute as @s[tag=!EBOpening,tag=!EBClosing,tag=!EBOpen] at @s align xyz positioned ~0.5 ~1.5 ~0.5 if entity @a[distance=..3,gamemode=!spectator] run tag @s add EBOpening
execute as @s[tag=EBOpening] at @s run function enchanting:enchanting_table/book_animation/oc/opening
execute as @s[tag=!EBOpening,tag=!EBClosing,tag=EBOpen] at @s align xyz positioned ~0.5 ~1.5 ~0.5 unless entity @a[distance=..3,gamemode=!spectator] run function enchanting:enchanting_table/book_animation/oc/close
execute as @s[tag=EBClosing] at @s run function enchanting:enchanting_table/book_animation/oc/closing

## Pieces
# Main Bob
execute at @s[tag=!EBOpen,tag=!EBOpening] run function enchanting:enchanting_table/book_animation/bob
execute at @s[tag=EBOpen,tag=EBClosing] run function enchanting:enchanting_table/book_animation/bob

# Face Player
execute at @s[tag=!EBOpen,tag=EBOpening] at @s run function enchanting:enchanting_table/book_animation/face
execute at @s[tag=EBOpen,tag=!EBClosing] at @s run function enchanting:enchanting_table/book_animation/face

# Covers
execute at @s rotated ~90 0 positioned ^ ^0.0245 ^-0.061 as @e[tag=EBCover1,limit=1,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s rotated ~-90 0 positioned ^ ^0.0245 ^-0.061 as @e[tag=EBCover2,limit=1,sort=nearest] run tp @s ~ ~ ~ ~90 ~

# Pages
execute at @s[tag=EBOpen,tag=!EBClosing] rotated ~90 0 positioned ^ ^0.09 ^0.0 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[tag=EBOpen,tag=!EBClosing] rotated ~-90 0 positioned ^ ^0.09 ^0.0 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[tag=!EBOpen,tag=!EBOpening] rotated ~90 0 positioned ^ ^0.025 ^0.01 as @e[tag=EBBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[tag=!EBOpen,tag=!EBOpening] rotated ~-90 0 positioned ^ ^0.025 ^0.01 as @e[tag=EBBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~