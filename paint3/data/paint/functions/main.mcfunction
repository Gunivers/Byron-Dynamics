#blocks
#execute as @a[gamemode=adventure] at @s run function paint:player/trapdoors

execute as @a[scores={relog=1..}] run function paint:setup
scoreboard players set @a[scores={relog=1..}] relog 0

function paint:player/particles
function paint:player/interface
function paint:player/respawn
function paint:ticks/animations

function paint:block/blue
function paint:block/yellow
function paint:block/green
function paint:block/red

function paint:mechanics/smartspawn
function paint:mechanics/smartcubespawn

function paint:mechanics/painter
function paint:mechanics/door
function paint:mechanics/fizzler_door
function paint:mechanics/door_lock
function paint:mechanics/fizzler_door_lock
function paint:mechanics/transmitter

function paint:mechanics/tubes

function paint:mechanics/cube_spawner
function paint:mechanics/decorational


function paint:level/events/timer
function paint:level/rooms/level_selector
execute as @r if score music music matches 1.. run function paint:mechanics/musicloop
execute as @e[tag=helperbot,limit=1] run function paint:enemy/helperbot/main
//execute as @r[tag=!server] run function paint:permissions/main
execute as @e[tag=turret,limit=1] run function paint:enemy/turret/main
execute as @e[tag=spawnturret] at @s run function paint:box/turret
execute as @e[tag=turretlock,tag=!setup] run function paint:box/turretlock
execute as @e[tag=turretlock,tag=setup] at @s unless block ~ ~ ~ redstone_lamp run kill @s

execute as @e[tag=helperstill,tag=lobby] run data merge entity @s {CustomNameVisible:1b,CustomName:'{}'}

execute as @a[gamemode=adventure] at @s run function paint:player/nofall


function paint:gun/pots
function paint:gun/bucket

execute as @e[tag=!setup,tag=spread,tag=canvas] at @s run function paint:gun/spread_canvas
execute as @e[tag=!setup,tag=spread,tag=solid_dark] at @s run function paint:gun/spread_solid
execute as @e[tag=!setup,tag=spread,tag=solid_light] at @s run function paint:gun/spread_solid
execute as @e[tag=!setup,tag=spread,tag=solid_gray] at @s run function paint:gun/spread_solid

execute as @a[tag=!portalmode] at @s anchored eyes run function paint:gun/main
execute as @a at @s anchored eyes run function paint:gun/portal
execute as @e[type=area_effect_cloud,tag=paint] at @s run function paint:gun/collision
execute as @e[type=area_effect_cloud,tag=portal] at @s run function paint:gun/collision

function paint:mechanics/cubes
function paint:mechanics/colored_cubes

#execute if entity @e[tag=cleaner,limit=1] as @e[tag=cleaner] at @s run function paint:enemy/cleaner
#execute if entity @e[tag=cleaner,limit=1] as @e[tag=cleaner] at @s run function paint:enemy/movement

#execute as @a[gamemode=adventure] at @s if entity @e[tag=turret,distance=..24] run function paint:enemy/turret
#function paint:enemy/turret_spotting


execute as @a[gamemode=creative] run function paint:menu
execute as @a[gamemode=creative,scores={sneak=0},tag=!cube] if entity @s[nbt={Inventory:[{Slot:-106b}]}] as @a[limit=1] run function paint:smartswitch
execute as @a[gamemode=creative,scores={sneak=1},tag=!cube] if entity @s[nbt={Inventory:[{Slot:-106b}]}] as @a[limit=1] run function paint:sneakmixing
replaceitem entity @a[tag=SmartswitchDone,scores={sneak=0},nbt=!{Inventory:[{Slot:-106b,id:"air"}]},tag=!cube] weapon.offhand air
execute as @a[tag=SmartswitchDone,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}},nbt=!{SelectedItem:{id:"mincraft:air"}},scores={sneak=1}] run replaceitem entity @s weapon.offhand air
replaceitem entity @a[gamemode=creative,nbt={SelectedItemSlot:0,OnGround:1b},tag=!cube,scores={killstand=1..}] weapon.offhand minecraft:armor_stand{display:{Name:"{\"text\":\"Killstand\",\"color\":\"red\"}"},EntityTag:{NoGravity:1b,Marker:1b,Invisible:1b,Tags:["killstand"]}}
tag @a[tag=SmartswitchDone] remove SmartswitchDone


kill @e[type=item]

execute as @e[tag=turret,limit=1] run function paint:enemy/turret/hearing

#killing and resetting things
scoreboard players set @a[scores={sneak=1..}] sneak 0
scoreboard players reset @a[scores={walk=1..}] walk
scoreboard players reset @a[scores={sprint=1..}] sprint
scoreboard players set @a[scores={killstand=1..}] killstand 0
scoreboard players set @a[scores={jump=1..}] jump 0

scoreboard players reset @a[scores={success=1..}] success

scoreboard players add @e[type=arrow] life 1
kill @e[type=arrow,nbt={inBlockState:{}}]
kill @e[type=arrow,scores={life=40..}]

scoreboard players reset @a[scores={shoot=1..}] shoot
effect give @a[gamemode=adventure] minecraft:saturation 1 10 true
effect give @a[gamemode=adventure] minecraft:resistance 1 10 true
effect give @a[gamemode=adventure] minecraft:instant_health 1 10 true

kill @e[y=-100,dy=99,type=!player]

scoreboard players reset @a[scores={place=1..}] place
