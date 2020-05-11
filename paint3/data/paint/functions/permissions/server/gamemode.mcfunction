execute as @s[tag=!buildperm,tag=!MapAdmin,gamemode=adventure] at @s run tag @s add gamemodefina
execute as @s[tag=!buildperm,tag=!MapAdmin,gamemode=adventure,tag=gamemodefina] at @s run gamemode spectator
execute as @s[tag=!buildperm,tag=!MapAdmin,gamemode=spectator,tag=!gamemodefina] at @s run tag @s add gamemodefins
execute as @s[tag=!buildperm,tag=!MapAdmin,gamemode=spectator,tag=gamemodefins,tag=!gamemodefina] at @s run gamemode adventure

execute as @s[tag=MapAdmin,gamemode=adventure] at @s run tag @s add gamemodefina
execute as @s[tag=buildperm,gamemode=adventure] at @s run tag @s add gamemodefina
execute as @s[tag=gamemodefina,tag=buildperm,gamemode=adventure] at @s run gamemode spectator
execute as @s[tag=gamemodefina,tag=MapAdmin,gamemode=adventure] at @s run gamemode spectator

execute as @s[tag=!gamemodefina,tag=MapAdmin,gamemode=creative] at @s run tag @s add gamemodefinc
execute as @s[tag=!gamemodefina,tag=buildperm,gamemode=creative] at @s run tag @s add gamemodefinc
execute as @s[tag=!gamemodefina,tag=gamemodefinc,tag=buildperm,gamemode=creative] at @s run gamemode adventure
execute as @s[tag=!gamemodefina,tag=gamemodefinc,tag=MapAdmin,gamemode=creative] at @s run gamemode adventure

execute as @s[tag=!gamemodefina,tag=!gamemodefinc,tag=MapAdmin,gamemode=spectator] at @s run tag @s add gamemodefins
execute as @s[tag=!gamemodefina,tag=!gamemodefinc,tag=buildperm,gamemode=spectator] at @s run tag @s add gamemodefins
execute as @s[tag=!gamemodefina,tag=!gamemodefinc,tag=gamemodefins,tag=buildperm,gamemode=spectator] at @s run gamemode creative
execute as @s[tag=!gamemodefina,tag=!gamemodefinc,tag=gamemodefins,tag=MapAdmin,gamemode=spectator] at @s run gamemode creative

tag @s remove gamemodefina
tag @s remove gamemodefinc
tag @s remove gamemodefins
