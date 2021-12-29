#execute as @e[tag=disp_hp,tag=!cw_disp_hpinit] run function cw_hp:hurt
#execute as @e[tag=disp_hp,nbt={HurtTime:10s}] run function cw_hp:hurt
execute as @e[type=!#cw_hp:exempt,tag=!cw_disp_hpinit] run function cw_hp:hurt
execute as @e[type=!#cw_hp:exempt,nbt={HurtTime:10s}] run function cw_hp:hurt