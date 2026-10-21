# Runs as the new marker
tag @s add ball.temp
scoreboard players operation @s dog-toy.fetch_ball = $next_id dog-toy.fetch_ball
schedule function dog-toy:no_dog_ball/air_enter 1t
