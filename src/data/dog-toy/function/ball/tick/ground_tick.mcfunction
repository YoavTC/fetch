# Check if ball still exists
execute unless entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{"ball":true}}}}] run return run function dog-toy:ball/delete

# Need to also kill snowball entity
execute positioned as @n[type=bat] if entity @n[type=wolf,distance=..2] run return run function dog-toy:ball/tick/return_enter

# Move armor stand (just in case snowball moved after landing)
execute as @n[type=bat] run tp @s @n[type=item]

# Re-apply aggro to iron golem
data modify entity @n[type=iron_golem] angry_at set from entity @n[type=bat] UUID

# Schedule next tick
schedule function dog-toy:ball/tick/ground_tick 5t