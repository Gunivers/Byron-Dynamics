#Searching for the right archive box to put the letter in.
execute as @e[tag=archive_bot,tag=archive_searching] at @s if block ~ ~-2 ~ acacia_wood run function paint:enemy/archivebot/random

#Follow the track in searching mode.
execute as @e[tag=archive_bot,tag=archive_searching] at @s if block ~ ~-2 ~ observer[facing=south] run tp @s ~ ~ ~ 180 ~
execute as @e[tag=archive_bot,tag=archive_searching] at @s if block ~ ~-2 ~ observer[facing=west] run tp @s ~ ~ ~ 270 ~
execute as @e[tag=archive_bot,tag=archive_searching] at @s if block ~ ~-2 ~ observer[facing=north] run tp @s ~ ~ ~ 0 ~
execute as @e[tag=archive_bot,tag=archive_searching] at @s if block ~ ~-2 ~ observer[facing=east] run tp @s ~ ~ ~ 90 ~

#Walking...
execute as @e[tag=archive_bot,tag=archive_searching] at @s run tp ^ ^ ^0.2
