#detect_tect_codes_ozobot.mcfunction
#detects variant codes with emphasis on 'etymology' etc.

#SPEED
execute as @s[scores={prev3=2,prev2=1,prev1=2}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "Speed Set: SLOW"
execute as @s[scores={prev3=2,prev2=1,prev1=2}] run tag @s add ozocode
execute as @s[scores={prev3=2,prev2=1,prev1=2}] run scoreboard players set @s speed 4

execute as @s[scores={prev3=2,prev2=1,prev1=3}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "Speed Set: CRUISE"
execute as @s[scores={prev3=2,prev2=1,prev1=3}] run tag @s add ozocode
execute as @s[scores={prev3=2,prev2=1,prev1=3}] run scoreboard players set @s speed 8

execute as @s[scores={prev3=2,prev2=1,prev1=4}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "Speed Set: TURBO"
execute as @s[scores={prev3=2,prev2=1,prev1=4}] run tag @s add ozocode
execute as @s[scores={prev3=2,prev2=1,prev1=4}] run scoreboard players set @s speed 16

#DIRECTION
execute as @s[scores={prev3=3,prev2=2,prev1=3}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "Direction Set: FORWARD"
execute as @s[scores={prev3=3,prev2=2,prev1=3}] run tag @s add ozocode
execute as @s[scores={prev3=3,prev2=2,prev1=3}] run tag @s add ozostraight
execute as @s[scores={prev3=3,prev2=2,prev1=3}] run tag @s remove ozoleft
execute as @s[scores={prev3=3,prev2=2,prev1=3}] run tag @s remove ozoright

execute as @s[scores={prev3=3,prev2=2,prev1=4}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "Direction Set: LEFT"
execute as @s[scores={prev3=3,prev2=2,prev1=4}] run tag @s add ozocode
execute as @s[scores={prev3=3,prev2=2,prev1=4}] run tag @s add ozoleft
execute as @s[scores={prev3=3,prev2=2,prev1=4}] run tag @s remove ozostraight
execute as @s[scores={prev3=3,prev2=2,prev1=4}] run tag @s remove ozoright

execute as @s[scores={prev3=3,prev2=4,prev1=2}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "Direction Set: RIGHT"
execute as @s[scores={prev3=3,prev2=4,prev1=2}] run tag @s add ozocode
execute as @s[scores={prev3=3,prev2=4,prev1=2}] run tag @s add ozoright
execute as @s[scores={prev3=3,prev2=4,prev1=2}] run tag @s remove ozoleft
execute as @s[scores={prev3=3,prev2=4,prev1=2}] run tag @s remove ozostraight

execute as @s[scores={prev3=3,prev2=4,prev1=3}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "Direction Set: BACKWARD"
execute as @s[scores={prev3=3,prev2=4,prev1=3}] run tag @s add ozocode
execute as @s[scores={prev3=3,prev2=4,prev1=3}] at @s run tp @s[tag=S-Y,tag=ozomoving] ~ ~ ~ ~180 ~
execute as @s[scores={prev3=3,prev2=4,prev1=3}] at @s run tp @s[tag=S-Y,tag=ozomoving] ^ ^ ^1
execute as @s[scores={prev3=3,prev2=4,prev1=3}] run tag @s[tag=ozomoving] remove ozomoving

#JUMPING
execute as @s[scores={prev3=3,prev2=1,prev1=3}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "Direction Set: JUMP FORWARD"
execute as @s[scores={prev3=3,prev2=1,prev1=3}] run tag @s add ozocode
execute as @s[scores={prev3=3,prev2=1,prev1=3}] run tag @s add ozojumpstraight
execute as @s[scores={prev3=3,prev2=1,prev1=3}] run tag @s remove ozojumpleft
execute as @s[scores={prev3=3,prev2=1,prev1=3}] run tag @s remove ozojumpright

execute as @s[scores={prev3=3,prev2=1,prev1=4}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "Direction Set: JUMP LEFT"
execute as @s[scores={prev3=3,prev2=1,prev1=4}] run tag @s add ozocode
execute as @s[scores={prev3=3,prev2=1,prev1=4}] run tag @s add ozojumpleft
execute as @s[scores={prev3=3,prev2=1,prev1=4}] run tag @s remove ozojumpstraight
execute as @s[scores={prev3=3,prev2=1,prev1=4}] run tag @s remove ozojumpright

execute as @s[scores={prev3=3,prev2=1,prev1=2}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "Direction Set: JUMP RIGHT"
execute as @s[scores={prev3=3,prev2=1,prev1=2}] run tag @s add ozocode
execute as @s[scores={prev3=3,prev2=1,prev1=2}] run tag @s add ozojumpright
execute as @s[scores={prev3=3,prev2=1,prev1=2}] run tag @s remove ozojumpleft
execute as @s[scores={prev3=3,prev2=1,prev1=2}] run tag @s remove ozojumpstraight

#LOADING/UNLOADING
scoreboard players set @s delta 0
execute as @s[scores={prev3=4,prev2=2,prev1=3}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "LOAD Fuel!"
execute as @s[scores={prev3=4,prev2=2,prev1=3}] run tag @s add ozocode
execute as @s[scores={prev3=4,prev2=2,prev1=3}] at @s anchored eyes store result score @s delta run fill ^1 ^ ^1 ^-1 ^ ^ air replace minecraft:yellow_concrete_powder
execute as @s[scores={prev3=4,prev2=2,prev1=3}] run tag @s remove ozomoving
execute as @s[scores={prev3=4,prev2=2,prev1=3}] run scoreboard players operation @s load += @s delta

execute as @s[scores={prev3=4,prev2=3,prev1=2}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "UNLOAD Fuel!"
execute as @s[scores={prev3=4,prev2=3,prev1=2}] run tag @s add ozocode
execute as @s[scores={prev3=4,prev2=3,prev1=2,load=1..}] at @s anchored eyes if block ^ ^-1 ^1 minecraft:piston[facing=up] run summon minecraft:armor_stand ^ ^ ^1 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ozoloader"]}
execute as @s[scores={prev3=4,prev2=3,prev1=2,load=1..}] at @s anchored eyes if block ^1 ^-1 ^ minecraft:piston[facing=up] run summon minecraft:armor_stand ^1 ^ ^ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ozoloader"]}
execute as @s[scores={prev3=4,prev2=3,prev1=2,load=1..}] at @s anchored eyes if block ^-1 ^-1 ^ minecraft:piston[facing=up] run summon minecraft:armor_stand ^-1 ^ ^ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ozoloader"]}
execute as @s[scores={prev3=4,prev2=3,prev1=2,load=1..}] at @s unless entity @e[tag=ozoloader,distance=..3] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "ERROR: No UNLOAD Spot! Needs a piston, facing up, next to the line!"
execute as @s[scores={prev3=4,prev2=3,prev1=2,load=1..}] at @s if entity @e[tag=ozoloader,distance=..3] run scoreboard players remove @s load 1
execute as @s[scores={prev3=4,prev2=3,prev1=2}] at @s run execute as @e[tag=ozoloader,distance=..3,sort=random,limit=1] run function ozobots:ozoloader_ozobot
execute as @s[scores={prev3=4,prev2=3,prev1=2}] at @s run kill @e[tag=ozoloader,distance=..3]
