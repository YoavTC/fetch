# Always executes when not passenger!

# If unclaimed, kill
execute if entity @s[tag=dog-toy.unclaimed_bat] run return run function dog-toy:bat/unload

# If claimed and stationary (i.e: was already sitting on item but item now gone), kill
execute if entity @s[tag=dog-toy.stationary_bat] run return run function dog-toy:bat/unload

# Move bat to sit on item
summon item ~ ~-1 ~ {Item:{id:"snowball"},Tags:["dog-toy.item_temp"],Motion:[0,0.2,0],PickupDelay:20}
execute on vehicle run ride @s mount @n[type=item,tag=dog-toy.item_temp]
data modify entity @n[type=item,tag=dog-toy.item_temp] Item.components set value {"minecraft:use_remainder":{"id":"minecraft:poisonous_potato","count":1,"components":{"minecraft:custom_data":{"ball":true},"minecraft:item_model":"heart_of_the_sea","!minecraft:consumable":{}}},"minecraft:use_cooldown":{"seconds":2,"cooldown_group":"dogtoy"},"minecraft:custom_data":"{dog-toy.ball:1b}","minecraft:max_stack_size":1,"minecraft:item_model":"heart_of_the_sea","minecraft:custom_name":{"text":"Dog Toy","color":"aqua","italic":false}}
data merge entity @n[type=item,tag=dog-toy.item_temp] {Tags:["dog-toy.item"]}
tag @s add dog-toy.stationary_bat
function dog-toy:fx/ball_land