title @s title ""
title @s subtitle {text:"You Win!",color:yellow}

execute as @p at @s run playsound entity.player.levelup
execute as @p at @s anchored eyes run particle firework ^ ^-0.25 ^ 0 0 0 0.2 100

execute as @e[type=mannequin,tag=trafficjam_mannequin] run data merge entity @s {immovable:false,Invulnerable:false}

data merge storage trafficjam:state {all:{active:false,looping:false,round_start:false}}