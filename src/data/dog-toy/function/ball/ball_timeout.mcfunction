say >:(
playsound minecraft:entity.wolf_puglin.whine neutral @a ~ ~ ~

function dog-toy:ball/unload

# If wolf was retrieving ball back, spawn ball item
execute unless entity @n[type=item] run function dog-toy:ball/item/spawn