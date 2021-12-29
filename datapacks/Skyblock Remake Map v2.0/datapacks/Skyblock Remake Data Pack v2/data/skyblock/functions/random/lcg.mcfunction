# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg RandMath *= #lcg Constant
scoreboard players add #lcg RandMath 12345
scoreboard players operation out RandMath = #lcg RandMath