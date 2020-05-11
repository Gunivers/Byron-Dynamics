#called when a straight track is found
tag @s remove need_move
tag @s add on_straight

scoreboard players operation @s train_travel = @e[type=armor_stand,dx=0,dy=5,dz=0,tag=mono_track,tag=straight,scores={train_travel=1..},limit=1] train_travel

execute if score @s train_step matches 1.. run function train:move/forward
