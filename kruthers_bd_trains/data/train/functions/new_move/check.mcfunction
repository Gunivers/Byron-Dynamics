#called to check and start a move for a train when it goes onto a new bit of track
execute if entity @e[type=armor_stand,dx=0,dy=5,dz=0,tag=mono_track,tag=straight] run function train:new_move/straight
execute as @s[tag=need_move] if entity @e[type=armor_stand,dx=0,dy=5,dz=0,tag=mono_track,tag=station] run function train:new_move/station
execute as @s[tag=need_move] if entity @e[type=armor_stand,dx=0,dy=5,dz=0,tag=mono_track,tag=tack_clockwise] run function train:new_move/clockwise
execute as @s[tag=need_move] if entity @e[type=armor_stand,dx=0,dy=5,dz=0,tag=mono_track,tag=tack_anticlockwise] run function train:new_move/anticlockwise

execute as @s[tag=need_move] at @s run particle minecraft:angry_villager ~ ~ ~ 0 2 0 0 1 force
