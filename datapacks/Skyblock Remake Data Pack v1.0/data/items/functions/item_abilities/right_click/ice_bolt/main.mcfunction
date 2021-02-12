summon armor_stand ~ ~1 ~ {Marker:1b,NoGravity:1b,Tags:["IceBolt","InitIceBolt","IceBolt1","Timeout","10SecTimeout"],Invisible:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"ice",Count:1b},{}],Pose:{RightArm:[7f,0f,0f]}}
summon armor_stand ~ ~1 ~ {Marker:1b,NoGravity:1b,Tags:["IceBolt","InitIceBolt","IceBolt2","Timeout","10SecTimeout"],Invisible:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"packed_ice",Count:1b},{}],Pose:{RightArm:[7f,0f,0f]}}
summon armor_stand ~ ~1 ~ {Marker:1b,NoGravity:1b,Tags:["IceBolt","InitIceBolt","IceBolt3","Timeout","10SecTimeout"],Invisible:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"ice",Count:1b},{}],Pose:{RightArm:[7f,0f,0f]}}
summon armor_stand ~ ~1 ~ {Marker:1b,NoGravity:1b,Tags:["IceBolt","InitIceBolt","IceBolt4","Timeout","10SecTimeout"],Invisible:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"packed_ice",Count:1b},{}],Pose:{RightArm:[7f,0f,0f]}}
summon armor_stand ~ ~1 ~ {Marker:1b,NoGravity:1b,Tags:["IceBolt","InitIceBolt","IceBolt5","Timeout","10SecTimeout"],Invisible:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"ice",Count:1b},{}],Pose:{RightArm:[7f,0f,0f]}}

execute as @e[tag=IceBolt,tag=InitIceBolt] at @s run tp @s @p
execute as @e[tag=IceBolt,tag=InitIceBolt] at @s run tp @s ~ ~1 ~
execute as @e[tag=IceBolt2,tag=InitIceBolt] at @s run tp @s ^ ^ ^-0.3
execute as @e[tag=IceBolt3,tag=InitIceBolt] at @s run tp @s ^ ^ ^-0.6
execute as @e[tag=IceBolt4,tag=InitIceBolt] at @s run tp @s ^ ^ ^-0.9
execute as @e[tag=IceBolt5,tag=InitIceBolt] at @s run tp @s ^ ^ ^-1.2
tag @e[tag=IceBolt] remove InitIceBolt