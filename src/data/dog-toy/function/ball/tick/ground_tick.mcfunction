# Re-execute the function as the wolf entity
execute unless entity @s[type=wolf] as @e[type=wolf,tag=ball.active,tag=ball.tick_ground] positioned as @s run return run function dog-toy:ball/tick/ground_tick

# Check if ball still exists
execute store success score $ball_alive dog-toy.fetch_ball run function dog-toy:ball/tick/ground_tick/check_ball with entity @s data
execute if score $ball_alive dog-toy.fetch_ball matches 0 run return run function dog-toy:ball/unload with entity @s

# Check if wolf caught ball
execute if function dog-toy:ball/tick/ground_tick/check_caught run return run function dog-toy:ball/tick/return_enter

# Move bat (just in case snowball moved after landing)
function dog-toy:ball/tick/ground_tick/move_bat with entity @s data

# Re-apply aggro to iron golem
# data modify entity @n[type=iron_golem] angry_at set from entity @n[type=bat] UUID
function dog-toy:ball/tick/ground_tick/set_aggro with entity @s data

scoreboard players add @s dog-toy.fetch_ball 1
execute if score @s dog-toy.fetch_ball >= $seek_timeout dog-toy.fetch_ball run return run function dog-toy:ball/ball_timeout

# Lower delay = wolf has higher accuracy when updating AI to the ball item's position
schedule function dog-toy:ball/tick/ground_tick 10t