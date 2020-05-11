execute as @s[tag=!botsoundmeh,tag=angry] at @s run playsound minecraft:cube.meh ambient @a ~ ~ ~ 20 0.7
execute as @s[tag=!botsoundmeh,tag=angry] at @s run tag @s add botsoundmeh
execute as @s[tag=botsoundmeh,tag=!angry] at @s run tag @s remove botsoundmeh

#execute as @s[tag=!botsoundproud,tag=detectedrail] at @s if block ~ ~-10 ~ observer run playsound minecraft:cube.proud ambient @a ~ ~ ~ 20 0.7
#execute as @s[tag=!botsoundproud,tag=detectedrail] at @s if block ~ ~-10 ~ observer run tag @s add botsoundproud
#execute as @s[tag=botsoundproud,tag=angry] at @s run tag @s remove botsoundproud

execute as @s[tag=!angry,tag=!botsoundhappy] at @s if block ~ ~-11 ~ minecraft:observer run playsound minecraft:cube.happy ambient @a ~ ~ ~ 20 0.4
execute as @s[tag=!angry,tag=!botsoundhappy] at @s if block ~ ~-11 ~ minecraft:observer run tag @s add botsoundhappy
execute as @s[tag=angry,tag=botsoundhappy] at @s unless block ~ ~-11 ~ minecraft:observer run tag @s remove botsoundhappy
