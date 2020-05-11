scoreboard players add @s raycastlength 1
execute positioned ~ ~-1.5 ~ run tag @a[distance=..0.7,gamemode=adventure] add hit
particle minecraft:dust 0.3 0.3 0.3 0.5 ~ ~ ~ 0 0 0 0.1 1 force
execute if block ^ ^ ^0.1 #paint:glass run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 0.2 1
execute if score @s raycastlength < turretshoot raycastlength positioned ^ ^ ^0.1 positioned ~ ~-1.5 ~ unless entity @a[distance=..0.6] unless entity @e[distance=..1,tag=laser] unless entity @e[distance=..1,tag=cube] positioned ~ ~1.5 ~ if block ~ ~ ~ #paint:nonsolid run function paint:enemy/turret/shoot
