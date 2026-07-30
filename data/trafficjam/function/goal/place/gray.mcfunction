function trafficjam:goal/delete/gray

execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:[trafficjam,trafficjam_goal,trafficjam_gray_goal],CustomName:"Gray Goal",data:{color:"#ABABAB"}}
setblock ~ ~ ~ light_gray_concrete