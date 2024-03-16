#
#tellraw @s {"text":"You've clicked an npc!","italic":true,"color":"gray"}


#-------------------------------------------------------
#Runs menus

#Safari Zone Prompt
execute as @s[x=1588,y=89,z=-107,distance=..5] if entity @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!SafariActive] run scoreboard players enable @s TriggerCommand
execute as @s[x=1588,y=89,z=-107,distance=..5] if entity @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!SafariActive] run tellraw @s {"text": "<Safari Clerk> Begin your Safari Zone session? ", "extra": [{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 22"}}]}


#Mom
execute as @s[x=-724,y=64,z=-492,distance=..5,scores={MomState=1..}] run scoreboard players enable @s TriggerCommand
execute as @s[x=-724,y=64,z=-492,distance=..5,scores={MomState=1..}] run tellraw @s {"text": "<Mom> Did you want me to stop buying you items? ", "extra": [{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 1"}}]}

execute as @s[x=-724,y=64,z=-492,distance=..5,scores={MomState=0}] run scoreboard players enable @s TriggerCommand
execute as @s[x=-724,y=64,z=-492,distance=..5,scores={MomState=0}] run tellraw @s {"text": "<Mom> Did you want me to start buying you items? ", "extra": [{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 2"}}]}




#-------------------------------------------------------
#Loots


#Ecruteak City
execute as @s[x=401,y=64,z=195,distance=..5,tag=!Item1Give] run give @s pixelmon:item_finder
execute as @s[x=401,y=64,z=195,distance=..5,tag=!Item1Give] run playsound pixelmon:pixelmon.block.pokelootobtained ambient @s ~ ~ ~ 1 1 1
execute as @s[x=401,y=64,z=195,distance=..5,tag=!Item1Give] run tag @s add Item1Give

#National Park
execute as @s[x=511,y=64,z=-16,distance=..5,tag=!Item2Give] run give @s pixelmon:quick_claw
execute as @s[x=511,y=64,z=-16,distance=..5,tag=!Item2Give] run playsound pixelmon:pixelmon.block.pokelootobtained ambient @s ~ ~ ~ 1 1 1
execute as @s[x=511,y=64,z=-16,distance=..5,tag=!Item2Give] run tag @s add Item2Give

#Route 34
execute as @s[x=449,y=64,z=-693,distance=..5,tag=!Item3Give] run give @s pixelmon:tm_gen4{tm:12s}
execute as @s[x=449,y=64,z=-693,distance=..5,tag=!Item3Give] run playsound pixelmon:pixelmon.block.pokelootobtained ambient @s ~ ~ ~ 1 1 1
execute as @s[x=449,y=64,z=-693,distance=..5,tag=!Item3Give] run tag @s add Item3Give

#Route 39
execute as @s[x=775,y=64,z=273,distance=..5,tag=!Item4Give] run give @s pixelmon:moomoo_milk
execute as @s[x=775,y=64,z=273,distance=..5,tag=!Item4Give] run playsound pixelmon:pixelmon.block.pokelootobtained ambient @s ~ ~ ~ 1 1 1
execute as @s[x=775,y=64,z=273,distance=..5,tag=!Item4Give] run tag @s add Item4Give


















#Allows the function to run infinitely
advancement revoke @s only johto:click/npcchatting
