#called when trains are in play
execute as @e[type=armor_stand,tag=train,tag=stationed,tag=!paused] at @s run function train:in_station
execute as @e[type=armor_stand,tag=train,tag=on_straight,tag=!paused] at @s run function train:on_straight
execute as @e[type=armor_stand,tag=train,tag=on_turn,tag=!paused] at @s run function train:turn

execute as @e[type=armor_stand,tag=train,tag=need_move] at @s align xyz run function train:new_move/check

execute as @e[type=armor_stand,tag=train,tag=!stationed,tag=!need_move,tag=builder] at @s run function kruthers:train/place_floor

#execute at @e[type=armor_stand] run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0.1 1 force
effect give @e[type=minecraft:armor_stand,tag=selected] minecraft:glowing 1 0 true 
