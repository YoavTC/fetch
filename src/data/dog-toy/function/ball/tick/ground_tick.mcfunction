# Need to also kill snowball entity
execute positioned as @n[type=bat] if entity @n[type=wolf,distance=..2] run return run function dog-toy:ball/tick/return_enter

# Re-apply aggro to iron golem
data modify entity @n[type=iron_golem] angry_at set from entity @n[type=bat] UUID

# Schedule next tick
schedule function dog-toy:ball/tick/ground_tick 5t