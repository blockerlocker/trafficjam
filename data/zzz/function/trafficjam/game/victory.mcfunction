title @s title ""
title @s subtitle {text:"You Win!",color:yellow}

execute as @p at @s run playsound entity.player.levelup
execute as @p at @s anchored eyes run particle firework ^ ^-0.25 ^ 0 0 0 0.2 100

data merge storage trafficjam:state {all:{game_over:true}}