#> scaffret:_/item/check
#--------------------
# _/tick
#--------------------
tag @s add _scaffret.checked

execute unless items entity @s container.0 minecraft:scaffolding run return 0

execute store result score *x _scaffret run data get entity @s PickupDelay
execute unless score *x _scaffret matches 9..10 run return 0

# init id:
scoreboard players set *new_id _scaffret -1

# nearest marker:
execute as @n[type=marker,tag=scaffret.marker,distance=0..32] run scoreboard players operation *x _scaffret = @s scaffret.linked_player

# nearest player if no marker:
execute if score *new_id _scaffret matches -1 as @p[gamemode=!spectator,distance=0..64] run scoreboard players operation *new_id _scaffret = @s pdata.index

# return if none found:
execute if score *new_id _scaffret matches -1 run return 0

execute summon marker run function scaffret:_/marker/new

data merge entity @s {PickupDelay:0s, Motion:[0d, 0d, 0d]}

execute store result storage scaffret:_ x.id int 1 run scoreboard players get *new_id _scaffret
function scaffret:_/item/tp with storage scaffret:_ x