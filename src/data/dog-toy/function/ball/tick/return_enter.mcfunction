tag @s remove ball.tick_ground
tag @s add ball.tick_return

function dog-toy:ball/tick/return_enter/kill_item with entity @s data
scoreboard players reset @s dog-toy.fetch_ball

execute unless entity @s[tag=ball.had_speed] run effect give @s speed infinite 1
playsound minecraft:entity.fox.bite neutral @a ~ ~ ~ 1 .5
playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 1 .5

function dog-toy:ball/tick/return_tick