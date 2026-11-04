execute as @e[type=wolf,nbt={Sitting:false},tag=!dog-toy.active_dog] if function dog-toy:is_correct_dog run return run tag @s add dog-toy.dog_temp
return fail