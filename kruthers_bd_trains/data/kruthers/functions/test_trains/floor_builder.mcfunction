#ran to setup a train that builds the floor below the train
execute as @e[type=minecraft:armor_stand,distance=..3,tag=!train,tag=!mono_track,limit=1,sort=nearest] run function kruthers:train/setup
tag @e[type=minecraft:armor_stand,distance=..3,tag=train,limit=1,sort=nearest] add builder