execute as @a at @s run tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"-------------------------------------------","color":"dark_gray"},{"text":"\n"},{"text":"Successfully Loaded Byron Dynamics Server Edition!","color":"aqua"},{"text":"\n"},{"text":"Only for Alpha and Beta Testers!","color":"gold"}]

execute as @a at @s run tellraw @s ["",{"text":"\n"},{"text":"Custom Map Commands:","color":"aqua"},{"text":"\n"},{"text":"/trigger menu","color":"gold","clickEvent":{"action":"run_command","value":"/trigger menu"},"hoverEvent":{"action":"show_text","value":{"text":"Click here!","bold":true,"color":"gold"}}},{"text":"\n","color":"gold"},{"text":"/trigger help","color":"gold","clickEvent":{"action":"run_command","value":"/trigger help"},"hoverEvent":{"action":"show_text","value":{"text":"Click here!","bold":true,"color":"gold"}}},{"text":" (Currently Not Working!)","italic":true,"color":"dark_gray"}]

#scoreboard players set Player IPUUID 0
#scoreboard players reset * IPUUID
#tag @a remove P1
#tag @a remove p1
#tag @a remove P2
#tag @a remove p2
#tag @a remove P3
#tag @a remove p3
#tag @a remove P4
#tag @a remove p4
#team leave @a

scoreboard players set @a menu 0
scoreboard players set @a help 0


#Location Stands
kill @e[type=armor_stand,tag=locationstand]
kill @e[type=armor_stand,tag=lobbystand]
summon minecraft:armor_stand -15 49 -89 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistanceRequired:1b,Marker:1b,Tags:["lobbycenter","locationstand"],DisabledSlots:4144959}
summon minecraft:armor_stand 0 49 -176 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistanceRequired:1b,Marker:1b,Tags:["story1center","locationstand"],DisabledSlots:4144959}
summon minecraft:armor_stand 0 49 0 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistanceRequired:1b,Marker:1b,Tags:["story2center","locationstand"],DisabledSlots:4144959}
summon minecraft:armor_stand 238 49 42 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistanceRequired:1b,Marker:1b,Tags:["story3center","locationstand"],DisabledSlots:4144959}
summon minecraft:armor_stand 210 49 -168 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistanceRequired:1b,Marker:1b,Tags:["story4center","locationstand"],DisabledSlots:4144959}
summon minecraft:armor_stand 414 49 -152 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistanceRequired:1b,Marker:1b,Tags:["story5center","locationstand"],DisabledSlots:4144959}

#scoreboard
scoreboard objectives add currentlocation dummy
scoreboard objectives add IPUUID dummy
scoreboard objectives add menu trigger
scoreboard objectives add help trigger

execute as @a[scores={relog=1..}] at @s run function paint:permissions/server/lobby
