# Re-execute the function as the wolf entity
execute unless entity @s[type=wolf] as @e[type=wolf,tag=ball.active,tag=ball.tick_air] positioned as @s run return run function dog-toy:ball/tick/air_tick

# Exit when snowball hits blocks (start ground tick)
execute store success score $air_alive dog-toy.fetch_ball run function dog-toy:ball/tick/air_tick/check_ball with entity @s data
execute if score $air_alive dog-toy.fetch_ball matches 0 run return run function dog-toy:ball/tick/ground_enter with entity @s data

# Re-apply aggro to iron golem
function dog-toy:ball/tick/air_tick/set_aggro with entity @s data

# Move armor stand
function dog-toy:ball/tick/air_tick/move_bat with entity @s data

scoreboard players add @s dog-toy.fetch_ball 1
execute if score @s dog-toy.fetch_ball >= $seek_timeout dog-toy.fetch_ball run return run function dog-toy:ball/ball_timeout

# Lower delay = wolf has higher accuracy when updating AI to the ball item's position
schedule function dog-toy:ball/tick/air_tick 2t