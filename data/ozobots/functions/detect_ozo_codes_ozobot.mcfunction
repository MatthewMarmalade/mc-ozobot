#detect_ozo_codes_ozobot.mcfunction
#detects standard ozobot codes.

execute as @s[scores={prev3=4,prev2=3,prev1=2}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: NITRO BOOST"
execute as @s[scores={prev3=4,prev2=3,prev1=2}] run tag @s add ozocode
execute as @s[scores={prev3=4,prev2=3,prev1=2}] run scoreboard players set @s speed 16

execute as @s[scores={prev3=2,prev2=3,prev1=4}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: SNAIL PACE"
execute as @s[scores={prev3=2,prev2=3,prev1=4}] run tag @s add ozocode
execute as @s[scores={prev3=2,prev2=3,prev1=4}] run scoreboard players set @s speed 1

execute as @s[scores={prev3=4,prev2=3,prev1=4}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: TURBO"
execute as @s[scores={prev3=4,prev2=3,prev1=4}] run tag @s add ozocode
execute as @s[scores={prev3=4,prev2=3,prev1=4}] run scoreboard players set @s speed 8

execute as @s[scores={prev3=4,prev2=1,prev1=4}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: FAST"
execute as @s[scores={prev3=4,prev2=1,prev1=4}] run tag @s add ozocode
execute as @s[scores={prev3=4,prev2=1,prev1=4}] run scoreboard players set @s speed 6

execute as @s[scores={prev3=3,prev2=1,prev1=3}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: CRUISE"
execute as @s[scores={prev3=3,prev2=1,prev1=3}] run tag @s add ozocode
execute as @s[scores={prev3=3,prev2=1,prev1=3}] run scoreboard players set @s speed 4

execute as @s[scores={prev3=2,prev2=1,prev1=2}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: SLOW"
execute as @s[scores={prev3=2,prev2=1,prev1=2}] run tag @s add ozocode
execute as @s[scores={prev3=2,prev2=1,prev1=2}] run scoreboard players set @s speed 2

execute as @s[scores={prev3=3,prev2=1,prev1=2}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: TURN LEFT"
execute as @s[scores={prev3=3,prev2=1,prev1=2}] run tag @s add ozocode
execute as @s[scores={prev3=3,prev2=1,prev1=2}] run tag @s add ozoleft
execute as @s[scores={prev3=3,prev2=1,prev1=2}] run tag @s remove ozostraight
execute as @s[scores={prev3=3,prev2=1,prev1=2}] run tag @s remove ozoright


execute as @s[scores={prev3=4,prev2=2,prev1=3}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: TURN RIGHT"
execute as @s[scores={prev3=4,prev2=2,prev1=3}] run tag @s add ozocode
execute as @s[scores={prev3=4,prev2=2,prev1=3}] run tag @s add ozoright
execute as @s[scores={prev3=4,prev2=2,prev1=3}] run tag @s remove ozoleft
execute as @s[scores={prev3=4,prev2=2,prev1=3}] run tag @s remove ozostraight

execute as @s[scores={prev3=4,prev2=1,prev1=2}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: STRAIGHT"
execute as @s[scores={prev3=4,prev2=1,prev1=2}] run tag @s add ozocode
execute as @s[scores={prev3=4,prev2=1,prev1=2}] run tag @s add ozostraight
execute as @s[scores={prev3=4,prev2=1,prev1=2}] run tag @s remove ozoleft
execute as @s[scores={prev3=4,prev2=1,prev1=2}] run tag @s remove ozoright

execute as @s[scores={prev3=4,prev2=2,prev1=1}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: U-TURN"
execute as @s[scores={prev3=4,prev2=2,prev1=1}] run tag @s add ozocode
execute as @s[scores={prev3=4,prev2=2,prev1=1}] at @s run tp @s[tag=S-Y,tag=ozomoving] ~ ~ ~ ~180 ~
execute as @s[scores={prev3=4,prev2=2,prev1=1}] run tag @s[tag=ozomoving] remove ozomoving

execute as @s[scores={prev3=3,prev2=2,prev1=3}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: JUMP LEFT"
execute as @s[scores={prev3=3,prev2=2,prev1=3}] run tag @s add ozocode

execute as @s[scores={prev3=2,prev2=3,prev1=2}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: JUMP RIGHT"
execute as @s[scores={prev3=2,prev2=3,prev1=2}] run tag @s add ozocode

execute as @s[scores={prev3=3,prev2=4,prev1=3}] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: JUMP STRAIGHT"
execute as @s[scores={prev3=3,prev2=4,prev1=3}] run tag @s add ozocode

execute as @s[scores={prev3=3,prev2=2,prev1=1}] run tellraw @a[distance=..24] "OZOBOT: LOSE"
execute as @s[scores={prev3=3,prev2=2,prev1=1}] at @s run particle minecraft:angry_villager ~ ~1 ~ 0.5 0.5 0.5 0.3 50
execute as @s[scores={prev3=3,prev2=2,prev1=1}] run tag @s add ozoend
execute as @s[scores={prev3=3,prev2=2,prev1=1}] run tag @s add ozocode

execute as @s[scores={prev3=3,prev2=4,prev1=1}] run tellraw @a[distance=..24] "OZOBOT: WIN"
execute as @s[scores={prev3=3,prev2=4,prev1=1}] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.3 150
execute as @s[scores={prev3=3,prev2=4,prev1=1}] run tag @s add ozoend
execute as @s[scores={prev3=3,prev2=4,prev1=1}] run tag @s add ozocode