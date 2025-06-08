execute store result score systick time run worldborder get
scoreboard players operation systick time %= const100000 time

worldborder set 5000000
worldborder set 6000000 10000

# Initialize player time scoreboards for any new players who joined
scoreboard players set @a[tag=!joined] player_time 0
scoreboard players set @a[tag=!joined] player_seconds 0
scoreboard players set @a[tag=!joined] player_minutes 0
scoreboard players set @a[tag=!joined] player_hours 0
tag @a[tag=!joined] add joined

# Server-wide time tracking
execute as @e[type=marker,name="Timer",scores={time=1..}] run scoreboard players operation @s time += systick time

# Individual player time tracking - only for active players with joined tag
execute as @a[tag=joined] run scoreboard players operation @s player_time += systick time

# Calculate server play time
scoreboard players operation seconds time = @e[type=marker,name="Timer",scores={time=1..}] time
scoreboard players operation seconds time /= const100 time

# Calculate individual player times
execute as @a[tag=joined] run scoreboard players operation @s player_seconds = @s player_time
execute as @a[tag=joined] run scoreboard players operation @s player_seconds /= const100 time

# Server time calculations
execute if score seconds time matches 60.. run scoreboard players add minutes time 1
execute if score seconds time matches 60.. run scoreboard players add trackedminutes time 1
execute if score seconds time matches 60.. run scoreboard players set seconds time 0
execute if score minutes time matches 60.. run scoreboard players add hours time 1
execute if score minutes time matches 60.. run scoreboard players set minutes time 0

# Individual player time calculations
execute as @a[tag=joined,scores={player_seconds=60..}] run scoreboard players add @s player_minutes 1
execute as @a[tag=joined,scores={player_seconds=60..}] run scoreboard players set @s player_seconds 0
execute as @a[tag=joined,scores={player_minutes=60..}] run scoreboard players add @s player_hours 1
execute as @a[tag=joined,scores={player_minutes=60..}] run scoreboard players set @s player_minutes 0

# Reset server time if it gets too high
execute as @e[type=marker,name="Timer",scores={time=6000..}] run scoreboard players set @e[type=marker,name="Timer",scores={time=6000..}] time 1

# Reset player timer if it gets too high
execute as @a[tag=joined,scores={player_time=6000..}] run scoreboard players set @s player_time 1

execute if score showTimer GameSetup matches 1 run title @a actionbar ["",{score:{name:"hours",objective:"time"}}," : ",{score:{name:"minutes",objective:"time"}}," : ",{score:{name:"seconds",objective:"time"}}]
