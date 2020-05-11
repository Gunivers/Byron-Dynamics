# ---- called to add all the tags and scores to the train and start it
scoreboard players set @s train_travel 0
scoreboard players set @s train_step 0

data merge entity @s {NoGravity:1,Tags:["train"],Invenreable:1,Marker:1}
