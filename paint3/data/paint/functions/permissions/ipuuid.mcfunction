#Get IPUUID
execute if score Player IPUUID matches 0 run scoreboard players set Player IPUUID 1
execute as @a unless entity @s[scores={IPUUID=0..}] run scoreboard players set @s IPUUID 0
execute as @r[scores={IPUUID=0}] at @s run tag @s add UUID0
execute as @r[tag=UUID0] at @s run scoreboard players operation @s IPUUID = Player IPUUID
execute as @r[tag=UUID0] at @s run scoreboard players add Player IPUUID 1
execute as @r[tag=UUID0] at @s run tag @s remove UUID0

execute as @a[team=!P1,scores={IPUUID=1}] at @s run team join P1
execute as @a[team=!P2,scores={IPUUID=2}] at @s run team join P2
execute as @a[team=!P3,scores={IPUUID=3}] at @s run team join P3
execute as @a[team=!P4,scores={IPUUID=4}] at @s run team join P4
