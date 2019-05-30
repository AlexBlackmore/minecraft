# Controls everything to do with item averages

scoreboard players enable @a ia_setTrackTime
scoreboard players enable @a ia_startTracking
scoreboard players enable @a ia_help
scoreboard players enable @a ia_toggleSidebar
execute as @a[scores={ia_startTracking=1..}] at @s run function item_avg:start_tracking
execute as @a[scores={ia_help=1..}] at @s run function item_avg:help
execute as @a[scores={ia_toggleSidebar=1..}] at @s run function item_avg:toggle_sidebar

execute as @e[tag=ia_placeDataPoint] at @s align xz positioned ~0.5 ~ ~0.5 run function item_avg:place_data_point

# If tracking has begun, track items at the data point
execute as @e[tag=ia_pointDisplay] at @s if score #ia_trackTimeClone ia_trackTime matches 1.. run function item_avg:track_items
execute as @a at @s if score #ia_trackTimeClone ia_trackTime matches 0 run function item_avg:output_average
