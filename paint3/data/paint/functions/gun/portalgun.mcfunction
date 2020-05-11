execute as @s[tag=!cube,scores={shoot=1..,mode=10}] at @s anchored eyes unless entity @e[tag=cube,type=shulker,tag=sel,distance=..3.5] run summon area_effect_cloud ^ ^ ^0.5 {Duration:20,Tags:["portal","portalblue"]}
execute as @s[tag=!cube,scores={shoot=1..,mode=11}] at @s anchored eyes unless entity @e[tag=cube,type=shulker,tag=sel,distance=..3.5] run summon area_effect_cloud ^ ^ ^0.5 {Duration:20,Tags:["portal","portalorange"]}


#portal projectile setup
execute as @s[scores={shoot=1..}] run teleport @e[limit=1,sort=nearest,type=area_effect_cloud,tag=portal,tag=!setup] @s
execute as @s[scores={shoot=1..}] run scoreboard players set @e[limit=1,sort=nearest,type=area_effect_cloud,tag=portal,tag=!setup] pspeed 50
execute as @s[scores={shoot=1..}] run scoreboard players set @e[limit=1,sort=nearest,type=area_effect_cloud,tag=portal,tag=!setup] bounce 0
execute as @s[scores={shoot=1..}] run teleport @e[limit=1,sort=nearest,type=area_effect_cloud,tag=portal,tag=!setup] ^ ^ ^0.5

#playerspecific portal projectiles (spread update)
execute as @s[scores={shoot=1..},team=P1] at @s run tag @e[type=area_effect_cloud,tag=portal,tag=!setup,sort=nearest,limit=1] add P1
execute as @s[scores={shoot=1..},team=P2] at @s run tag @e[type=area_effect_cloud,tag=portal,tag=!setup,sort=nearest,limit=1] add P2
execute as @s[scores={shoot=1..},team=P3] at @s run tag @e[type=area_effect_cloud,tag=portal,tag=!setup,sort=nearest,limit=1] add P3
execute as @s[scores={shoot=1..},team=P4] at @s run tag @e[type=area_effect_cloud,tag=portal,tag=!setup,sort=nearest,limit=1] add P4

tag @e[type=area_effect_cloud,tag=portal,tag=!setup] add setup

execute as @s[scores={shoot=1..,mode=1..},tag=!cube] unless entity @e[tag=cube,type=shulker,tag=sel,distance=..4.5] run playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 2 1

#particle in front of face when shooting
execute as @s[tag=!cube,tag=!mode5,scores={shoot=1..,mode=10}] at @s anchored eyes run particle minecraft:dust 0 0.7 1 0.6 ^ ^ ^0.5 0.3 0.3 0.3 1 3
execute as @s[tag=!cube,tag=!mode5,scores={shoot=1..,mode=11}] at @s anchored eyes run particle minecraft:dust 1 0.8 0 0.6 ^ ^ ^0.5 0.3 0.3 0.3 1 3



execute as @a[scores={mode=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 2
scoreboard players add @s[scores={mode=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] mode 1

tag @s[tag=!switchportal,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] add switchportal
tag @s[tag=!switchportal,nbt={SelectedItemSlot:0},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] add switchportal
replaceitem entity @s[tag=switchportal] weapon.offhand air

execute as @a[tag=switchportal] run title @s subtitle {"text":"","color":"dark_gray"}

scoreboard players set @s[scores={mode=12..}] mode 10
scoreboard players set @s[tag=!portalmode1,scores={mode=10}] mode 11
scoreboard players set @s[tag=!portalmode2,scores={mode=11..}] mode 10


replaceitem entity @s[tag=!mode5,tag=portalmode1,scores={mode=10}] hotbar.0 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"\",\"color\":\"dark_aqua\",\"italic\":false}"},HideFlags:63,Damage:10,Unbreakable:1}
replaceitem entity @s[tag=!mode5,tag=portalmode2,scores={mode=11}] hotbar.0 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"\",\"color\":\"green\",\"italic\":false}"},HideFlags:63,Damage:11,Unbreakable:1}
tag @s[tag=switchportal] remove switchportal
