execute as @s at @s unless entity @s[tag=story1perm,tag=story2perm,tag=story3perm,tag=story4perm,tag=story5perm,tag=story6perm,tag=MapAdmin,tag=walkfree] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
execute as @s[tag=story1perm] at @s run tellraw @s ["",{"text":"First Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3001"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Black)","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3001"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=story2perm] at @s run tellraw @s ["",{"text":"Second Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3002"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Tutorial)","color":"gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3002"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=story3perm] at @s run tellraw @s ["",{"text":"Third Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3003"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Black decayed)","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3003"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=story4perm] at @s run tellraw @s ["",{"text":"Fourth Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3004"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Syrons Level)","color":"gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3004"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=story5perm] at @s run tellraw @s ["",{"text":"Fith Chapter ","color":"aqua"},{"text":"(Syrons Story)","color":"dark_gray"}]
execute as @s[tag=story6perm] at @s run tellraw @s ["",{"text":"Sixth Chapter ","color":"aqua"},{"text":"(END)","color":"gold"}]

execute as @s[tag=MapAdmin,tag=!story1perm] at @s run tellraw @s ["",{"text":"First Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3001"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Black)","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3001"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=MapAdmin,tag=!story2perm] at @s run tellraw @s ["",{"text":"Second Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3002"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Tutorial)","color":"gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3002"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=MapAdmin,tag=!story3perm] at @s run tellraw @s ["",{"text":"Third Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3003"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Black decayed)","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3003"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=MapAdmin,tag=!story4perm] at @s run tellraw @s ["",{"text":"Fourth Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3004"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Syrons Level)","color":"gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3004"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=MapAdmin,tag=!story5perm] at @s run tellraw @s ["",{"text":"Fith Chapter ","color":"aqua"},{"text":"(Syrons Story)","color":"dark_gray"}]
execute as @s[tag=MapAdmin,tag=!story6perm] at @s run tellraw @s ["",{"text":"Sixth Chapter ","color":"aqua"},{"text":"(END)","color":"gold"}]

execute as @s[tag=walkfree,tag=!story1perm] at @s run tellraw @s ["",{"text":"First Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3001"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Black)","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3001"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=walkfree,tag=!story2perm] at @s run tellraw @s ["",{"text":"Second Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3002"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Tutorial)","color":"gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3002"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=walkfree,tag=!story3perm] at @s run tellraw @s ["",{"text":"Third Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3003"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Black decayed)","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3003"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=walkfree,tag=!story4perm] at @s run tellraw @s ["",{"text":"Fourth Chapter ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger menu set 3004"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}},{"text":"(Syrons Level)","color":"gray","clickEvent":{"action":"run_command","value":"/trigger menu set 3004"},"hoverEvent":{"action":"show_text","value":"Click to Teleport."}}]
execute as @s[tag=walkfree,tag=!story5perm] at @s run tellraw @s ["",{"text":"Fith Chapter ","color":"aqua"},{"text":"(Syrons Story)","color":"dark_gray"}]
execute as @s[tag=walkfree,tag=!story6perm] at @s run tellraw @s ["",{"text":"Sixth Chapter ","color":"aqua"},{"text":"(END)","color":"gold"}]
