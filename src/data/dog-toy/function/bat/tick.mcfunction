particle heart ~ ~2 ~

# Always executes when not passenger!

# If unclaimed, kill
execute if entity @s[tag=dog-toy.unclaimed_bat] run return run function dog-toy:bat/unload

# If claimed and stationary (i.e: was already sitting on item but item now gone), kill
execute if entity @s[tag=dog-toy.stationary_bat] run return run function dog-toy:bat/unload

# Move bat to sit on item
summon item ~ ~1 ~ {Item:{id:"poisonous_potato"},Tags:["dog-toy.item_temp"]}
ride @s mount @n[type=item,tag=dog-toy.item_temp]
data merge entity @n[type=item,tag=dog-toy.item_temp] {Tags:["dog-toy.item"]}
tag @s add dog-toy.stationary_bat