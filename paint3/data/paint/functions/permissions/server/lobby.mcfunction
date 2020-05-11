#teleport @s -7 54.2 -89
execute as @s[scores={currentlevel=1..}] at @s run function paint:level/reset
scoreboard players set @s currentlevel 0
scoreboard players set @s[tag=playing] time 0
tag @s remove playing
