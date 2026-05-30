particle heart ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.wolf_cute.ambient neutral @a ~ ~ ~

execute on owner run advancement grant @s only dog-toy:ball/play_catch

function dog-toy:ball/unload with entity @s
function dog-toy:ball/item/spawn