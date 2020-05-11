#called when a train needs to be reset to recive its next set of instuctions
scoreboard players reset @s train_travel

tag @s remove stationed
tag @s remove on_straight
tag @s remove on_turn

#give the stand new instuctions
tag @s add need_move
