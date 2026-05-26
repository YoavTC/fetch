advancement revoke @s only dog-toy:_events/on_throw
clear @s minecraft:poisonous_potato[minecraft:custom_data={ball:true}]

execute unless entity @n[type=wolf,distance=..20] run return fail

function dog-toy:ball/load