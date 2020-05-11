#called when a straight track is found
tag @s remove need_move
tag @s add stationed

scoreboard players operation @s train_travel = @e[type=armor_stand,dx=0,dy=5,dz=0,tag=mono_track,tag=station,scores={train_travel=1..},limit=1] train_travel

scoreboard players set @s train_step 0
