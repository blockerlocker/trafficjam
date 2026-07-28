function zzz:trafficjam/game/cleanup

execute as @p at @s run function zzz:trafficjam/start/player

scoreboard players set #loop trafficjam 0
execute store result score #mannequin_safety_threshold trafficjam run data get storage trafficjam:settings all.duration
scoreboard players remove #mannequin_safety_threshold trafficjam 50

function zzz:trafficjam/reset/main

data modify storage trafficjam:state all.active set value true