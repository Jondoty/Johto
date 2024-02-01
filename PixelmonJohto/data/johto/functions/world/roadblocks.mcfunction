#Handles story-based barriers the player must do something else to clear.

#-------------------------------------------------------------------------------------------------------------------------
#Road Blocks

#Prof Elm before player has a Pokemon
execute as @a[x=-659,y=63,z=-526,dx=10,dy=10,dz=12,scores={StarterPick=0}] run tellraw @s ["",{"text":"<Professor Elm> Where are you going, "},{"selector":"@s"},{"text":"? You don't have a Pokemon yet!"}]
execute at @a[x=-659,y=63,z=-526,dx=10,dy=10,dz=12,scores={StarterPick=0}] run tp @a[x=-659,y=63,z=-526,dx=10,dy=10,dz=12,scores={StarterPick=0}] ~-10 ~ ~1 25 ~

#Route 30 Cut Tree respawn for story blocking
execute if block -192 64 -188 minecraft:air if entity @a[x=-192,y=64,z=-188,distance=10..25] run clone -752 75 -242 -752 76 -242 -192 64 -188

#Mr. Pokemon TP
tellraw @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=!Dialogue5] ["",{"text":"Mr Pokemon's house is the other way!","color":"white","italic":true}]
execute at @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=!Dialogue5] run tp @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=!Dialogue5] ~ ~ ~-10

tellraw @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=Dialogue5,tag=!Dialogue8] ["",{"text":"You haven't reported your findings to Prof. Elm!","color":"white","italic":true}]
execute at @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=Dialogue5,tag=!Dialogue8] run tp @a[x=-177,y=63,z=-311,dx=24,dy=5,dz=6,tag=Dialogue5,tag=!Dialogue8] ~ ~ ~-10

#Route 32
tellraw @a[x=83,y=63,z=-222,dx=11,dy=10,dz=5,tag=!Falkner] ["",{"text":"You need to defeat Falkner!","color":"white","italic":true}]
execute at @a[x=83,y=63,z=-222,dx=11,dy=10,dz=5,tag=!Falkner] run tp @a[x=83,y=63,z=-222,dx=11,dy=10,dz=5,tag=!Falkner] ~ ~ ~10

#Azalea Town Slowpoke Well before visiting Kurt
tellraw @a[x=243,y=54,z=-715,dx=2,dy=5,dz=2,tag=!Dialogue14] ["",{"text":"<Team Rocket Grunt> Get out of here, kid! ","color":"white"}]
execute at @a[x=243,y=54,z=-715,dx=2,dy=5,dz=2,tag=!Dialogue14] run tp @a[x=243,y=54,z=-715,dx=2,dy=5,dz=2,tag=!Dialogue14] ~3 ~ ~

#Johto/Kanto/IP Connector Johto Gate Block
tellraw @a[x=-1225,y=63,z=52,dx=15,dy=5,dz=3,tag=!Dialogue222,scores={TalkTime=0}] {"text":"<Officer Jenny> This way leads to Mt. Silver. You'll see scary-strong Pokémon out there. You're not ready for it."}
tellraw @a[x=-1225,y=63,z=52,dx=15,dy=5,dz=3,tag=!Dialogue222,scores={TalkTime=0},tag=AllGyms] {"text":"<Officer Jenny> This way leads to Mt. Silver. You'll see scary-strong Pokémon out there. See Prof. Oak if you think you are tough enough!."}
execute at @a[x=-1225,y=63,z=52,dx=15,dy=5,dz=3,distance=..10,tag=!Dialogue222] run tp @a[x=-1225,y=63,z=52,dx=15,dy=5,dz=3,distance=..10,tag=!Dialogue222] ~-10 ~ ~

#Kanto Block
tellraw @a[x=-1301,y=63,z=52,dx=9,dy=5,dz=3,tag=!Dialogue222,scores={TalkTime=0}] {"text":"<Officer Jenny> Hold there! This way leads to Kanto... But this path's blocked for the time being, I'm afraid."}
execute at @a[x=-1301,y=63,z=52,dx=9,dy=5,dz=3,tag=!Dialogue222] run tp @a[x=-1301,y=63,z=52,dx=9,dy=5,dz=3,tag=!Dialogue222] ~10 ~ ~

