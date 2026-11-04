data modify entity @s data.dog-toy.bat set from entity @n[type=bat,tag=dog-toy.bat_temp] UUID
data merge entity @s {Tags:["dog-toy.active_dog"]}
effect give @s speed infinite 1 true

# Setup iron golem AI
summon iron_golem ~ ~ ~ {Tags:["dog-toy.golem", "dog-toy.golem_temp"],Silent:true,active_effects:[{id:invisibility,duration:-1,show_particles:false}],Invulnerable:true,DeathLootTable:"dog-toy:drop_air",attributes:[{id:"attack_damage",base:0},{id:max_health,base:1},{id:scale,base:0.0625}]}
ride @n[type=iron_golem,tag=dog-toy.golem_temp] mount @s
data modify entity @n[type=iron_golem,tag=dog-toy.golem_temp] data.dog-toy.bat set from entity @s data.dog-toy.bat
data modify entity @n[type=iron_golem,tag=dog-toy.golem_temp] data.dog-toy.player set from entity @s Owner
tag @n[type=iron_golem,tag=dog-toy.golem_temp] remove dog-toy.golem_temp

function dog-toy:tick_dogs