
#--------------------------------------------------------------------------------------------------GENERAL WORLD-----------------------------------------------------------------------------------------------------------------------------------

#Runs the Portals when a player steps on a warp plate block
execute at @a run execute if block ~ ~ ~ pixelmon:warp_plate run function johto:world/portals

#Runs the Mega Stone particles function during the evenings
execute if entity @e[x=-799,y=64,z=-284,dy=3,scores={DayTime=12000..18000}] at @e[tag=MegaStone,type=armor_stand] as @a[scores={MegaStones=1..},distance=..30] run function johto:triggers/megastonesactive


#Runs the Game Corner slots if the player is within the building
execute if entity @e[x=485,y=59,z=-370,dx=22,dy=4,scores={SlotRolled=1..}] run execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19] run function johto:triggers/gamecorner





#Sudowoodo Blocks
tellraw @a[x=327,y=63,z=-19,dx=10,dy=5,dz=5,tag=!Dialogue29] {"text":"It's a weird tree. Perhaps water may cause it to move.","italic":true,"color":"gray"}
execute at @a[x=327,y=63,z=-19,dx=10,dy=5,dz=5,tag=!Dialogue29] run tp @a[x=327,y=63,z=-19,dx=10,dy=5,dz=5,tag=!Dialogue29] ~-10 ~ ~

tellraw @a[x=331,y=63,z=-23,dx=4,dy=5,dz=9,tag=!Dialogue29] {"text":"It's a weird tree. Perhaps water may cause it to move.","italic":true,"color":"gray"}
execute at @a[x=331,y=63,z=-23,dx=4,dy=5,dz=9,tag=!Dialogue29] run tp @a[x=331,y=63,z=-23,dx=4,dy=5,dz=9,tag=!Dialogue29] ~ ~ ~-10



#Runs the Guide Gent Tour function motion
execute if entity @e[x=-792,y=65,z=-284,dy=3,tag=GuideGentMove] run function johto:triggers/guidegenttour


#Ilex Forest Farfetch'd running function
execute if entity @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,scores={Farfetchd=1..}] run function johto:triggers/farfetchdrun



#Lance Mahogany Town movement
execute if entity @a[scores={DialogueTrigger=53,TalkTime=22..32}] run tp @e[x=-157,y=63,z=201,dx=2,dy=2,dz=2,type=pixelmon:npc_chatting] ~-0.25 ~ ~
execute if entity @a[scores={DialogueTrigger=53,TalkTime=22..32}] run tp @e[x=-159,y=63,z=201,dx=1,dy=2,dz=12,type=pixelmon:npc_chatting] ~ ~ ~0.25
execute if entity @a[scores={DialogueTrigger=53,TalkTime=22..32}] run tp @e[x=-158,y=64,z=215,distance=..2,type=pixelmon:npc_chatting] -158 64 215







#--------------------------------------------------------------------------------------------------PARTICLES-----------------------------------------------------------------------------------------------------------------------------------



#Team Rocket Trap Particles
execute if entity @a[x=-135,y=53,z=215,distance=..25,tag=!TrapGrunt1] run particle minecraft:dust 1 1 1 1 -134 55.5 214 0.1 0.1 10 3 3 normal @a[x=-135,y=53,z=215,distance=..25,tag=!TrapGrunt1]
execute if entity @a[x=-83,y=53,z=215,distance=..25,tag=!TrapGrunt2] run particle minecraft:dust 1 1 1 1 -82 55.5 214 0.1 0.1 10 3 3 normal @a[x=-83,y=53,z=215,distance=..25,tag=!TrapGrunt2]
execute if entity @a[x=-156,y=53,z=199,distance=..25,tag=!TrapGrunt3] run particle minecraft:dust 1 1 1 1 -155 55.5 197 0.1 0.1 4 10 3 normal @a[x=-156,y=53,z=199,distance=..25,tag=!TrapGrunt3]
execute if entity @a[x=-147,y=53,z=163,distance=..25,tag=!TrapGrunt4] run particle minecraft:dust 1 1 1 1 -146 55.5 161.0 0.1 0.1 2 1 2 normal @a[x=-147,y=53,z=163,distance=..25,tag=!TrapGrunt4]
execute if entity @a[x=-93,y=53,z=163,distance=..25,tag=!TrapGrunt5] run particle minecraft:dust 1 1 1 1 -92 55.5 160 0.1 0.1 3 1 2 normal @a[x=-93,y=53,z=163,distance=..25,tag=!TrapGrunt5]


#Mt. Silver ambient particles
execute if entity @a[x=-944,y=182,z=285,distance=..100,tag=Red] run particle minecraft:enchant -944 182 285 28 15 15 1 100 normal @a[tag=Red]



