

#Dialogue 64 - Lance post-defeating Electrode
#TEST
execute unless entity @e[x=-149,y=44,z=177,dx=63,dy=5,dz=35,type=pixelmon:pixelmon] unless entity @e[x=-149,y=44,z=177,dx=63,dy=5,dz=35,type=pixelmon:statue] as @a[x=-149,y=44,z=177,dx=63,dy=5,dz=35,scores={TalkTime=0},tag=Dialogue63] run scoreboard players set @s[tag=!Dialogue64] DialogueTrigger 64





#Runs the in-floor traps on the first floor

execute as @a[x=-73,y=54,z=193,dx=3,dy=3,dz=3,tag=!Trap1] run pokebattle @s Voltorb,lvl:23
execute as @a[x=-73,y=54,z=193,dx=3,dy=3,dz=3,tag=!Trap1] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-73,y=54,z=193,dx=3,dy=3,dz=3,tag=!Trap1] run tag @s add Trap1


execute as @a[x=-81,y=54,z=193,dx=3,dy=3,dz=3,tag=!Trap2] run pokebattle @s Geodude,lvl:21
execute as @a[x=-81,y=54,z=193,dx=3,dy=3,dz=3,tag=!Trap2] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-81,y=54,z=193,dx=3,dy=3,dz=3,tag=!Trap2] run tag @s add Trap2


execute as @a[x=-69,y=54,z=189,dx=3,dy=3,dz=3,tag=!Trap3] run pokebattle @s Koffing,lvl:21
execute as @a[x=-69,y=54,z=189,dx=3,dy=3,dz=3,tag=!Trap3] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-69,y=54,z=189,dx=3,dy=3,dz=3,tag=!Trap3] run tag @s add Trap3


execute as @a[x=-65,y=54,z=185,dx=3,dy=3,dz=3,tag=!Trap4] run pokebattle @s Geodude,lvl:21
execute as @a[x=-65,y=54,z=185,dx=3,dy=3,dz=3,tag=!Trap4] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-65,y=54,z=185,dx=3,dy=3,dz=3,tag=!Trap4] run tag @s add Trap4


execute as @a[x=-77,y=54,z=185,dx=3,dy=3,dz=3,tag=!Trap5] run pokebattle @s Voltorb,lvl:23
execute as @a[x=-77,y=54,z=185,dx=3,dy=3,dz=3,tag=!Trap5] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-77,y=54,z=185,dx=3,dy=3,dz=3,tag=!Trap5] run tag @s add Trap5


execute as @a[x=-81,y=54,z=185,dx=3,dy=3,dz=3,tag=!Trap6] run pokebattle @s Koffing,lvl:21
execute as @a[x=-81,y=54,z=185,dx=3,dy=3,dz=3,tag=!Trap6] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-81,y=54,z=185,dx=3,dy=3,dz=3,tag=!Trap6] run tag @s add Trap6


execute as @a[x=-73,y=54,z=181,dx=3,dy=3,dz=3,tag=!Trap7] run pokebattle @s Geodude,lvl:21
execute as @a[x=-73,y=54,z=181,dx=3,dy=3,dz=3,tag=!Trap7] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-73,y=54,z=181,dx=3,dy=3,dz=3,tag=!Trap7] run tag @s add Trap7


execute as @a[x=-81,y=54,z=177,dx=3,dy=3,dz=3,tag=!Trap8] run pokebattle @s Koffing,lvl:21
execute as @a[x=-81,y=54,z=177,dx=3,dy=3,dz=3,tag=!Trap8] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-81,y=54,z=177,dx=3,dy=3,dz=3,tag=!Trap8] run tag @s add Trap8


execute as @a[x=-77,y=54,z=173,dx=3,dy=3,dz=3,tag=!Trap9] run pokebattle @s Geodude,lvl:21
execute as @a[x=-77,y=54,z=173,dx=3,dy=3,dz=3,tag=!Trap9] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-77,y=54,z=173,dx=3,dy=3,dz=3,tag=!Trap9] run tag @s add Trap9


exeute as @a[x=-73,y=54,z=173,dx=3,dy=3,dz=3,tag=!Trap10] run pokebattle @s Voltorb,lvl:23
exeute as @a[x=-73,y=54,z=173,dx=3,dy=3,dz=3,tag=!Trap10] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
exeute as @a[x=-73,y=54,z=173,dx=3,dy=3,dz=3,tag=!Trap10] run tag @s add Trap10


execute as @a[x=-69,y=54,z=173,dx=3,dy=3,dz=3,tag=!Trap11] run pokebattle @s Koffing,lvl:21
execute as @a[x=-69,y=54,z=173,dx=3,dy=3,dz=3,tag=!Trap11] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-69,y=54,z=173,dx=3,dy=3,dz=3,tag=!Trap11] run tag @s add Trap11


