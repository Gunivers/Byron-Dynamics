#called to set up a train to be able to turn a corner
tag @s remove need_move
tag @s add on_turn
tag @s add turn_anticlockwise

execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:["train_rotator","anticlockwise"]}
execute at @s run tp @e[type=armor_stand,distance=..0.5,sort=nearest,tag=train_rotator,tag=anticlockwise,limit=1] ^6 ^ ^ facing entity @s

scoreboard players operation @s train_travel = @e[type=armor_stand,dx=0,dy=5,dz=0,tag=mono_track,tag=tack_anticlockwise,scores={train_travel=1..},limit=1] train_travel

execute if score @s train_step matches 1.. at @s run function train:move/turn_anticlockwise
