#fizzlerdoorlock
execute as @e[type=armor_stand,tag=fizzlerdoorlock,tag=!setup] at @s run setblock ~ ~ ~ minecraft:redstone_lamp
tag @e[type=armor_stand,tag=fizzlerdoorlock,tag=!setup] add setup

execute as @e[type=armor_stand,tag=fizzlerdoorlock,tag=setup] at @s if block ~ ~ ~ minecraft:redstone_lamp run tag @e[type=armor_stand,tag=fizzlerdoor,limit=1,sort=nearest] add lock
execute as @e[type=armor_stand,tag=fizzlerdoorlock,tag=setup] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=true] run tag @e[type=armor_stand,tag=fizzlerdoor,limit=1,sort=nearest] remove lock
execute as @e[type=armor_stand,tag=fizzlerdoorlock,tag=setup] at @s if block ~ ~ ~ minecraft:air run tag @e[type=armor_stand,tag=fizzlerdoor,limit=1,sort=nearest] remove lock
execute as @e[type=armor_stand,tag=fizzlerdoorlock,tag=setup] at @s if block ~ ~ ~ minecraft:air run kill @s