advancement revoke @s only dog-toy:_events/on_throw

clear @s minecraft:poisonous_potato[minecraft:custom_data={ball:true}]
tag @s add dog-toy.throwing_player

# Tag thrown snowball with "dog-toy.snowball"
execute as @n[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{"dog-toy.ball":true}}}},tag=!dog-toy.snowball] if function dog-toy:is_correct_snowball run tag @s add dog-toy.snowball

# Summon bat & make it ride snowball
summon bat ~ ~ ~ {NoAI:true,Tags:["dog-toy.bat", "dog-toy.bat_temp", "dog-toy.unclaimed_bat"]}
ride @n[type=bat,tag=dog-toy.bat,tag=dog-toy.bat_temp,tag=dog-toy.unclaimed_bat] mount @n[type=snowball,tag=dog-toy.snowball]

# Mark bat as persistent & save bat's UUID on dog at data.dog-toy.bat
execute if function dog-toy:find_dog run tag @n[type=bat,tag=dog-toy.unclaimed_bat,tag=dog-toy.bat_temp] remove dog-toy.unclaimed_bat

execute as @n[type=wolf,tag=dog-toy.dog_temp] run function dog-toy:dog/init
execute as @n[type=bat,tag=dog-toy.bat_temp] run function dog-toy:bat/init