function trafficjam:goal/delete/white

execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:[trafficjam,trafficjam_goal,trafficjam_white_goal],CustomName:"White Goal",data:{color:"#F0F0F0"}}
setblock ~ ~ ~ white_concrete