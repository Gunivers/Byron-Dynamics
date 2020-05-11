execute at @s run summon minecraft:armor_stand ~ ~0.5 ~ {NoBasePlate:1b,NoGravity:1b,Tags:["turret"]}
execute at @s run scoreboard players set @e[type=armor_stand,tag=turret,distance=..1] online 0
execute at @s run scoreboard players set @e[type=armor_stand,tag=turret,distance=..1] firecd 0
execute at @s run summon minecraft:armor_stand ~ ~0.5 ~ {NoBasePlate:1b,NoGravity:1b,Tags:["turretmodel"]}
execute at @s run summon minecraft:armor_stand ~ ~0.5 ~ {NoBasePlate:1b,NoGravity:1b,Tags:["turretshow"]}
execute at @s run tp @e[tag=turret,distance=..1] ~ ~0.45 ~ ~ ~
execute at @s run tp @e[tag=turretmodel,distance=..1] ~ ~0.45 ~ ~ ~
execute at @s run tp @e[tag=turretshow,distance=..1] ~ ~0.45 ~ ~ ~
scoreboard players set @e[tag=turretshow,distance=..1] rotation 90
kill @s
