function kruthers:train/parts/setup
function kruthers:train/parts/walls

data merge entity @s {Invisible:0}
execute as @e[type=armor_stand,distance=..5,tag=train_body] run data merge entity @s {Invisible:0}
effect clear @e[type=minecraft:shulker,distance=..5,tag=train_body] minecraft:invisibility 
