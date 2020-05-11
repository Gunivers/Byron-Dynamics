scoreboard players add @s raycastlength 1

#particle minecraft:dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0.1 1 force
execute positioned ~ ~-1.5 ~ if entity @a[distance=..0.7,gamemode=adventure] as @s run scoreboard players set @s firecd 20
execute positioned ~ ~-1.5 ~ if entity @a[distance=..0.7,gamemode=adventure] as @s run scoreboard players set @s online 300
execute if score @s raycastlength < turret raycastlength positioned ^ ^ ^0.1 if block ~ ~ ~ #paint:turretwhitelist positioned ~ ~-1.5 ~ unless entity @a[distance=..0.6,gamemode=adventure] unless entity @e[distance=..0.8,tag=laser] unless entity @e[distance=..0.8,tag=cube,type=shulker] positioned ~ ~1.5 ~ run function paint:enemy/turret/raycast
