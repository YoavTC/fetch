execute unless entity @s[type=marker,tag=ball.temp] run return run execute as @e[type=marker,tag=ball.temp] positioned as @s run function dog-toy:no_dog_ball/air_enter

execute unless entity @n[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{ball:1b}}}}] run kill @s
execute unless entity @n[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{ball:1b}}}}] run return run loot spawn ~ ~.5 ~ loot dog-toy:ball

tp @s @n[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{ball:1b}}}}]
schedule function dog-toy:no_dog_ball/air_enter 1t