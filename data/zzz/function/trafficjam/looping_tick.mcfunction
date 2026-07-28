execute if score #timer trafficjam matches 1.. run scoreboard players remove #timer trafficjam 1

execute if score #timer trafficjam matches 0 as @p at @s run function zzz:trafficjam/game/round_lost

scoreboard players add #tick trafficjam 1

execute as @p at @s run function zzz:trafficjam/player/tick

execute as @e[type=mannequin,tag=trafficjam_mannequin] run function zzz:trafficjam/mannequin/tick