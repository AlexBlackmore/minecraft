# Toggles the trigger on and off

scoreboard players operation #ia_toggleSidebarMain ia_toggleSidebar *= #ia_toggleSidebar ia_toggleSidebar
execute if score #ia_toggleSidebarMain ia_toggleSidebar matches 1 run scoreboard objectives setdisplay sidebar ia_averageItems
execute if score #ia_toggleSidebarMain ia_toggleSidebar matches -1 run scoreboard objectives setdisplay sidebar

scoreboard players set @s ia_toggleSidebar 0
scoreboard players enable @s ia_toggleSidebar
