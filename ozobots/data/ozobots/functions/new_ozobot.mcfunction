#new_ozobot
#whoever runs this gets a new ozobot at their location!

tag @s add ozosummoner

execute as @s at @s align xyz run summon minecraft:armor_stand ~0.5 ~-1.38 ~0.5 {Health:0.5f,NoGravity:1b,Tags:["ozobot","ozonew"],ArmorItems:[{},{},{},{id:"minecraft:black_stained_glass",Count:1b,tag:{display:{Name:'{"text":"Ozobot"}'}}}]}

execute as @e[tag=ozonew] at @s run tellraw @a[distance=..24] "Summoned Ozobot"
scoreboard players set @e[tag=ozonew] move 80
scoreboard players set @e[tag=ozonew] speed 4
tag @e[tag=ozonew] add S-Y
tag @e[tag=ozonew] add D+X
execute as @e[tag=ozonew] at @s run tp @s ~ ~ ~ -90 0

kill @s[type=item]

tag @e[tag=ozonew] remove ozonew
tag @s remove ozosummoner