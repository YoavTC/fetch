# Re-execute the function as the wolf entity
execute unless entity @s[type=wolf] as @e[type=wolf,tag=ball.active,tag=ball.tick_air] positioned as @s run return run function dog-toy:ball/tick/air_tick

# Exit when snowball hits blocks (start ground tick)
execute unless entity @n[type=snowball] run return run function dog-toy:ball/tick/ground_enter with entity @s data

# Re-apply aggro to iron golem
function dog-toy:ball/tick/air_tick/set_aggro with entity @s data

# Move armor stand
function dog-toy:ball/tick/air_tick/move_bat with entity @s data

# Schedule next tick
schedule function dog-toy:ball/tick/air_tick 1t