#Kanto-side block
tellraw @a[x=-1358,y=64,z=49,dx=20,dy=5,dz=8,tag=!Dialogue222] {"text":"<Officer Jenny> Hold there! This way leads to Victory Road... But this path's blocked for the time being, I'm afraid."}
execute at @a[x=-1358,y=64,z=49,dx=20,dy=5,dz=8,tag=!Dialogue222] run tp @a[x=-1358,y=64,z=49,dx=20,dy=5,dz=8,tag=!Dialogue222] ~-10 ~ ~

#RocketHQ tps player out of generator room if don't have Dialogue63 tag
execute at @a[x=-122,y=44,z=176,dx=10,dy=5,dz=5,scores={TalkTime=0},tag=!Dialogue63] run tp @a[x=-122,y=44,z=176,dx=10,dy=5,dz=5,scores={TalkTime=0},tag=!Dialogue63] ~ ~ ~-5

#Tin Tower
tellraw @a[x=369,y=58,z=287,dx=6,dy=10,dz=15,tag=!Morty] ["",{"text":"<Monk> Tin Tower is off limits to anyone without Ecruteak Gym's Badge.","color":"white"}]
execute at @a[x=369,y=58,z=287,dx=6,dy=10,dz=15,tag=!Morty] run tp @a[x=369,y=58,z=287,dx=6,dy=10,dz=15,tag=!Morty] ~0 64 ~-10

#New Bark Town without Surf
tellraw @a[x=-787,y=59,z=-525,dx=33,dy=10,dz=22,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=-787,y=59,z=-525,dx=33,dy=10,dz=22,tag=!Dialogue33] run tp @a[x=-787,y=59,z=-525,dx=33,dy=10,dz=22,tag=!Dialogue33] ~10 64 ~0

#Cherrygrove without Surf
tellraw @a[x=-187,y=60,z=-575,dx=93,dy=3,dz=81,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=-187,y=60,z=-575,dx=93,dy=3,dz=81,tag=!Dialogue33] run tp @a[x=-187,y=60,z=-575,dx=93,dy=3,dz=81,tag=!Dialogue33] -155 64 -518

#Violet City Right without Surf
tellraw @a[x=23,y=60,z=-43,dx=26,dy=3,dz=23,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=23,y=60,z=-43,dx=26,dy=3,dz=23,tag=!Dialogue33] run tp @a[x=23,y=60,z=-43,dx=26,dy=3,dz=23,tag=!Dialogue33] 51 64 -29

#Violet City Left without Surf
tellraw @a[x=95,y=60,z=-54,dx=20,dy=3,dz=27,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=95,y=60,z=-54,dx=20,dy=3,dz=27,tag=!Dialogue33] run tp @a[x=95,y=60,z=-54,dx=20,dy=3,dz=27,tag=!Dialogue33] 109 64 -57

#Ruins of Alph without Surf
tellraw @a[x=183,y=60,z=-231,dx=22,dy=3,dz=19,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=183,y=60,z=-231,dx=22,dy=3,dz=19,tag=!Dialogue33] run tp @a[x=183,y=60,z=-231,dx=22,dy=3,dz=19,tag=!Dialogue33] 198 64 -207

#Union Cave 1F without Surf
tellraw @a[x=196,y=40,z=-732,dx=16,dy=3,dz=16,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=196,y=40,z=-732,dx=16,dy=3,dz=16,tag=!Dialogue33] run tp @a[x=196,y=40,z=-732,dx=16,dy=3,dz=16,tag=!Dialogue33] 199 44 -710

#Union Cave B1F without Surf
tellraw @a[x=170,y=24,z=-679,dx=25,dy=3,dz=34,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=170,y=24,z=-679,dx=25,dy=3,dz=34,tag=!Dialogue33] run tp @a[x=170,y=24,z=-679,dx=25,dy=3,dz=34,tag=!Dialogue33] 173 28 -684

#Slow Poke Well without Surf
tellraw @a[x=281,y=36,z=-717,dx=24,dy=2,dz=15,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=281,y=36,z=-717,dx=24,dy=2,dz=15,tag=!Dialogue33] run tp @a[x=281,y=36,z=-717,dx=24,dy=2,dz=15,tag=!Dialogue33] 303 39 -699

#Route 35 without Surf
tellraw @a[x=488,y=60,z=-244,dx=21,dy=3,dz=46,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=488,y=60,z=-244,dx=21,dy=3,dz=46,tag=!Dialogue33] run tp @a[x=488,y=60,z=-244,dx=21,dy=3,dz=46,tag=!Dialogue33] 485 64 -223

