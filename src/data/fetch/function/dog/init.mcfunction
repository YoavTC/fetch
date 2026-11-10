data modify entity @s data.fetch.bat set from entity @n[type=bat,tag=fetch.bat_temp] UUID
data merge entity @s {Tags:["fetch.active_dog"]}
effect give @s speed infinite 1 true
effect give @s water_breathing infinite 0 true

# Setup iron golem AI
summon iron_golem ~ ~ ~ {Tags:["fetch.golem", "fetch.golem_temp"],Silent:true,active_effects:[{id:invisibility,duration:-1,show_particles:false}],Invulnerable:true,DeathLootTable:"fetch:drop_air",attributes:[{id:"attack_damage",base:0},{id:max_health,base:1},{id:scale,base:0.0625}]}
ride @n[type=iron_golem,tag=fetch.golem_temp] mount @s
data modify entity @n[type=iron_golem,tag=fetch.golem_temp] data.fetch.bat set from entity @s data.fetch.bat
data modify entity @n[type=iron_golem,tag=fetch.golem_temp] data.fetch.player set from entity @s Owner
tag @n[type=iron_golem,tag=fetch.golem_temp] remove fetch.golem_temp

function fetch:tick_dogs