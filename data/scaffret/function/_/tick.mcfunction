#> scaffret:_/tick
#--------------------
# @TICK
#--------------------
schedule function scaffret:_/tick 1t

execute as @e[type=item,tag=!_scaffret.checked,tag=!_] run function scaffret:_/item/check

execute as @e[type=marker,tag=scaffret.marker] at @s run function scaffret:_/marker/main
