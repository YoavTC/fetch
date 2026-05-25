execute as @n[type=wolf] positioned as @s if entity @p[distance=..2] run return run function dog-toy:ball/tick/return_yield

# Move armor stand to player position
tp @n[type=armor_stand] @p

schedule function dog-toy:ball/tick/return_tick 3t