#
#tellraw @s {"text":"You've clicked an npc!","italic":true,"color":"gray"}


#Runs menus

#Safari Zone Clerk


#Safari Zone Prompt
execute as @s[x=1588,y=89,z=-107,distance=..5] if entity @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!SafariActive] run scoreboard players enable @s TriggerCommand
execute as @s[x=1588,y=89,z=-107,distance=..5] if entity @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!SafariActive] run tellraw @s {"text": "<Safari Clerk> Begin your Safari Zone session? ", "extra": [{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 22"}}]}

#Ecruteak City
execute as @s[x=401,y=64,z=195,distance=..5,tag=!Item1Give] run give @s pixelmon:item_finder
execute as @s[x=401,y=64,z=195,distance=..5,tag=!Item1Give] run playsound pixelmon:pixelmon.block.pokelootobtained ambient @s ~ ~ ~ 1 1 1
execute as @s[x=401,y=64,z=195,distance=..5,tag=!Item1Give] run tag @s add Item1Give





advancement revoke @s only johto:click/npcchatting
