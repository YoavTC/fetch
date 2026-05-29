# Re-execute the function as the wolf entity
execute unless entity @s[type=wolf] as @e[type=wolf,tag=ball.active,tag=ball.tick_return] positioned as @s run return run function dog-toy:ball/tick/return_tick

execute if entity @p[distance=..2] run return run function dog-toy:ball/ball_returned

# Move armor stand to player position
function dog-toy:ball/tick/return_tick/move_bat with entity @s data

scoreboard players add @s dog-toy.fetch_ball 1
execute if score @s dog-toy.fetch_ball >= $return_timeout dog-toy.fetch_ball run return run function dog-toy:ball/ball_timeout

schedule function dog-toy:ball/tick/return_tick 3t