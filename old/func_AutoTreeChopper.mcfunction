entitydata @e[type=armor_stand,name=log0] {CustomName:log1}
execute @e[type=armor_stand,name=log1] ~ ~ ~ setblock ~ ~1 ~ air 0 destroy
tp @e[type=armor_stand,name=log1] ~ ~1 ~
kill @e[type=armor_stand,name=log0]
entitydata @e[type=armor_stand,name=log1] {CustomName:log0}