execute as @a[x=-65,y=54,z=169,dx=3,dy=3,dz=3,tag=!Trap12] run pokebattle @s Voltorb,lvl:23
execute as @a[x=-65,y=54,z=169,dx=3,dy=3,dz=3,tag=!Trap12] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-65,y=54,z=169,dx=3,dy=3,dz=3,tag=!Trap12] run tag @s add Trap12


execute as @a[x=-77,y=54,z=169,dx=3,dy=3,dz=3,tag=!Trap13] run pokebattle @s Koffing,lvl:21
execute as @a[x=-77,y=54,z=169,dx=3,dy=3,dz=3,tag=!Trap13] run tellraw @s {"text":"A Pokemon jumped out from the trap!","italic":true,"color":"gray"}
execute as @a[x=-77,y=54,z=169,dx=3,dy=3,dz=3,tag=!Trap13] run tag @s add Trap13








#RocketHQ Statue Traps
#execute if entity @a[x=-93,y=53,z=163,distance=..25,tag=!TrapGrunt5] run particle minecraft:dust 1 1 1 1 -92 55.5 158 0.1 0.1 6 10 100 normal @a[x=-93,y=53,z=163,distance=..25,tag=!TrapGrunt5]
execute if entity @a[x=-93,y=53,z=158,dx=2,dy=5,dz=5,tag=!TrapGrunt5] run tp @e[x=-815,y=92,z=-234,dy=3,type=pixelmon:npc_trainer] -95 54 161
execute if entity @a[x=-93,y=53,z=158,dx=2,dy=5,dz=5,tag=!TrapGrunt5] run particle cloud -95 54 161 1 1 1 0.15 100
execute if entity @a[x=-93,y=53,z=158,dx=2,dy=5,dz=5,tag=!TrapGrunt5] run execute as @p[x=-95,y=53,z=157,dx=6,dy=6,dz=7,tag=!TrapGrunt5] run pokebattle @a[x=-95,y=53,z=157,dx=6,dy=6,dz=7,tag=!TrapGrunt5] Grunt5
execute if entity @a[x=-93,y=53,z=158,dx=2,dy=5,dz=5,tag=!TrapGrunt5] run tag @a[x=-95,y=53,z=157,dx=6,dy=6,dz=7,tag=!TrapGrunt5] add TrapGrunt5

#
execute if entity @a[x=-147,y=53,z=158,dx=2,dy=5,dz=5,tag=!TrapGrunt4] run tp @e[x=-815,y=92,z=-236,dy=3,type=pixelmon:npc_trainer] -149 54 161
execute if entity @a[x=-147,y=53,z=158,dx=2,dy=5,dz=5,tag=!TrapGrunt4] run particle cloud -149 54 161 1 1 1 0.15 100
execute if entity @a[x=-147,y=53,z=158,dx=2,dy=5,dz=5,tag=!TrapGrunt4] run execute as @p[x=-149,y=53,z=157,dx=6,dy=6,dz=7,tag=!TrapGrunt4] run pokebattle @a[x=-149,y=53,z=157,dx=6,dy=6,dz=7,tag=!TrapGrunt4] Grunt4
execute if entity @a[x=-147,y=53,z=158,dx=2,dy=5,dz=5,tag=!TrapGrunt4] run tag @a[x=-149,y=53,z=157,dx=6,dy=6,dz=7,tag=!TrapGrunt4] add TrapGrunt4

#execute if entity @a[x=-156,y=53,z=199,distance=..25,tag=!TrapGrunt3] run particle minecraft:dust 1 1 1 1 -155 55.5 194 0.1 0.1 6 10 100 normal @a[x=-156,y=53,z=199,distance=..25,tag=!TrapGrunt3]
execute if entity @a[x=-156,y=53,z=194,dx=2,dy=5,dz=9,tag=!TrapGrunt3] run tp @e[x=-815,y=92,z=-238,dy=3,type=pixelmon:npc_trainer] -157 54 198
execute if entity @a[x=-156,y=53,z=194,dx=2,dy=5,dz=9,tag=!TrapGrunt3] run particle cloud -157 54 198 1 1 1 0.15 100
execute if entity @a[x=-156,y=53,z=194,dx=2,dy=5,dz=9,tag=!TrapGrunt3] run execute as @p[x=-158,y=53,z=193,dx=6,dy=6,dz=11,tag=!TrapGrunt3] run pokebattle @a[x=-158,y=53,z=193,dx=6,dy=6,dz=11,tag=!TrapGrunt3] Grunt3
execute if entity @a[x=-156,y=53,z=194,dx=2,dy=5,dz=9,tag=!TrapGrunt3] run tag @a[x=-158,y=53,z=193,dx=6,dy=6,dz=11,tag=!TrapGrunt3] add TrapGrunt3