#Sinjoh Ruins Ambient Snow
execute if entity @p[x=-1099,y=60,z=-252,dx=102,dy=10,dz=189] run particle minecraft:item_snowball -1044 60 -227 150 10 150 1 500
execute if entity @p[x=-1099,y=0,z=-252,dx=102,dy=59,dz=189] run particle minecraft:enchant -1044 47 -110 28 15 150 1 700



#Arceus' Lightning strike, Dialogue166
execute as @a[scores={DialogueTrigger=166,TalkTime=2..5}] run summon minecraft:lightning_bolt 176 64 -141


#Celebi Time Travel particles
#Dialogue162
execute if entity @a[limit=1,scores={DialogueTrigger=162,TalkTime=17..27}] at @e[x=617,y=64,z=-699,distance=..25,type=pixelmon:pixelmon,name=Celebi] run particle minecraft:enchant ~-2 ~-2 ~-2 4 4 4 1 50

#Dialogue162-164
execute if entity @a[limit=1,scores={DialogueTrigger=162,TalkTime=26..}] at @e[x=148,y=60,z=613,dx=200,dy=30,dz=200,type=pixelmon:statue] run particle minecraft:enchant ~-2 ~-2 ~-2 4 4 4 1 50
execute if entity @a[limit=1,tag=!Dialogue164,scores={TalkTime=0}] at @e[x=148,y=60,z=613,dx=200,dy=30,dz=200,type=pixelmon:statue] run particle minecraft:enchant ~-2 ~-2 ~-2 4 4 4 1 50
execute if entity @a[limit=1,scores={DialogueTrigger=164,TalkTime=..47}] at @e[x=148,y=60,z=613,dx=200,dy=30,dz=200,type=pixelmon:statue] run particle minecraft:enchant ~-2 ~-2 ~-2 4 4 4 1 50

#Dialogue165
execute if entity @a[limit=1,scores={DialogueTrigger=165,TalkTime=70..82}] at @e[x=87,y=50,z=719,dx=44,dy=20,dz=44,name=Celebi,type=pixelmon:pixelmon] run particle minecraft:enchant ~-2 ~-2 ~-2 4 4 4 1 50



#Embedded Tower moving particles Dialogue150-152
execute if entity @e[x=-801,y=64,z=-287,dy=3,scores={DialogueTrigger=150,TalkTime=1..8}] at @e[x=-1173,y=63,z=-230,dy=2,dz=22,type=minecraft:item] run particle minecraft:dust 1 1 1 1 ~ ~0.25 ~ 1 1 1 1
execute if entity @e[x=-801,y=64,z=-287,dy=3,scores={DialogueTrigger=150,TalkTime=1..8}] run data merge entity @e[limit=1,x=-1173,y=63,z=-230,dy=2,dz=22,type=minecraft:item] {Motion:[0.0,0.0,0.25]}



#Dialogue108-109 Ilex Forest Celebi Shrine particles
execute if entity @p[x=617,y=66,z=-696,distance=..20,tag=Dialogue108] run particle minecraft:dust 0 1 0 1 617 66 -696.5 -1 1 0 1


#Dialogue104 Ho-Oh Spawning particles
execute if entity @a[scores={DialogueTrigger=104,TalkTime=1..13}] run particle minecraft:dust 1 0 0 1 251 154 308 10 10 10 1 33
execute if entity @a[scores={DialogueTrigger=104,TalkTime=1..13}] run particle minecraft:dust 0 1 0 1 251 154 308 10 10 10 1 33
execute if entity @a[scores={DialogueTrigger=104,TalkTime=1..13}] run particle minecraft:dust 0 0 1 1 251 154 308 10 10 10 1 33



#Cycling Road Blocks
#Celadon Side
execute as @a[x=-2091,y=63,z=320,dx=4,dy=5,dz=7,tag=!Bicycle] at @s run tellraw @s {"text":"Bicycles are required to ride on the Cycling Road!","italic":true}
execute as @a[x=-2091,y=63,z=320,dx=4,dy=5,dz=7,tag=!Bicycle] at @s run tp @s ~-5 ~ ~

#Fuchsia Side
execute as @a[x=-2192,y=63,z=-541,dx=4,dy=5,dz=4,tag=!Bicycle] at @s run tellraw @s {"text":"Bicycles are required to ride on the Cycling Road!","italic":true}
execute as @a[x=-2192,y=63,z=-541,dx=4,dy=5,dz=4,tag=!Bicycle] at @s run tp @s ~-5 ~ ~



#
