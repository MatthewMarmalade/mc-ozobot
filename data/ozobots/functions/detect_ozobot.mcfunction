#detect_ozobot

scoreboard players set @s current 0
scoreboard players set @s forward 0
scoreboard players set @s left 0
scoreboard players set @s right 0

#detect current, forward, left, and right.
execute as @s[tag=S-Y] at @s anchored eyes if block ^ ^-1 ^ black_concrete run scoreboard players set @s current 1
execute as @s[tag=S-Y] at @s anchored eyes if block ^ ^-1 ^ red_glazed_terracotta run scoreboard players set @s current 2
execute as @s[tag=S-Y] at @s anchored eyes if block ^ ^-1 ^ green_glazed_terracotta run scoreboard players set @s current 3
execute as @s[tag=S-Y] at @s anchored eyes if block ^ ^-1 ^ blue_glazed_terracotta run scoreboard players set @s current 4

execute as @s[tag=S-Y] at @s anchored eyes if block ^ ^-1 ^1 black_concrete run scoreboard players set @s forward 1
execute as @s[tag=S-Y] at @s anchored eyes if block ^ ^-1 ^1 red_glazed_terracotta run scoreboard players set @s forward 2
execute as @s[tag=S-Y] at @s anchored eyes if block ^ ^-1 ^1 green_glazed_terracotta run scoreboard players set @s forward 3
execute as @s[tag=S-Y] at @s anchored eyes if block ^ ^-1 ^1 blue_glazed_terracotta run scoreboard players set @s forward 4

execute as @s[tag=S-Y] at @s anchored eyes if block ^1 ^-1 ^ black_concrete run scoreboard players set @s left 1
execute as @s[tag=S-Y] at @s anchored eyes if block ^1 ^-1 ^ red_glazed_terracotta run scoreboard players set @s left 2
execute as @s[tag=S-Y] at @s anchored eyes if block ^1 ^-1 ^ green_glazed_terracotta run scoreboard players set @s left 3
execute as @s[tag=S-Y] at @s anchored eyes if block ^1 ^-1 ^ blue_glazed_terracotta run scoreboard players set @s left 4

execute as @s[tag=S-Y] at @s anchored eyes if block ^-1 ^-1 ^ black_concrete run scoreboard players set @s right 1
execute as @s[tag=S-Y] at @s anchored eyes if block ^-1 ^-1 ^ red_glazed_terracotta run scoreboard players set @s right 2
execute as @s[tag=S-Y] at @s anchored eyes if block ^-1 ^-1 ^ green_glazed_terracotta run scoreboard players set @s right 3
execute as @s[tag=S-Y] at @s anchored eyes if block ^-1 ^-1 ^ blue_glazed_terracotta run scoreboard players set @s right 4