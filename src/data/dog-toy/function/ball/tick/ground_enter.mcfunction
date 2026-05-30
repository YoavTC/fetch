tag @s remove ball.tick_air
tag @s add ball.tick_ground
scoreboard players reset @s dog-toy.fetch_ball
$execute positioned as @n[type=bat,nbt={UUID:$(bat)}] run function dog-toy:ball/item/spawn
function dog-toy:ball/tick/ground_tick