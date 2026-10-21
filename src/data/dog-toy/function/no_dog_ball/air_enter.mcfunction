# Server-level loop: tick every temp marker independently
execute as @e[type=marker,tag=ball.temp] at @s run function dog-toy:no_dog_ball/track
execute if entity @e[type=marker,tag=ball.temp] run schedule function dog-toy:no_dog_ball/air_enter 1t
