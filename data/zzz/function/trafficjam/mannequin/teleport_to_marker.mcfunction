$tp @s @n[type=marker,tag=trafficjam_marker,scores={trafficjam=$(current_tick)},nbt={data:{loop:$(mannequin_loop)}}]

execute unless data entity @s {pose:standing} run data modify entity @s pose set value standing
$execute if data entity @n[type=marker,tag=trafficjam_marker,scores={trafficjam=$(current_tick)},nbt={data:{loop:$(mannequin_loop)}}] data{sneak:true} run data modify entity @s pose set value crouching