#Route 42 Check 1 without surf
tellraw @a[x=10,y=60,z=156,dx=33,dy=3,dz=47,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=10,y=60,z=156,dx=33,dy=3,dz=47,tag=!Dialogue33] run tp @a[x=10,y=60,z=156,dx=33,dy=3,dz=47,tag=!Dialogue33] 11 64 180

#Route 42 Check 2 without surf
tellraw @a[x=44,y=60,z=160,dx=29,dy=3,dz=47,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=44,y=60,z=160,dx=29,dy=3,dz=47,tag=!Dialogue33] run tp @a[x=44,y=60,z=160,dx=29,dy=3,dz=47,tag=!Dialogue33] 66 64 183

#Route 42 Check 3 without surf
tellraw @a[x=125,y=60,z=145,dx=24,dy=3,dz=72,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=125,y=60,z=145,dx=24,dy=3,dz=72,tag=!Dialogue33] run tp @a[x=125,y=60,z=145,dx=24,dy=3,dz=72,tag=!Dialogue33] 124 64 176

#Route 42 Check 4 without surf
tellraw @a[x=149,y=60,z=145,dx=34,dy=3,dz=71,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=149,y=60,z=145,dx=34,dy=3,dz=71,tag=!Dialogue33] run tp @a[x=149,y=60,z=145,dx=34,dy=3,dz=71,tag=!Dialogue33] 179 64 195


#Lake of Rage without Surf
execute as @a[x=-239,y=52,z=587,dx=141,dy=10,dz=120,tag=!Dialogue33] run tellraw @s[tag=!Morty] {"text":"This area requires Surf to access & the Fog Badge to use outside of battle!","italic":true,"color":"gray"}
execute as @a[x=-239,y=52,z=587,dx=141,dy=10,dz=120,tag=!Dialogue33] run tp @s[tag=!Morty] -164 64 590

#Whirl Islands without Surf and Morty
tellraw @a[x=877,y=40,z=-108,dx=85,dy=25,dz=15,tag=!Morty] {"text":"This area requires Surf to access & the Fog Badge to use outside of battle!","italic":true,"color":"gray"}
execute at @a[x=877,y=40,z=-108,dx=85,dy=25,dz=15,tag=!Morty] run tp @a[x=877,y=40,z=-108,dx=85,dy=25,dz=15,tag=!Morty] ~ 64 ~10

#Route 34 Surf required
tellraw @a[x=488,y=60,z=-630,dx=21,dy=3,dz=117,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=488,y=60,z=-630,dx=21,dy=3,dz=117,tag=!Dialogue33] run tp @a[x=488,y=60,z=-630,dx=21,dy=3,dz=117,tag=!Dialogue33] ~-10 64 ~

#Fuchsia City South Entrance blocked until beating Blaine
tellraw @a[x=-2423,y=64,z=-660,dx=50,dy=20,dz=20,tag=!Blaine,scores={TalkTime=0,Cooldown=0}] ["",{"text":"<"},{"text":"Policeman","color":"aqua"},{"text":"> The beach to Route 19 is closed indefinitely due to a volcano's eruption off the coast. I wonder if the people of Cinnabar are safe..."}]
scoreboard players set @a[x=-2423,y=64,z=-660,dx=50,dy=20,dz=20,tag=!Blaine] Cooldown 10
execute at @a[x=-2423,y=64,z=-660,dx=50,dy=20,dz=20,tag=!Blaine] run tp @a[x=-2423,y=64,z=-660,dx=50,dy=20,dz=20,tag=!Blaine] ~ ~ ~10

#Dark Cave opne after Pryce
tellraw @a[x=-290,y=59,z=-68,dx=20,dy=4,dz=55,tag=!Dialogue33] {"text":"This area requires Surf to access!","italic":true,"color":"gray"}
execute at @a[x=-290,y=59,z=-68,dx=20,dy=4,dz=55,tag=!Dialogue33] run tp @a[x=-290,y=59,z=-68,dx=20,dy=4,dz=55,tag=!Dialogue33] -266 64 -26


