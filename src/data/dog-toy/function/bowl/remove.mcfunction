# If bowl empty, return early
execute if entity @s[nbt={data:{item:{id:"air"}}}] run return fail

swing @p

# Drop food item & update data
function dog-toy:bowl/drop_food with entity @s data
data modify entity @s data.item set value {id:"air",count:1}
data modify entity @s item set from entity @s data.item