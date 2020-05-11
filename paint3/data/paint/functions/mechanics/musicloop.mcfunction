
execute if score music music matches 1 if score music musictime matches 1220.. run scoreboard players set music musictime 0
execute if score music music matches 2 if score music musictime matches 3020.. run scoreboard players set music musictime 0
execute if score music music matches 3 if score music musictime matches 4200.. run scoreboard players set music musictime 0
execute if score music music matches 4 if score music musictime matches 4120.. run scoreboard players set music musictime 0
execute if score music music matches 5 if score music musictime matches 3580.. run scoreboard players set music musictime 0
execute if score music music matches 6 if score music musictime matches 3500.. run scoreboard players set music musictime 0
execute if score music music matches 7 if score music musictime matches 1800.. run scoreboard players set music musictime 0
execute if score music music matches 8 if score music musictime matches 1440.. run scoreboard players set music musictime 0
execute if score music music matches 9 if score music musictime matches 2240.. run scoreboard players set music musictime 0
execute if score music music matches 10 if score music musictime matches 2740.. run scoreboard players set music musictime 0
execute if score music music matches 20 if score music musictime matches 3000.. run scoreboard players set music musictime 0
execute if score music music matches 21 if score music musictime matches 2760.. run scoreboard players set music musictime 0
execute if score music music matches 22 if score music musictime matches 7620.. run scoreboard players set music musictime 0
execute if score music music matches 23 if score music musictime matches 7620.. run scoreboard players set music musictime 0
execute if score music musictime matches 0 run stopsound @a record


execute if score music music matches 1 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_lost record @s ~ ~ ~ 1000 1 1
execute if score music music matches 2 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_focus record @s ~ ~ ~ 1000 1 1
execute if score music music matches 3 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_hello record @s ~ ~ ~ 1000 1 1
execute if score music music matches 4 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_echo record @s ~ ~ ~ 1000 1 1
execute if score music music matches 5 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_carrie record @s ~ ~ ~ 1000 1 1
execute if score music music matches 6 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_abandoned record @s ~ ~ ~ 1000 1 1
execute if score music music matches 7 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_uplift record @s ~ ~ ~ 1000 1 1
execute if score music music matches 8 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_chase record @s ~ ~ ~ 1000 1 1
execute if score music music matches 9 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_mission record @s ~ ~ ~ 1000 1 1
execute if score music music matches 10 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_light record @s ~ ~ ~ 1000 1 1
execute if score music music matches 20 if score music musictime matches 0 as @a at @s run playsound minecraft:bd_ready record @s ~ ~ ~ 1000 1 1
execute if score music music matches 21 if score music musictime matches 0 as @a at @s run playsound minecraft:bd_human_storage record @s ~ ~ ~ 1000 1 1
execute if score music music matches 22 if score music musictime matches 0 as @a at @s run playsound minecraft:bd_science record @s ~ ~ ~ 1000 1 1
execute if score music music matches 23 if score music musictime matches 0 as @a at @s run playsound minecraft:bd_nonexistent_reflections record @s ~ ~ ~ 1000 1 1

scoreboard players add music musictime 1
