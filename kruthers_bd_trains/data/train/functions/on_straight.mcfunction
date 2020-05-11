#ran on tains that are moving on a staight
scoreboard players operation @s train_step = @s train_speed

function train:move/forward

execute at @s run function train:update

execute if score @s train_travel matches ..0 run function train:new_move/reset