#Tohjo Falls
tellraw @a[x=-914,y=63,z=-503,dx=5,dy=3,dz=4,tag=!Clair] ["",{"text":"You need more badges!","color":"white","italic":true}]
execute at @a[x=-914,y=63,z=-503,dx=5,dy=3,dz=4,tag=!Clair] run tp @a[x=-914,y=63,z=-503,dx=5,dy=3,dz=4,tag=!Clair] ~ 64 ~-10

#Ecruteak City Gym
playsound flee ambient @a[x=-1075,y=0,z=550,dx=31,dy=62,dz=51] ~ ~ ~ 1000 1 1
execute at @a[x=-1075,y=0,z=550,dx=31,dy=62,dz=51] run tp @a[x=-1075,y=0,z=550,dx=31,dy=62,dz=51] -1059 65 543 0 10
effect give @e[x=-1091,y=0,z=522,dx=63,dy=63,dz=105,type=pixelmon:pixelmon] minecraft:levitation 1 1 true
execute at @e[x=-1091,y=0,z=522,dx=63,dy=63,dz=105,type=item] run tp @e[x=-1091,y=0,z=522,dx=63,dy=63,dz=105,type=item] -1059 65 538

#Mahogany Town Story Checks
tellraw @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,scores={Cooldown=0},tag=!Jasmine] {"text":"<...> Hiya, kid! I see you're new in Mahogany Town. Since you're new, you should try a yummy RageCandyBar! Right now, it can be yours for just $300! Want one?"}
tellraw @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,scores={Cooldown=0},tag=!Morty] {"text":"<...> Hiya, kid! I see you're new in Mahogany Town. Since you're new, you should try a yummy RageCandyBar! Right now, it can be yours for just $300! Want one?"}
tellraw @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,scores={Cooldown=0},tag=!Pryce] {"text":"<...> Hiya, kid! I see you're new in Mahogany Town. Since you're new, you should try a yummy RageCandyBar! Right now, it can be yours for just $300! Want one?"}
scoreboard players set @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,tag=!Morty] Cooldown 25
scoreboard players set @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,tag=!Pryce] Cooldown 25
scoreboard players set @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,tag=!Jasmine] Cooldown 25
execute at @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,tag=!Jasmine] run tp @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,tag=!Jasmine] ~10 ~ ~
execute at @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,tag=!Pryce] run tp @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,tag=!Pryce] ~10 ~ ~
execute at @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,tag=!Morty] run tp @a[x=-222,y=63,z=183,dx=10,dy=10,dz=13,tag=!Morty] ~10 ~ ~


#Cianwood & Route 47 Gate
tellraw @a[x=1306,y=64,z=-369,distance=..7,tag=!Dialogue42] ["",{"text":"Route Gate closed until Olivine Lighthouse reopens.","color":"white","italic":true}]
execute at @a[x=1306,y=64,z=-369,distance=..7,tag=!Dialogue42] run tp @a[x=1306,y=64,z=-369,distance=..7,tag=!Dialogue42] ~-7 ~ ~


#SS Aqua Olivine, a ticket is needed
execute if entity @a[x=744,y=73,z=-193,distance=..15,tag=!Dialogue101,scores={Cooldown=0}] run tellraw @a[x=744,y=73,z=-193,distance=..15,tag=!Dialogue101,scores={Cooldown=0}] {"text":"You need an S.S. Ticket to ride on the S.S. Aqua!","italic":true,"color":"gray"}
execute if entity @a[x=744,y=73,z=-193,distance=..15,tag=!Dialogue101,scores={Cooldown=0}] run scoreboard players set @a[x=744,y=73,z=-193,distance=..15,tag=!Dialogue101,scores={Cooldown=0}] Cooldown 20

#RocketHQ Reopens stairs if player needs it
execute at @a[x=-164,y=63,z=213,distance=..15,tag=Dialogue53] run fill -164 63 213 -161 63 216 air
execute at @a[x=-164,y=63,z=213,distance=..15,tag=Dialogue53] run fill -160 63 213 -160 63 216 minecraft:stone_brick_stairs[facing=east]


#Battle Tower blocked until player has beaten ELite Four
tellraw @a[x=903,y=64,z=-42,dx=2,dy=2,dz=10,scores={IP=0,Cooldown=0}] ["",{"text":"Only Elite Four Champions may enter!","color":"white","italic":true}]
scoreboard players add @a[x=903,y=64,z=-42,dx=2,dy=2,dz=10,scores={IP=0,Cooldown=0}] Cooldown 30
execute at @a[x=903,y=64,z=-42,dx=2,dy=2,dz=10,scores={IP=0}] run tp @a[x=903,y=64,z=-42,dx=2,dy=2,dz=10,scores={IP=0}] ~ ~ ~-5


