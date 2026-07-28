tag @s add trafficjam_player_tick

execute summon marker run function zzz:trafficjam/player/summon_marker

execute if predicate {type:entity_properties,entity:this,predicate:{flags:{is_on_ground:true}}} positioned ~ ~-0.05 ~ align xyz positioned ~.5 ~.5 ~.5 if entity @e[type=marker,tag=trafficjam_current_goal,distance=..0.1] run function zzz:trafficjam/goal/reached

execute if score #timer trafficjam <= #mannequin_safety_threshold trafficjam positioned ~-0.3 ~ ~-0.3 if entity @e[type=mannequin,tag=trafficjam_mannequin,dx=0,dy=1,dz=0] positioned ~-0.4 ~-0.2 ~-0.4 if entity @e[type=mannequin,tag=trafficjam_mannequin,dx=0,dy=1,dz=0] run function zzz:trafficjam/game/round_lost

tag @s remove trafficjam_player_tick