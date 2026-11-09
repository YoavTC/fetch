advancement revoke @s only fetch:_events/on_throw

clear @s minecraft:poisonous_potato[minecraft:custom_data={ball:true}]
function fetch:fx/throw_ball
tag @s add fetch.throwing_player

# Tag thrown snowball with "fetch.snowball"
execute as @n[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{"fetch.ball":true}}}},tag=!fetch.snowball] if function fetch:is_correct_snowball run tag @s add fetch.snowball

# Summon bat & make it ride snowball
summon interaction ~ ~ ~ {width:0,height:1.5,Tags:["fetch.interaction"],Passengers:[{id:"bat",Tags:["fetch.bat", "fetch.bat_temp", "fetch.unclaimed_bat"],Silent:true,attributes:[{id:scale,base:0.0625}],DeathLootTable:"fetch:drop_air",NoAI:true,active_effects:[{id:invisibility,duration:-1,show_particles:false},{id:resistance,duration:-1,amplifier:255,show_particles:false}]}]}
data modify entity @n[type=bat,tag=fetch.bat_temp] data.fetch.model set from entity @n[type=snowball,tag=fetch.snowball] Item.components.minecraft:item_model
execute as @n[type=bat,tag=fetch.bat,tag=fetch.bat_temp,tag=fetch.unclaimed_bat] on vehicle run ride @s mount @n[type=snowball,tag=fetch.snowball]

# Mark bat as persistent & save bat's UUID on dog at data.fetch.bat
execute if function fetch:find_dog run tag @n[type=bat,tag=fetch.unclaimed_bat,tag=fetch.bat_temp] remove fetch.unclaimed_bat

execute as @n[type=wolf,tag=fetch.dog_temp] run function fetch:dog/init
execute as @n[type=bat,tag=fetch.bat_temp] run function fetch:bat/init

tag @s remove fetch.throwing_player