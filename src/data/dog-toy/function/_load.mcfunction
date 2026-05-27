# Ball config
scoreboard objectives add dog-toy.fetch_ball dummy
scoreboard players reset * dog-toy.fetch_ball

scoreboard players set $seek_timeout dog-toy.fetch_ball 50
scoreboard players set $return_timeout dog-toy.fetch_ball 100