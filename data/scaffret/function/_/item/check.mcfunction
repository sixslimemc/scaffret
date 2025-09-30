#> scaffret:_/item/check
#--------------------
# _/tick
#--------------------
tag @s add _scaffret.checked

execute unless items entity @s container.0 minecraft:scaffolding run return 0

execute unless data entity @s {PickupDelay:9s} run return 0

scoreboard players set *new_id _scaffret -1
execute as @n[type=marker,tag=scaffret.marker,distance=0..32] run scoreboard players operation *x _scaffret = @s scaffret.linked_player
execute if score *new_id _scaffret matches -1 as @p[gamemode=!spectator,distance=0..64] run scoreboard players operation *new_id _scaffret = @s pdata.index
execute if score *new_id _scaffret matches -1 run return 0

