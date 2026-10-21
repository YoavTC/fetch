# Runs as the thrown snowball: give it a unique id and link a marker to it
scoreboard players add $next_id dog-toy.fetch_ball 1
scoreboard players operation @s dog-toy.fetch_ball = $next_id dog-toy.fetch_ball
execute summon marker run function dog-toy:no_dog_ball/init
