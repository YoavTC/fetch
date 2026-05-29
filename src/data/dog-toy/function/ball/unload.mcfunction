$tp @n[type=iron_golem,nbt={data:{wolf:$(UUID)}}] ~ ~-1000 ~
$tp @n[type=bat,nbt={data:{wolf:$(UUID)}}] ~ ~-1000 ~
$say $(UUID)
data remove entity @s data.ig
data remove entity @s data.bat
say huh
scoreboard players reset @s dog-toy.fetch_ball
effect clear @s speed