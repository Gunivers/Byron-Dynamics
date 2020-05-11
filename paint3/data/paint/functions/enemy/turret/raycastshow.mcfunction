scoreboard players add @s raycastlength 1

particle minecraft:dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0.05 1 force
execute if score @s raycastlength < turretshow raycastlength positioned ^ ^ ^0.2 if block ~ ~ ~ #paint:nonsolid unless entity @p[distance=..0.6] unless entity @e[distance=..0.8,tag=laser] unless entity @e[distance=..0.8,tag=cube] run function paint:enemy/turret/raycastshow
