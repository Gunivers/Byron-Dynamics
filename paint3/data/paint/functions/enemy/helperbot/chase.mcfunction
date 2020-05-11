execute at @e[tag=helperbot] as @e[tag=path,distance=..1.5] if score @s pathnumber <= @e[tag=helperbot,limit=1,sort=nearest] pathnumber run scoreboard players operation @e[tag=helperbot] pathnumber = @s pathnumber
execute as @e[tag=helperbot] at @s unless entity @e[tag=path,distance=..1.5] run tp @s ~ ~ ~ facing entity @e[tag=path,limit=1,sort=nearest]
execute at @e[tag=helperbot] as @e[tag=path,distance=..1.5] if score @s pathnumber = @e[tag=helperbot,limit=1] pathnumber run tp @e[tag=helperbot] ~ ~0.1 ~ facing entity @s
execute as @e[tag=helperbot] at @s if entity @e[tag=path,distance=..6] run tp @s ^ ^ ^0.3
execute at @e[tag=helperbot] run kill @e[tag=path,distance=..0.5]
execute as @e[tag=path] if score @e[tag=helperbot,limit=1] pathnumber < @s pathnumber run kill @s
