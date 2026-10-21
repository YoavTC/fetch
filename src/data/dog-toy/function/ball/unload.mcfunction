$tp @n[type=iron_golem,nbt={data:{wolf:$(UUID)}}] ~ ~-1000 ~
$tp @n[type=bat,nbt={data:{wolf:$(UUID)}}] ~ ~-1000 ~

data remove entity @s data.ig
data remove entity @s data.bat
data remove entity @s data.snowball

tag @s remove ball.active
tag @s remove ball.tick_air
tag @s remove ball.tick_ground
tag @s remove ball.tick_return

scoreboard players reset @s dog-toy.fetch_ball
execute unless entity @s[tag=ball.had_speed] run effect clear @s speed
tag @s remove ball.had_speed