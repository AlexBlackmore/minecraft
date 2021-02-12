summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg RandMath run data get entity @e[tag=uuid,limit=1] UUIDMost 0.00000000023283064365386962890625
kill @e[tag=uuid]