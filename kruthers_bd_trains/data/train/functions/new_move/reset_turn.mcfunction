#called when a train needs to be reset to recive its next set of instuctions (after a turn)
tag @s remove turn_clockwise
tag @s remove turn_anticlockwise

execute positioned ^-6 ^ ^ as @e[type=armor_stand,distance=..1.5,sort=nearest,tag=train_rotator,tag=clockwise,limit=1] run kill @s
execute positioned ^6 ^ ^ as @e[type=armor_stand,distance=..1.5,sort=nearest,tag=train_rotator,tag=anticlockwise,limit=1] run kill @s

function train:new_move/reset
