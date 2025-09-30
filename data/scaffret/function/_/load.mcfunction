#> scaffret:_/load
#--------------------
# @LOAD
#--------------------

scoreboard objectives add scaffret.linked_player dummy
scoreboard objectives add scaffret.timer dummy

scoreboard objectives add _scaffret dummy

scoreboard objectives add _scaffret.break_scaffold minecraft.mined:minecraft.scaffolding

execute unless score *init _scaffret matches 1 run function scaffret:_/init
scoreboard players set *init _scaffret 1
