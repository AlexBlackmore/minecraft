scoreboard players add in1 RandMath 1
scoreboard players operation #range RandMath = in1 RandMath
scoreboard players operation #range RandMath -= in RandMath

scoreboard players operation #m1 RandMath = #range RandMath
scoreboard players remove #m1 RandMath 1
function skyblock:random/next_int_lcg
scoreboard players operation out RandMath += in RandMath

scoreboard players reset #m1 RandMath
scoreboard players remove in1 RandMath 1