tag @s add dog-toy.reached_bat
scoreboard players reset @s dog-toy.timeout
effect clear @s speed
effect give @s speed infinite 0 true
data modify entity @s data.dog-toy.model set from entity @n[type=item,tag=dog-toy.item] Item.components.minecraft:item_model
kill @n[type=item,tag=dog-toy.item]

function dog-toy:fx/reach_ball