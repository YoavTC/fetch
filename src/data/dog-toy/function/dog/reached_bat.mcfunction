tag @s add fetch.reached_bat
scoreboard players reset @s fetch.timeout
effect clear @s speed
effect give @s speed infinite 0 true
data modify entity @s data.fetch.model set from entity @n[type=item,tag=fetch.item] Item.components.minecraft:item_model
kill @n[type=item,tag=fetch.item]

function fetch:fx/reach_ball