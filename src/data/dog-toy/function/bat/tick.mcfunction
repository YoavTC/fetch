# Always executes when not passenger!

# If unclaimed, kill
execute if entity @s[tag=dog-toy.unclaimed_bat] run return run function dog-toy:bat/unload

# If claimed and stationary (i.e: was already sitting on item but item now gone), kill
execute if entity @s[tag=dog-toy.stationary_bat] run return run function dog-toy:bat/unload

# Move bat to sit on item
function dog-toy:item/drop_item
execute on vehicle run ride @s mount @n[type=item,tag=dog-toy.item_temp]
data merge entity @n[type=item,tag=dog-toy.item_temp] {Tags:["dog-toy.item"]}
tag @s add dog-toy.stationary_bat
function dog-toy:fx/ball_land