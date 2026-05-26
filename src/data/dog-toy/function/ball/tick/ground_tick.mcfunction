# Check if ball still exists
execute unless entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{"ball":true}}}}] run return run function dog-toy:ball/unload

# Need to also kill snowball entity
execute positioned as @n[type=bat] if entity @n[type=wolf,distance=..2] run return run function dog-toy:ball/tick/return_enter

# Move armor stand (just in case snowball moved after landing)
execute as @n[type=bat] run tp @s @n[type=item]

# Re-apply aggro to iron golem
data modify entity @n[type=iron_golem] angry_at set from entity @n[type=bat] UUID

execute as @n[type=wolf] run scoreboard players add @s dog-toy.fetch_ball 1
execute as @n[type=wolf] if score @s dog-toy.fetch_ball >= $seek_timeout dog-toy.fetch_ball run return run function dog-toy:ball/ball_timeout

# Schedule next tick
schedule function dog-toy:ball/tick/ground_tick 5t