#Viridian City Sleeping Snorlax
tellraw @a[x=-2912,y=57,z=-75,dx=13,dy=20,dz=30,scores={TalkTime=0,Cooldown=0},tag=!Dialogue142] {"text":"A sleeping Snorlax blocks your path. Perhaps music might wake it.","italic":true,"color":"gray"}
tellraw @a[x=-2900,y=57,z=-75,dx=11,dy=20,dz=30,scores={TalkTime=0,Cooldown=0},tag=!Dialogue142] {"text":"A sleeping Snorlax blocks your path. Perhaps music might wake it.","italic":true,"color":"gray"}
execute as @a[x=-2900,y=57,z=-75,dx=11,dy=20,dz=30,tag=!Dialogue142,scores={Cooldown=0}] run scoreboard players add @s Cooldown 40
execute as @a[x=-2912,y=57,z=-75,dx=13,dy=20,dz=30,tag=!Dialogue142,scores={Cooldown=0}] run scoreboard players add @s Cooldown 40
execute at @a[x=-2900,y=57,z=-75,dx=11,dy=20,dz=30,tag=!Dialogue142] run tp @a[x=-2900,y=57,z=-75,dx=11,dy=20,dz=30,tag=!Dialogue142] ~10 ~ ~
execute at @a[x=-2912,y=57,z=-75,dx=13,dy=20,dz=30,tag=!Dialogue142] run tp @a[x=-2912,y=57,z=-75,dx=13,dy=20,dz=30,tag=!Dialogue142] ~-10 ~ ~


#Radio Tower Shutter Open and Close
#Locked
execute if block 502 43 -244 minecraft:air if entity @a[x=498,y=42,z=-246,distance=..25] run fill 502 43 -244 502 46 -239 minecraft:iron_bars

#Unlocked
execute if block 502 43 -244 minecraft:iron_bars if entity @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69] run playsound minecraft:entity.iron_golem.death ambient @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block 502 43 -244 minecraft:iron_bars if entity @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69] run scoreboard players set @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69,scores={Cooldown=0}] Cooldown 10
execute if block 502 43 -244 minecraft:iron_bars if entity @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69] run fill 502 43 -244 502 46 -239 minecraft:air


#Goldenrod Underground iron door unlock
#Locked
execute if block 480 55 -321 minecraft:air if entity @a[x=480,y=54,z=-326,distance=..25] run fill 478 57 -322 479 55 -324 air
execute if block 480 55 -321 minecraft:air if entity @a[x=480,y=54,z=-326,distance=..25] run clone -728 66 -333 -726 64 -334 479 55 -322

#Unlocked
execute if block 480 55 -321 minecraft:iron_block if entity @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66] run playsound minecraft:entity.iron_golem.death ambient @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block 480 55 -321 minecraft:iron_block if entity @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66] run scoreboard players set @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66,scores={Cooldown=0}] Cooldown 10
execute if block 480 55 -321 minecraft:iron_block if entity @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66] run clone -724 66 -333 -723 64 -335 478 55 -324
execute if block 480 55 -321 minecraft:iron_block if entity @a[x=480,y=54,z=-326,distance=..10,tag=Dialogue66] run fill 481 55 -322 479 57 -321 air


#Rocket HQ Admin Room Gate
#TEST
execute if block -105 37 187 minecraft:air if entity @a[x=-107,y=33,z=181,distance=..25,scores={TalkTime=0}] run fill -105 37 187 -98 34 187 minecraft:iron_bars

execute if block -105 37 187 minecraft:iron_bars if entity @a[x=-107,y=33,z=181,dx=11,dy=5,dz=12,tag=Dialogue56,tag=Dialogue57,scores={TalkTime=0}] run fill -105 37 187 -98 34 187 minecraft:air


#Rocket HQ Generator Room
execute if entity @a[x=-124,y=45,z=169,dx=12,dy=5,dz=11,tag=Dialogue63,scores={TalkTime=0}] run fill -122 45 175 -114 48 175 minecraft:air
execute unless entity @a[x=-124,y=45,z=169,dx=12,dy=5,dz=11,tag=Dialogue63,scores={TalkTime=0}] run fill -122 45 175 -114 48 175 minecraft:iron_bars
execute if entity @a[x=-124,y=45,z=169,dx=12,dy=5,dz=11,scores={TalkTime=1..,DialogueTrigger=63}] run fill -122 45 175 -114 48 175 minecraft:air


