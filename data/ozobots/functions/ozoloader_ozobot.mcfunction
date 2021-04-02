#ozoloader
#summuned atop a piston
#we need to iteratively travel up, until we reach the top, where we either die or place sand.

execute unless entity @s[scores={life=1..}] run scoreboard players set @s life 17
scoreboard players remove @s life 1

execute at @s if block ~ ~ ~ air run scoreboard players set @s life 1
execute at @s if block ~ ~ ~ air run setblock ~ ~ ~ yellow_concrete_powder

execute at @s if block ~ ~ ~ yellow_concrete_powder run tp ~ ~1 ~
execute at @s unless block ~ ~ ~ yellow_concrete_powder unless block ~ ~ ~ air run kill @s


execute if entity @s[scores={life=1}] run kill @s
execute if entity @s[scores={life=2..}] run function ozobots:ozoloader_ozobot