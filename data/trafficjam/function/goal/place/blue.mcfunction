function trafficjam:goal/delete/blue

execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:[trafficjam,trafficjam_goal,trafficjam_blue_goal],CustomName:"Blue Goal",data:{color:"#253192"}}
setblock ~ ~ ~ blue_concrete