#Elite Four Gates
#TEST
#Will
execute if block -1288 67 446 minecraft:air if entity @a[x=-1287,y=67,z=446,distance=..25] run clone -730 64 -328 -728 67 -328 -1289 67 446

execute if block -1288 67 446 minecraft:quartz_pillar if entity @a[x=-1287,y=67,z=446,distance=..15,tag=Dialogue87] run playsound minecraft:entity.iron_golem.death ambient @a[x=-1287,y=67,z=446,distance=..15,tag=Dialogue87,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block -1288 67 446 minecraft:quartz_pillar if entity @a[x=-1287,y=67,z=446,distance=..15,tag=Dialogue87] run scoreboard players set @a[x=-1287,y=67,z=446,distance=..15,tag=Dialogue87,scores={Cooldown=0}] Cooldown 10
execute if block -1288 67 446 minecraft:quartz_pillar if entity @a[x=-1287,y=67,z=446,distance=..15,tag=Dialogue87] run fill -1287 67 446 -1289 70 446 air

#Koga
execute if block -1288 67 523 minecraft:air if entity @a[x=-1287,y=67,z=523,distance=..25] run clone -730 64 -328 -728 67 -328 -1289 67 523

execute if block -1288 67 523 minecraft:quartz_pillar if entity @a[x=-1287,y=67,z=523,distance=..15,tag=Dialogue89] run playsound minecraft:entity.iron_golem.death ambient @a[x=-1287,y=67,z=523,distance=..15,tag=Dialogue89,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block -1288 67 523 minecraft:quartz_pillar if entity @a[x=-1287,y=67,z=523,distance=..15,tag=Dialogue89] run scoreboard players set @a[x=-1287,y=67,z=523,distance=..15,tag=Dialogue89,scores={Cooldown=0}] Cooldown 10
execute if block -1288 67 523 minecraft:quartz_pillar if entity @a[x=-1287,y=67,z=523,distance=..15,tag=Dialogue89] run fill -1287 67 523 -1289 70 523 air

#Bruno
execute if block -1288 70 599 minecraft:air if entity @a[x=-1287,y=70,z=599,distance=..25] run clone -730 64 -328 -728 67 -328 -1289 70 599

execute if block -1288 70 599 minecraft:quartz_pillar if entity @a[x=-1287,y=70,z=599,distance=..15,tag=Dialogue91] run playsound minecraft:entity.iron_golem.death ambient @a[x=-1287,y=70,z=599,distance=..15,tag=Dialogue91,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block -1288 70 599 minecraft:quartz_pillar if entity @a[x=-1287,y=70,z=599,distance=..15,tag=Dialogue91] run scoreboard players set @a[x=-1287,y=70,z=599,distance=..15,tag=Dialogue91,scores={Cooldown=0}] Cooldown 10
execute if block -1288 70 599 minecraft:quartz_pillar if entity @a[x=-1287,y=70,z=599,distance=..15,tag=Dialogue91] run fill -1287 70 599 -1289 73 599 air

#Karen
execute if block -1288 73 675 minecraft:air if entity @a[x=-1287,y=73,z=675,distance=..25] run clone -730 64 -328 -728 67 -328 -1289 73 675

execute if block -1288 73 675 minecraft:quartz_pillar if entity @a[x=-1287,y=73,z=675,distance=..15,tag=Dialogue93] run playsound minecraft:entity.iron_golem.death ambient @a[x=-1287,y=73,z=675,distance=..15,tag=Dialogue93,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block -1288 73 675 minecraft:quartz_pillar if entity @a[x=-1287,y=73,z=675,distance=..15,tag=Dialogue93] run scoreboard players set @a[x=-1287,y=73,z=675,distance=..15,tag=Dialogue93,scores={Cooldown=0}] Cooldown 10
execute if block -1288 73 675 minecraft:quartz_pillar if entity @a[x=-1287,y=73,z=675,distance=..15,tag=Dialogue93] run fill -1287 76 675 -1289 73 675 air

#Lance
execute if block -1288 78 750 minecraft:air if entity @a[x=-1292,y=77,z=744,dx=8,dy=5,dz=6] run clone -730 64 -328 -726 68 -328 -1290 78 750

execute if block -1290 78 750 minecraft:quartz_pillar if entity @a[x=-1292,y=77,z=744,dx=8,dy=5,dz=6,tag=Dialogue95] run playsound minecraft:entity.iron_golem.death ambient @a[x=-1293,y=77,z=738,dx=10,dy=5,dz=12,tag=Dialogue95,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block -1290 78 750 minecraft:quartz_pillar if entity @a[x=-1292,y=77,z=744,dx=8,dy=5,dz=6,tag=Dialogue95] run scoreboard players set @a[x=-1293,y=77,z=738,dx=10,dy=5,dz=12,tag=Dialogue95,scores={Cooldown=0}] Cooldown 30
execute if block -1290 78 750 minecraft:quartz_pillar if entity @a[x=-1292,y=77,z=744,dx=8,dy=5,dz=6,tag=Dialogue95] run fill -1290 78 750 -1286 82 750 air



#REMATCH GATES

#Will
execute if block -1341 67 446 minecraft:air if entity @a[x=-1341,y=67,z=446,distance=..25] run clone -730 64 -328 -728 67 -328 -1342 67 446

execute if block -1341 67 446 minecraft:quartz_pillar if entity @a[x=-1341,y=67,z=446,distance=..15,tag=Dialogue87] run playsound minecraft:entity.iron_golem.death ambient @a[x=-1341,y=67,z=446,distance=..15,tag=Dialogue87,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block -1341 67 446 minecraft:quartz_pillar if entity @a[x=-1341,y=67,z=446,distance=..15,tag=Dialogue87] run scoreboard players set @a[x=-1341,y=67,z=446,distance=..15,tag=Dialogue87,scores={Cooldown=0}] Cooldown 10
execute if block -1341 67 446 minecraft:quartz_pillar if entity @a[x=-1341,y=67,z=446,distance=..15,tag=Dialogue87] run fill -1342 67 446 -1340 70 446 air

#Koga
execute if block -1341 67 523 minecraft:air if entity @a[x=-1342,y=67,z=523,distance=..25] run clone -730 64 -328 -728 67 -328 -1342 67 523

execute if block -1341 67 523 minecraft:quartz_pillar if entity @a[x=-1342,y=67,z=523,distance=..15,tag=Dialogue89] run playsound minecraft:entity.iron_golem.death ambient @a[x=-1342,y=67,z=523,distance=..15,tag=Dialogue89,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block -1341 67 523 minecraft:quartz_pillar if entity @a[x=-1342,y=67,z=523,distance=..15,tag=Dialogue89] run scoreboard players set @a[x=-1342,y=67,z=523,distance=..15,tag=Dialogue89,scores={Cooldown=0}] Cooldown 10
execute if block -1341 67 523 minecraft:quartz_pillar if entity @a[x=-1342,y=67,z=523,distance=..15,tag=Dialogue89] run fill -1342 67 523 -1340 70 523 air

#Bruno
execute if block -1341 70 599 minecraft:air if entity @a[x=-1342,y=70,z=599,distance=..25] run clone -730 64 -328 -728 67 -328 -1342 70 599

execute if block -1341 70 599 minecraft:quartz_pillar if entity @a[x=-1342,y=70,z=599,distance=..15,tag=Dialogue91] run playsound minecraft:entity.iron_golem.death ambient @a[x=-1342,y=70,z=599,distance=..15,tag=Dialogue91,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block -1341 70 599 minecraft:quartz_pillar if entity @a[x=-1342,y=70,z=599,distance=..15,tag=Dialogue91] run scoreboard players set @a[x=-1342,y=70,z=599,distance=..15,tag=Dialogue91,scores={Cooldown=0}] Cooldown 10
execute if block -1341 70 599 minecraft:quartz_pillar if entity @a[x=-1342,y=70,z=599,distance=..15,tag=Dialogue91] run fill -1342 70 599 -1340 73 599 air

#Karen
execute if block -1341 73 675 minecraft:air if entity @a[x=-1342,y=73,z=675,distance=..25] run clone -730 64 -328 -728 67 -328 -1342 73 675

execute if block -1341 73 675 minecraft:quartz_pillar if entity @a[x=-1342,y=73,z=675,distance=..15,tag=Dialogue93] run playsound minecraft:entity.iron_golem.death ambient @a[x=-1342,y=73,z=675,distance=..15,tag=Dialogue93,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block -1341 73 675 minecraft:quartz_pillar if entity @a[x=-1342,y=73,z=675,distance=..15,tag=Dialogue93] run scoreboard players set @a[x=-1342,y=73,z=675,distance=..15,tag=Dialogue93,scores={Cooldown=0}] Cooldown 10
execute if block -1341 73 675 minecraft:quartz_pillar if entity @a[x=-1342,y=73,z=675,distance=..15,tag=Dialogue93] run fill -1342 73 675 -1340 76 675 air

#Lance
execute if block -1341 78 750 minecraft:air if entity @a[x=-1345,y=77,z=744,dx=8,dy=5,dz=6] run clone -730 64 -328 -726 68 -328 -1343 78 750

execute if block -1341 78 750 minecraft:quartz_pillar if entity @a[x=-1345,y=77,z=744,dx=8,dy=5,dz=6,tag=Dialogue95] run playsound minecraft:entity.iron_golem.death ambient @a[x=-1341,y=78,z=750,distance=..5,tag=Dialogue95,scores={Cooldown=0}] ~ ~ ~ 1 1 1
execute if block -1341 78 750 minecraft:quartz_pillar if entity @a[x=-1345,y=77,z=744,dx=8,dy=5,dz=6,tag=Dialogue95] run scoreboard players set @a[x=-1341,y=78,z=750,distance=..5,tag=Dialogue95,scores={Cooldown=0}] Cooldown 30
execute if block -1341 78 750 minecraft:quartz_pillar if entity @a[x=-1345,y=77,z=744,dx=8,dy=5,dz=6,tag=Dialogue95] run fill -1343 78 750 -1339 82 750 air



#Tps player from Rematched Hall of Fame to real Hall of Fame room
execute at @a[x=-1354,y=77,z=751,dx=24,dy=10,dz=34] run clone -730 64 -328 -726 68 -328 -1343 78 750
execute at @a[x=-1354,y=77,z=751,dx=24,dy=10,dz=34] run tp @a[x=-1354,y=77,z=751,dx=24,dy=10,dz=34] ~53 ~ ~




#Whirlpools
#Whirl Islands
#Northeast whirlpool
execute if entity @a[x=912,y=61,z=-364,distance=..25,tag=!Dialogue64] run clone -714 66 -333 -720 72 -327 909 58 -367

execute if entity @a[x=912,y=61,z=-364,distance=..15,tag=Dialogue64] run fill 909 48 -360 915 64 -367 minecraft:air replace minecraft:barrier
execute if entity @a[x=912,y=61,z=-364,distance=..15,tag=Dialogue64] run fill 909 48 -360 915 63 -367 minecraft:water

#Northwest
execute if entity @a[x=1024,y=61,z=-282,distance=..25,tag=!Dialogue64] run clone -714 66 -333 -720 72 -327 1021 58 -285

execute if entity @a[x=1024,y=61,z=-282,distance=..15,tag=Dialogue64] run fill 1027 53 -286 1021 64 -279 minecraft:air replace minecraft:barrier
execute if entity @a[x=1024,y=61,z=-282,distance=..15,tag=Dialogue64] run fill 1027 53 -286 1021 63 -279 minecraft:water

#Southwest
execute if entity @a[x=1114,y=61,z=-396,distance=..25,tag=!Dialogue64] run clone -714 66 -333 -720 72 -327 1111 58 -400

execute if entity @a[x=1114,y=61,z=-396,distance=..15,tag=Dialogue64] run fill 1111 56 -394 1117 64 -400 minecraft:air replace minecraft:barrier
execute if entity @a[x=1114,y=61,z=-396,distance=..15,tag=Dialogue64] run fill 1111 56 -394 1117 63 -400 minecraft:water

#Southeast
execute if entity @a[x=991,y=61,z=-500,distance=..25,tag=!Dialogue64] run clone -714 66 -333 -720 72 -327 988 58 -499

execute if entity @a[x=991,y=61,z=-500,distance=..15,tag=Dialogue64] run fill 988 58 -493 994 64 -499 minecraft:air replace minecraft:barrier
execute if entity @a[x=991,y=61,z=-500,distance=..15,tag=Dialogue64] run fill 988 58 -493 994 63 -499 minecraft:water
