execute as @e[type=wolf,nbt={Sitting:false},tag=!fetch.active_dog] if function fetch:is_correct_dog run return run tag @s add fetch.dog_temp
return fail