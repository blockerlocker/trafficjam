scoreboard players operation #display_time trafficjam = #timer trafficjam

scoreboard players operation #minutes trafficjam = #display_time trafficjam
scoreboard players set #1200 trafficjam 1200
execute store result storage trafficjam:temp all.minutes int 1 run scoreboard players operation #minutes trafficjam /= #1200 trafficjam

scoreboard players operation #subtract trafficjam = #minutes trafficjam
scoreboard players operation #subtract trafficjam *= #1200 trafficjam
scoreboard players operation #display_time trafficjam -= #subtract trafficjam

scoreboard players operation #seconds trafficjam = #display_time trafficjam
scoreboard players set #20 trafficjam 20
execute store result storage trafficjam:temp all.seconds int 1 run scoreboard players operation #seconds trafficjam /= #20 trafficjam

scoreboard players operation #subtract trafficjam = #seconds trafficjam
scoreboard players operation #subtract trafficjam *= #20 trafficjam
execute store result storage trafficjam:temp all.ticks int 1 run scoreboard players operation #display_time trafficjam -= #subtract trafficjam

data modify storage trafficjam:temp all.format_number set string storage trafficjam:temp all.minutes
function zzz:trafficjam/actionbar/format_number
data modify storage trafficjam:temp all.minutes set from storage trafficjam:temp all.format_number

data modify storage trafficjam:temp all.format_number set string storage trafficjam:temp all.seconds
function zzz:trafficjam/actionbar/format_number
data modify storage trafficjam:temp all.seconds set from storage trafficjam:temp all.format_number

data modify storage trafficjam:temp all.format_number set string storage trafficjam:temp all.ticks
function zzz:trafficjam/actionbar/format_number
data modify storage trafficjam:temp all.ticks set from storage trafficjam:temp all.format_number

title @p actionbar [{text:"",color:yellow},{text:"Loop ",color:green},{score:{name:"#loop",objective:trafficjam},color:green},{text:": ",color:green},{storage:"trafficjam:temp",nbt:"all.minutes",interpret:true},":",{storage:"trafficjam:temp",nbt:"all.seconds",interpret:true},":",{storage:"trafficjam:temp",nbt:"all.ticks",interpret:true}]