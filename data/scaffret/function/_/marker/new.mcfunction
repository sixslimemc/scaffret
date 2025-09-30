#> scaffret:_/marker/new
#--------------------
# 
#--------------------

tag @s add scaffret.marker

data merge entity @s {CustomName:"scaffret: scaffolding marker"}

scoreboard players operation @s scaffret.linked_player = *new_id _scaffret
scoreboard players set @s scaffret.timer 5