#move_ozobot
#ozobot movement, also handles code detection.

execute as @s[scores={current=1..}] run tag @s add ozomoving

#cycle code shifter
scoreboard players operation @s prev3 = @s prev2
scoreboard players operation @s prev2 = @s prev1
scoreboard players operation @s prev1 = @s current

#detect any codes
execute if entity @s[tag=ozolang] run function ozobots:detect_ozo_codes_ozobot
execute if entity @s[tag=tectlang] run function ozobots:detect_tect_codes_ozobot

#clear out queue if we got a code
scoreboard players set @s[tag=ozocode] prev1 0
scoreboard players set @s[tag=ozocode] prev2 0
scoreboard players set @s[tag=ozocode] prev3 0
tag @s[tag=ozocode] remove ozocode

#perform codes (only movement so far)

#MOVEMENT: Summon armor stands in potential movement positions.
execute as @s[tag=S-Y,tag=ozomoving,scores={forward=1..}] at @s anchored feet run summon minecraft:armor_stand ^ ^ ^1 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["ozomovement","ozomovementf"],Glowing:1b}
execute as @s[tag=S-Y,tag=ozomoving,scores={left=1..}] at @s anchored feet run summon minecraft:armor_stand ^1 ^ ^ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["ozomovement","ozomovementl"],Glowing:1b}
execute as @s[tag=S-Y,tag=ozomoving,scores={right=1..}] at @s anchored feet run summon minecraft:armor_stand ^-1 ^ ^ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["ozomovement","ozomovementr"],Glowing:1b}

#execute as @s[tag=S-Y,tag=ozomoving] at @s run execute as @e[tag=ozomovement,distance=..2] at @s if entity @e[tag=ozobot,tag=!ozomoving,distance=..0.5] run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: Too Close To Another Ozobot!"
execute as @s[tag=S-Y,tag=ozomoving] at @s run execute as @e[tag=ozomovement,distance=..2] at @s if entity @e[tag=ozobot,tag=!ozomoving,distance=..0.5] run kill @s
#execute as @s[tag=S-Y,tag=ozomoving] at @s run execute as @e[tag=ozomovement,distance=..2] at @s unless block ~ ~2 ~ air run tellraw @a[distance=..16,nbt={SelectedItem:{id:"minecraft:compass"}}] "OZOBOT: Way Blocked By Block!"
execute as @s[tag=S-Y,tag=ozomoving] at @s run execute as @e[tag=ozomovement,distance=..2] at @s unless block ~ ~2 ~ air run kill @s

execute as @s[tag=S-Y,tag=ozomoving,tag=ozostraight] at @s run tag @e[tag=ozomovementf,distance=..2] add ozopreferred
execute as @s[tag=S-Y,tag=ozomoving,tag=ozoleft] at @s run tag @e[tag=ozomovementl,distance=..2] add ozopreferred
execute as @s[tag=S-Y,tag=ozomoving,tag=ozoright] at @s run tag @e[tag=ozomovementr,distance=..2] add ozopreferred

execute as @s[tag=S-Y,tag=ozomoving] at @s if entity @e[tag=!ozopreferred,tag=ozomovement,distance=..2] run tag @e[tag=ozopreferred,distance=..2] add ozochosen
execute as @s[tag=S-Y,tag=ozomoving] at @s if entity @e[tag=!ozopreferred,tag=ozomovement,distance=..2] if entity @e[tag=ozopreferred,distance=..2] run tag @s remove ozostraight
execute as @s[tag=S-Y,tag=ozomoving] at @s if entity @e[tag=!ozopreferred,tag=ozomovement,distance=..2] if entity @e[tag=ozopreferred,distance=..2] run tag @s remove ozoleft
execute as @s[tag=S-Y,tag=ozomoving] at @s if entity @e[tag=!ozopreferred,tag=ozomovement,distance=..2] if entity @e[tag=ozopreferred,distance=..2] run tag @s remove ozoright
execute as @s[tag=S-Y,tag=ozomoving] at @s run tag @e[tag=ozopreferred,distance=..2] remove ozopreferred

execute as @s[tag=S-Y,tag=ozomoving] at @s unless entity @e[tag=ozochosen,distance=..2] run tag @e[tag=ozomovement,distance=..2,limit=1,sort=random] add ozochosen
#execute as @s[tag=S-Y,tag=ozomoving] at @s run tag @e[tag=ozomovement,distance=..2,limit=1,sort=random] add ozochosen
execute as @s[tag=S-Y,tag=ozomoving] at @s run kill @e[tag=ozomovement,tag=!ozochosen,distance=..2]

#if our ozochosen is a right movement, spin ourselves. if our ozochosen is a left movement, spin ourselves.
execute as @s[tag=S-Y,tag=ozomoving] at @s if entity @e[tag=ozochosen,tag=ozomovementr,distance=..2] run tp @s ~ ~ ~ ~90 ~
execute as @s[tag=S-Y,tag=ozomoving] at @s if entity @e[tag=ozochosen,tag=ozomovementl,distance=..2] run tp @s ~ ~ ~ ~-90 ~

execute as @s[tag=S-Y,tag=ozomoving] at @e[tag=ozochosen,distance=..2,limit=1] run tp @s ~ ~ ~
execute as @s[tag=S-Y,tag=ozomoving] at @s run kill @e[tag=ozochosen,distance=..2]

tag @s[tag=ozomoving] remove ozomoving
