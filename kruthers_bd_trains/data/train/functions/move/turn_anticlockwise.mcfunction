#called to move a stand around a corner
scoreboard players remove @s train_travel 1
scoreboard players remove @s train_step 1

execute positioned ^6 ^ ^ as @e[type=armor_stand,distance=..1.5,sort=nearest,tag=train_rotator,tag=anticlockwise,limit=1] at @s run tp @s ~ ~ ~ ~-0.1 ~0
execute positioned ^6 ^ ^ at @e[type=armor_stand,distance=..1.5,sort=nearest,tag=train_rotator,tag=anticlockwise,limit=1] run tp @s ^ ^ ^6

execute at @s run tp @s ~ ~ ~ ~-0.1 ~0

execute if score @s train_step matches 1.. if score @s train_travel matches 1.. at @s run function train:move/turn_anticlockwise
