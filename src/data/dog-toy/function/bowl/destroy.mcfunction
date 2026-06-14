# If bowl has food, drop it first
execute as @n[type=item_display,tag=bowl.item] unless entity @s[nbt={data:{item:{id:"air"}}}] run function dog-toy:bowl/drop_food with entity @s data

execute on passengers run kill @s
kill @s

loot spawn ~ ~ ~ loot dog-toy:bowl/oak