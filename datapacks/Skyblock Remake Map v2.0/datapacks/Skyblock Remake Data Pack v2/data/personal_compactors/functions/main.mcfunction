execute as @a[predicate=personal_compactors:holding] at @s run function personal_compactors:holding/main
execute as @a[predicate=!personal_compactors:holding,tag=PersonalCompactor] at @s run function personal_compactors:not_holding/main
execute as @a[nbt={Inventory:[{tag:{Base:{Type:"ACCESSORY",AccessoryFamily:"Compactor"}}}]}] run function personal_compactors:compact/main