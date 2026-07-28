scoreboard players remove #round_start trafficjam 1

title @p title ""
title @p times 0 3s 0.5s

execute if score #round_start trafficjam matches 100 run title @p subtitle {text:"5",color:green}
execute if score #round_start trafficjam matches 100 as @p at @s run playsound block.note_block.pling ui @s
execute if score #round_start trafficjam matches 80 run title @p subtitle {text:"4",color:green}
execute if score #round_start trafficjam matches 80 as @p at @s run playsound block.note_block.pling ui @s
execute if score #round_start trafficjam matches 60 run title @p subtitle {text:"3",color:green}
execute if score #round_start trafficjam matches 60 as @p at @s run playsound block.note_block.pling ui @s
execute if score #round_start trafficjam matches 40 run title @p subtitle {text:"2",color:green}
execute if score #round_start trafficjam matches 40 as @p at @s run playsound block.note_block.pling ui @s
execute if score #round_start trafficjam matches 20 run title @p subtitle {text:"1",color:green}
execute if score #round_start trafficjam matches 20 as @p at @s run playsound block.note_block.pling ui @s
execute if score #round_start trafficjam matches 1.. run return fail

attribute @p movement_speed modifier remove trafficjam:immobile
attribute @p jump_strength modifier remove trafficjam:immobile

execute if score #loop trafficjam matches 1.. run function zzz:trafficjam/mannequin/summon/main

function zzz:trafficjam/goal/pick_random

data modify storage trafficjam:temp all.start_title.text set from entity @n[type=marker,tag=trafficjam_current_goal] CustomName
data modify storage trafficjam:temp all.start_title.color set from entity @n[type=marker,tag=trafficjam_current_goal] data.color

title @a subtitle {storage:"trafficjam:temp",nbt:"all.start_title",interpret:true}

data remove storage trafficjam:temp all

execute as @p at @s run playsound block.note_block.pling ui @s ~ ~ ~ 1 2

scoreboard players set #tick trafficjam 0
scoreboard players add #loop trafficjam 1

data modify storage trafficjam:state all.round_start set value false
data modify storage trafficjam:state all.looping set value true