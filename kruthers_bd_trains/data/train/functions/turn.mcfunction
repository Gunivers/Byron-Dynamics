#ran on tains that are moving around a turn
scoreboard players operation @s train_step = @s train_speed

execute as @s[tag=turn_clockwise] run function train:move/turn_clockwise
execute as @s[tag=turn_anticlockwise] run function train:move/turn_anticlockwise

execute at @s run function train:update

execute if score @s train_travel matches ..0 run function train:new_move/reset_turn
