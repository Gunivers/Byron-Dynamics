execute as @s at @s anchored eyes run tag @s remove archive_searching
#execute as @s at @s anchored eyes run tag @s add random
execute as @s at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^1 {NoGravity:1b,Duration:10,Tags:["archive_random","archive_random1"]}
execute as @s at @s anchored eyes run summon minecraft:area_effect_cloud ^1 ^ ^ {NoGravity:1b,Duration:10,Tags:["archive_random","archive_random2"]}
execute as @s at @s anchored eyes run summon minecraft:area_effect_cloud ^-1 ^ ^ {NoGravity:1b,Duration:10,Tags:["archive_random","archive_random3"]}
execute as @s at @s anchored eyes run tag @e[tag=archive_random,distance=..2,sort=random] add archive_random_choosen
execute as @s at @s if entity @e[tag=archive_random,tag=archive_random1,tag=archive_random_choosen,distance=..2,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
execute as @s at @s if entity @e[tag=archive_random,tag=archive_random2,tag=archive_random_choosen,distance=..2,limit=1,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute as @s at @s if entity @e[tag=archive_random,tag=archive_random3,tag=archive_random_choosen,distance=..2,limit=1,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute as @s at @s anchored eyes run kill @e[tag=archive_random,distance=..2,sort=nearest,limit=3]
execute as @s at @s anchored eyes run tag @s add archive_searching
