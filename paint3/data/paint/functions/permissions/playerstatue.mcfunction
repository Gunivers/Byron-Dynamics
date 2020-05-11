#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------SUMMONER------------------#
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{}}],Tags:["cryoPlayer"],Rotation:[-90F,0F]}
execute align xyz positioned ~0.5 ~ ~0.5 run loot spawn ~ ~ ~ loot paint:uuidtest
execute align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[type=armor_stand,limit=1,sort=nearest,distance=0] ArmorItems[3].tag set from entity @e[type=item,distance=0,limit=1,sort=nearest] Item.tag
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[type=item,distance=0,limit=1]
replaceitem entity @e[tag=cryoPlayer] armor.chest minecraft:iron_chestplate
replaceitem entity @e[tag=cryoPlayer] armor.legs minecraft:iron_leggings
replaceitem entity @e[tag=cryoPlayer] armor.feet minecraft:iron_boots
#------------------------------------------#
