###
#    public int nextInt(int bound) {
#        if (bound <= 0)
#            throw new IllegalArgumentException(BadBound);
#
#        int r = next(31);
#        int m = bound - 1;
#        if ((bound & m) == 0)  // i.e., bound is a power of 2
#            r = (int)((bound * (long)r) >> 31);
#        else {
#            for (int u = r; u - (r = u % bound) + m < 0; u = next(31));
#        }
#        return r;
#    }

function skyblock:random/lcg

scoreboard players operation #temp RandMath = out RandMath
scoreboard players operation out RandMath %= #range RandMath
scoreboard players operation #temp RandMath -= out RandMath
scoreboard players operation #temp RandMath += #m1 RandMath
execute if score #temp RandMath matches ..-1 run function skyblock:random/next_int_lcg