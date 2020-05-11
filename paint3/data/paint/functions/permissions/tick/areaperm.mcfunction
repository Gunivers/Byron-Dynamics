########## Set "Currentlocation" for new Players ##########
execute as @a[tag=!story1perm,tag=!story2perm,tag=!story3perm,tag=!story4perm,tag=!story5perm,tag=!story6perm] at @s run scoreboard players set @s currentlocation 0
execute as @r unless entity @s[scores={currentlocation=0..}] at @s run scoreboard players set @s currentlocation 0
#Disable gamemode for players without perms
execute as @a[tag=!MapAdmin,tag=!buildperm,gamemode=creative] at @s run gamemode spectator
execute as @a[tag=!MapAdmin,tag=!buildperm,gamemode=survival] at @s run gamemode adventure

########## Anti Locationcheat ##########
execute as @a[tag=!story1perm,scores={currentlocation=1}] at @s run scoreboard players set @s currentlocation 0
execute as @a[tag=!story2perm,scores={currentlocation=2}] at @s run scoreboard players set @s currentlocation 0
execute as @a[tag=!story3perm,scores={currentlocation=3}] at @s run scoreboard players set @s currentlocation 0
execute as @a[tag=!story4perm,scores={currentlocation=4}] at @s run scoreboard players set @s currentlocation 0
execute as @a[tag=!story5perm,scores={currentlocation=5}] at @s run scoreboard players set @s currentlocation 0
execute as @a[tag=!story6perm,scores={currentlocation=6}] at @s run scoreboard players set @s currentlocation 0

########## Asign correct location in the area ##########
execute as @a[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] at @s unless score @s currentlocation matches 0 run scoreboard players set @s currentlocation 0
execute as @a[tag=story1perm,x=-44,y=10,z=-309,dx=140,dy=88,dz=170] at @s unless score @s currentlocation matches 1 run scoreboard players set @s currentlocation 1
execute as @a[tag=story2perm,x=-76,y=10,z=-45,dx=173,dy=88,dz=230] at @s unless score @s currentlocation matches 2 run scoreboard players set @s currentlocation 2
execute as @a[tag=story3perm,x=194,y=10,z=-59,dx=141,dy=88,dz=138] at @s unless score @s currentlocation matches 3 run scoreboard players set @s currentlocation 3
execute as @a[tag=story4perm,x=185,y=10,z=-246,dx=168,dy=88,dz=139] at @s unless score @s currentlocation matches 4 run scoreboard players set @s currentlocation 4
execute as @a[tag=story5perm,x=345,y=10,z=-267,dx=186,dy=88,dz=252] at @s unless score @s currentlocation matches 5 run scoreboard players set @s currentlocation 5
#execute as @a[tag=story6perm,] at @s unless score @s currentlocation matches 6 run scoreboard players set @s currentlocation 6


########## Check for Outbreak ##########
#Lobby
execute as @a[tag=!MapAdmin,tag=!walkfree,scores={currentlocation=0}] at @s unless entity @s[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] run tag @s add PermOutbreak
execute as @a[tag=!MapAdmin,tag=!walkfree,scores={currentlocation=0},tag=PermOutbreak] at @s facing entity @e[tag=lobbycenter,type=armor_stand] feet run tp ^ ^ ^2

#Chaper 1 Test
execute as @a[tag=!MapAdmin,tag=!walkfree,tag=story1perm,scores={currentlocation=1}] at @s unless entity @s[x=-44,y=10,z=-309,dx=140,dy=88,dz=170] run tag @s add PermOutbreak
execute as @a[tag=!MapAdmin,tag=!walkfree,tag=story1perm,scores={currentlocation=1},tag=PermOutbreak] at @s facing entity @e[tag=story1center,type=armor_stand] feet run tp ^ ^ ^2

#Chaper 2 Test
execute as @a[tag=!MapAdmin,tag=!walkfree,tag=story2perm,scores={currentlocation=2}] at @s unless entity @s[x=-76,y=10,z=-45,dx=173,dy=88,dz=230] run tag @s add PermOutbreak
execute as @a[tag=!MapAdmin,tag=!walkfree,tag=story2perm,scores={currentlocation=2},tag=PermOutbreak] at @s facing entity @e[tag=story2center,type=armor_stand] feet run tp ^ ^ ^2

#Chaper 3 Test
execute as @a[tag=!MapAdmin,tag=!walkfree,tag=story3perm,scores={currentlocation=3}] at @s unless entity @s[x=194,y=10,z=-59,dx=141,dy=88,dz=138] run tag @s add PermOutbreak
execute as @a[tag=!MapAdmin,tag=!walkfree,tag=story3perm,scores={currentlocation=3},tag=PermOutbreak] at @s facing entity @e[tag=story3center,type=armor_stand] feet run tp ^ ^ ^2

#Chaper 4 Test
execute as @a[tag=!MapAdmin,tag=!walkfree,tag=story4perm,scores={currentlocation=4}] at @s unless entity @s[x=185,y=10,z=-246,dx=168,dy=88,dz=139] run tag @s add PermOutbreak
execute as @a[tag=!MapAdmin,tag=!walkfree,tag=story4perm,scores={currentlocation=4},tag=PermOutbreak] at @s facing entity @e[tag=story4center,type=armor_stand] feet run tp ^ ^ ^2

#Chaper 5 Test
execute as @a[tag=!MapAdmin,tag=!walkfree,tag=story5perm,scores={currentlocation=5}] at @s unless entity @s[x=345,y=10,z=-267,dx=186,dy=88,dz=252] run tag @s add PermOutbreak
execute as @a[tag=!MapAdmin,tag=!walkfree,tag=story5perm,scores={currentlocation=5},tag=PermOutbreak] at @s facing entity @e[tag=story5center,type=armor_stand] feet run tp ^ ^ ^2

#Blindness effect and Actionbar text
execute as @a[tag=PermOutbreak] at @s run title @s actionbar {"text":"You don't have the permissions to leave this area!","color":"gray","italic":"true"}
execute as @a[tag=PermOutbreak] at @s run effect give @s minecraft:blindness 2 0 true

execute as @a[scores={currentlocation=7..}] at @s run scoreboard players set @s currentlocation 0
execute as @a[tag=PermOutbreak] at @s run tag @s remove PermOutbreak
