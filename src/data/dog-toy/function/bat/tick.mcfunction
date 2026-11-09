# Always executes when not passenger!

# If unclaimed, kill
execute if entity @s[tag=fetch.unclaimed_bat] run return run function fetch:bat/unload

# If claimed and stationary (i.e: was already sitting on item but item now gone), kill
execute if entity @s[tag=fetch.stationary_bat] run return run function fetch:bat/unload

# Move bat to sit on item
function fetch:item/drop_item
execute on vehicle run ride @s mount @n[type=item,tag=fetch.item_temp]
data merge entity @n[type=item,tag=fetch.item_temp] {Tags:["fetch.item"]}
tag @s add fetch.stationary_bat
function fetch:fx/ball_land