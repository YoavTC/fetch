# Return the correct wolf

# Filter out if owner has other wolves currently fetching
execute on owner run tag @s add ball.temp_owner_check 
execute store result score $owner_pets dog-toy.fetch_ball run execute as @e[type=wolf,distance=..20] if data entity @s Owner
tellraw @a {score:{name:"$owner_pets",objective:"dog-toy.fetch_ball"}}
execute on owner run tag @s remove ball.temp_owner_check

execute on owner if entity @s[tag=ball.threw] run return 1
return fail