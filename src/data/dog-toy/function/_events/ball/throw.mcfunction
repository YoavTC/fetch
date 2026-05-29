advancement revoke @s only dog-toy:_events/ball/on_throw
clear @s minecraft:poisonous_potato[minecraft:custom_data={ball:true}]

execute unless entity @n[type=wolf,distance=..20] run return fail

tag @s add ball.threw

# Iterate over wolves, filter out non-owned, and check if tagged player is the owner
execute positioned as @s as @e[type=wolf,distance=..20,sort=nearest] if data entity @s Owner if function dog-toy:ball/check_wolf run return run function dog-toy:ball/load