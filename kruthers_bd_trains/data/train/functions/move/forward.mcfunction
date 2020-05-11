scoreboard players remove @s train_travel 1
scoreboard players remove @s train_step 1

execute at @s run tp ^ ^ ^0.01

execute if score @s train_step matches 1.. if score @s train_travel matches 1.. run function train:move/forward
