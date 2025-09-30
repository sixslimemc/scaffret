#> scaffret:_/tick
#--------------------
# @TICK
#--------------------
schedule function scaffret:_/tick 1t

execute as @e[type=item,tag=!_scaffret.checked,tag=!_] at @s run function scaffret:_/item/check

execute as @e[type=marker,tag=scaffret.marker] at @s run function scaffret:_/marker/main

execute as @a[gamemode=!spectator,scores={_scaffret.break_scaffold=1..}] at @s run function scaffret:_/player/break_scaffold