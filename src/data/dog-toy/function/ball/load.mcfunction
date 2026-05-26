# Setup iron golem (wolf AI)
summon iron_golem ~ ~ ~ {attributes:[{id:scale,base:0.0625},{id:"attack_damage", base:0}],Invulnerable:true,Health:1,active_effects:[{id:"invisibility",duration:-1,show_particles:false}]}
ride @n[type=iron_golem] mount @n[type=wolf]

scoreboard players reset @n[type=wolf] dog-toy.fetch_ball

effect give @n[type=wolf] speed infinite 0 true

# Setup armor stand
summon bat ~ ~ ~ {Silent:1b,NoAI:1b,Health:200f,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:instant_health",amplifier:50,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:200},{id:"minecraft:scale",base:0.0625}]}


function dog-toy:ball/tick/air_enter