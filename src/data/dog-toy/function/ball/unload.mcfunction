say unloading..

$tp @n[type=iron_golem,nbt={data:{wolf:$(UUID)}}] ~ ~-1000 ~
$tp @n[type=bat,nbt={data:{wolf:$(UUID)}}] ~ ~-1000 ~

data remove entity @s data.ig
data remove entity @s data.bat
tag @s remove ball.active

scoreboard players reset @s dog-toy.fetch_ball
effect clear @s speed