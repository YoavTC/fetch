# Exit when snowball hits blocks (start ground tick)
execute unless entity @n[type=snowball] run return run function dog-toy:ball/tick/ground_tick

# Re-apply aggro to iron golem
data modify entity @n[type=iron_golem] angry_at set from entity @n[type=armor_stand] UUID

# Move armor stand
execute as @n[type=armor_stand] run tp @s @n[type=snowball]

# Schedule next tick
schedule function dog-toy:ball/tick/air_tick 1t