#so! we've got some ozobots!
#this will be the main loop.

#reschedule function for main looping
schedule function ozobots:main_ozobot 1t replace

#we want to initialize new ozobots that may exist
execute as @e[type=item,tag=!ozono,nbt={OnGround:1b,PickupDelay:0s,Item:{id:"minecraft:black_stained_glass",Count:1b,tag:{display:{Name:'{"text":"Ozobot"}'}}}}] run function ozobots:new_ozobot

#at each ozobot, we should:

#detect our current environment
execute as @e[tag=ozobot] at @s run function ozobots:detect_ozobot

#perform the particle function
execute as @e[tag=ozobot] at @s run function ozobots:particle_ozobot

#and move
execute as @e[tag=ozobot,scores={move=..0}] at @s run function ozobots:move_ozobot
scoreboard players set @e[tag=ozobot,scores={move=..0}] move 80
execute as @e[tag=ozobot] run scoreboard players operation @s move -= @s speed

#clear up any loose items
execute as @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}}] at @s if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:black_stained_glass",Count:1b,tag:{display:{Name:'{"text":"Ozobot"}'}}}}] run tag @e[type=item,distance=..3,nbt={Item:{id:"minecraft:black_stained_glass",Count:1b,tag:{display:{Name:'{"text":"Ozobot"}'}}}}] add ozono
execute as @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}}] at @s if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:black_stained_glass",Count:1b,tag:{display:{Name:'{"text":"Ozobot"}'}}}}] run kill @s