#execute if entity @a[x=-83,y=53,z=215,distance=..25,tag=!TrapGrunt2] run particle minecraft:dust 1 1 1 1 -82 55.5 210 0.1 0.1 10 10 100 normal @a[x=-83,y=53,z=215,distance=..25,tag=!TrapGrunt2]
execute if entity @a[x=-83,y=53,z=210,dx=2,dy=5,dz=9,tag=!TrapGrunt2] run tp @e[x=-815,y=92,z=-240,dy=3,type=pixelmon:npc_trainer] -79 54 214
execute if entity @a[x=-83,y=53,z=210,dx=2,dy=5,dz=9,tag=!TrapGrunt2] run particle cloud -79 54 214 1 1 1 0.15 100
execute if entity @a[x=-83,y=53,z=210,dx=2,dy=5,dz=9,tag=!TrapGrunt2] run execute as @p[x=-85,y=53,z=209,dx=6,dy=5,dz=11,tag=!TrapGrunt2] run pokebattle @a[x=-85,y=53,z=209,dx=6,dy=5,dz=11,tag=!TrapGrunt2] Grunt2
execute if entity @a[x=-83,y=53,z=210,dx=2,dy=5,dz=9,tag=!TrapGrunt2] run tag @a[x=-85,y=53,z=209,dx=6,dy=5,dz=11,tag=!TrapGrunt2] add TrapGrunt2

#execute if entity @a[x=-135,y=53,z=215,distance=..25,tag=!TrapGrunt1] run particle minecraft:dust 1 1 1 1 -134 55.5 210 0.1 0.1 10 10 100 normal @a[x=-135,y=53,z=215,distance=..25,tag=!TrapGrunt1]
execute if entity @a[x=-135,y=53,z=210,dx=2,dy=5,dz=9,tag=!TrapGrunt1] run tp @e[x=-815,y=92,z=-242,dy=3,type=pixelmon:npc_trainer] -132 54 215
execute if entity @a[x=-135,y=53,z=210,dx=2,dy=5,dz=9,tag=!TrapGrunt1] run particle cloud -132 54 215 1 1 1 0.15 100
execute if entity @a[x=-135,y=53,z=210,dx=2,dy=5,dz=9,tag=!TrapGrunt1] run execute as @p[x=-137,y=53,z=209,dx=6,dy=5,dz=11,tag=!TrapGrunt1] run pokebattle @a[x=-137,y=53,z=209,dx=6,dy=5,dz=11,tag=!TrapGrunt1] Grunt1
execute if entity @a[x=-135,y=53,z=210,dx=2,dy=5,dz=9,tag=!TrapGrunt1] run tag @a[x=-137,y=53,z=209,dx=6,dy=5,dz=11,tag=!TrapGrunt1] add TrapGrunt1






#Generator Room
#Mirrors the power in the floor if an Electrode is found near the base

#South-side
#On (Electrode is present)
#tp @e[x=-817,y=92,z=-172,dx=1,dy=2,dz=1,type=pixelmon:statue] -143.0 46 203.0
#fill -125 43 197 -141 44 203 minecraft:redstone_block 0 replace minecraft:lapis_block
#fill -111 43 199 -94 44 203 minecraft:redstone_block 0 replace minecraft:lapis_block

#Off
#tp @e[x=-144,y=45,z=202,dx=1,dy=2,dz=1,type=pixelmon:statue] -816.0 93 -171.0
#fill -125 43 197 -141 44 203 minecraft:lapis_block 0 replace minecraft:redstone_block
#fill -111 43 199 -94 44 203 minecraft:lapis_block 0 replace minecraft:redstone_block

#Middle
#On (ELectrode is not present)
#tp @e[x=-817,y=92,z=-167,dx=1,dy=2,dz=1,type=pixelmon:statue] -143.0 46 195.0
#fill -126 43 194 -141 44 195 minecraft:redstone_block 0 replace minecraft:lapis_block
#fill -110 43 196 -94 44 194 minecraft:redstone_block 0 replace minecraft:lapis_block

#Off
#tp @e[x=-144,y=45,z=194,dx=1,dy=2,dz=1,type=pixelmon:statue] -816.0 93 -166.0
#fill -126 43 194 -141 44 195 minecraft:lapis_block 0 replace minecraft:redstone_block
#fill -110 43 196 -94 44 194 minecraft:lapis_block 0 replace minecraft:redstone_block

#North
#On
#tp @e[x=-817,y=92,z=-162,dx=1,dy=2,dz=1,type=pixelmon:statue] -143.0 46 187.0
#fill -144 44 186 -124 43 192 minecraft:redstone_block 0 replace minecraft:lapis_block
#fill -111 43 193 -94 44 186 minecraft:redstone_block 0 replace minecraft:lapis_block

#Off
#tp @e[x=-144,y=45,z=186,dx=1,dy=2,dz=1,type=pixelmon:statue] -816.0 93 -161.0
#fill -144 44 186 -124 43 192 minecraft:lapis_block 0 replace minecraft:redstone_block
#fill -111 43 193 -94 44 186 minecraft:lapis_block 0 replace minecraft:redstone_block

#
