#Caller
function paint:permissions/tick/alpha1
function paint:permissions/tick/areaperm
#function paint:permissions/ipuuid
execute as @a[gamemode=survival] run gamemode adventure @s
execute as @r[scores={menu=1..}] at @s run function paint:permissions/trigger

scoreboard players enable @a menu
