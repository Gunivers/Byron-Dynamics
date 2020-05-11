execute as @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^0.2 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^0.4 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^0.6 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^0.8 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^1.2 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^1.4 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^1.6 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^1.8 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^2.2 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^2.4 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^2.6 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^2.8 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^3.2 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^3.4 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^3.6 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^3.8 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^4.2 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^4.4 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected
execute as @s anchored eyes positioned ^ ^ ^4.6 if block ~ ~ ~ #paint:trapdoors run tag @s add trapdoor_detected


execute as @s[tag=trapdoor_detected] at @s unless entity @e[type=slime,tag=trapdoor_slime,distance=..2] run summon minecraft:slime ~ ~ ~ {OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocollision",DeathTime:0,FallFlying:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:9,wasOnGround:0b,Tags:["trapdoor_slime"],Attributes:[{Name:generic.knockbackResistance,Base:100},{Name:generic.movementSpeed,Base:0}]}
execute as @s[tag=trapdoor_detected] at @s run tp @e[type=slime,tag=trapdoor_slime,distance=..1] @s
execute as @s[tag=!trapdoor_detected] at @s as @e[type=slime,tag=trapdoor_slime,distance=..2] run tp 0 -2 0
execute as @e[type=slime] at @s unless entity @p[distance=..2.1] run tp 0 -2 0

tag @s remove trapdoor_detected
