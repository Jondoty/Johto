#Player steps on TallGrass with !GrassRoll tag
#Command detects on !GrassRoll, adds a TallGrass score
#Runs Function
#Function adds GrassRoll tag
#Function sets TallGrass and Air scores to 0
#Player steps off grass
#Command detects tag=GrassRoll and sets Air score to 1
#When Air=1 and tag=GrassRoll, remove GrassRoll



#Main world commands
#execute @a[score_DogEncounter_min=1,score_DogEncounter=1,tag=!GrassRoll] ~ ~ ~ detect ~ ~ ~ minecraft:tallgrass 1 scoreboard players set @s TallGrass 1
#execute @a[score_EonEncounter_min=1,score_EonEncounter=1,tag=!GrassRoll] ~ ~ ~ detect ~ ~ ~ minecraft:tallgrass 1 scoreboard players set @s TallGrass 1

#function custom:grassencounters if @a[tag=!GrassRoll,score_TallGrass_min=1]


#execute @a[tag=GrassRoll] ~ ~ ~ detect ~ ~ ~ minecraft:air 0 scoreboard players set @s Air 1
#scoreboard players tag @a[score_Air_min=1,tag=GrassRoll] remove GrassRoll






#Rolls RNG Score
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players set @e[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 0
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 1
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 2
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 4
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 8
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 16
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 32
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 64

scoreboard players operation @a[scores={TallGrass=1..}] rng = @e[x=-867,y=69,z=-200,dy=3] rng

#Adds success tag if rng roll is under 7/128 (5.4% success chance)
tag @a[scores={TallGrass=1..,rng=0..7}] add EonEncounterSuccess



#Rolls RNG score again for species
#Rolls RNG Score
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players set @e[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 0
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 1
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 2
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 4
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 8
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 16
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 32
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 64

scoreboard players operation @a[tag=EonEncounterSuccess] rng = @e[x=-867,y=69,z=-200,dy=3] rng





#Latios and Latias Success

#Latios
###execute as @a[tag=EonEncounterSuccess,scores={LatiosCD=0,EonEncounter=1..,rng=0..63}] run pokespawn Latios lvl:45 gr:7
execute as @a[tag=EonEncounterSuccess,scores={LatiosCD=0,EonEncounter=1..,rng=0..63}] run playsound latios record @s ~ ~ ~ 1 1 1
execute as @a[tag=EonEncounterSuccess,scores={LatiosCD=0,EonEncounter=1..,rng=0..63}] run tellraw @s {"text":"Latios jumped out at you!"}
execute as @a[tag=EonEncounterSuccess,scores={LatiosCD=0,EonEncounter=1..,rng=0..63}] run scoreboard players set @s Latios 1
execute as @a[tag=EonEncounterSuccess,scores={Latios=1..,LatiosCD=0,EonEncounter=1..,rng=0..63}] run tag @s remove EonEncounterSuccess


#Latias
###execute as @a[tag=EonEncounterSuccess,scores={Latias=0,LatiasCD=0,EonEncounter=1..,rng=64..127}] run pokespawn Latias lvl:45 gr:7
execute as @a[tag=EonEncounterSuccess,scores={Latias=0,LatiasCD=0,EonEncounter=1..,rng=64..127}] run playsound latias record @s ~ ~ ~ 1 1 1
execute as @a[tag=EonEncounterSuccess,scores={Latias=0,LatiasCD=0,EonEncounter=1..,rng=64..127}] run tellraw @s {"text":"Latias jumped out at you!"}
execute as @a[tag=EonEncounterSuccess,scores={Latias=0,LatiasCD=0,EonEncounter=1..,rng=64..127}] run scoreboard players set @s Latias 1
execute as @a[tag=EonEncounterSuccess,scores={Latias=1..,LatiasCD=0,EonEncounter=1..,rng=64..127}] run tag @s remove EonEncounterSuccess


#Gives players with both Latios and Latias a score of EonEncounter 2
scoreboard players set @a[scores={Latios=1..,Latias=1..}] EonEncounter 2






#Dog Trio

#Rolls initial RNG Score
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players set @e[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 0
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 1
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 2
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 4
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 8
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 16
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 32
execute as @a[scores={TallGrass=1..},limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 64

scoreboard players operation @a[scores={TallGrass=1..,DogEncounter=1}] rng = @e[x=-867,y=69,z=-200,dy=3] rng


#Adds success tag if rng roll is under 7/128 (5.4% success chance)
tag @a[scores={TallGrass=1..,rng=0..7}] add DogEncounterSuccess




#Rolls RNG score again for species
#Rolls RNG Score
execute as @a[tag=DogEncounterSuccess,limit=1] run scoreboard players set @e[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 0
execute as @a[tag=DogEncounterSuccess,limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 1
execute as @a[tag=DogEncounterSuccess,limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 2
execute as @a[tag=DogEncounterSuccess,limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 4
execute as @a[tag=DogEncounterSuccess,limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 8
execute as @a[tag=DogEncounterSuccess,limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 16
execute as @a[tag=DogEncounterSuccess,limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 32
execute as @a[tag=DogEncounterSuccess,limit=1] run scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,limit=1] rng 64

scoreboard players operation @a[tag=DogEncounterSuccess] rng = @e[x=-867,y=69,z=-200,dy=3] rng





#Raikou
###execute as @a[tag=DogEncounterSuccess,scores={Raikou=0,RaikouCD=0,DogEncounter=1,rng=0..63}] run pokespawn Raikou lvl:45 gr:7
execute as @a[tag=DogEncounterSuccess,scores={Raikou=0,RaikouCD=0,DogEncounter=1,rng=0..63}] run playsound raikou record @s ~ ~ ~ 1 1 1
execute as @a[tag=DogEncounterSuccess,scores={Raikou=0,RaikouCD=0,DogEncounter=1,rng=0..63}] run tellraw @s {"text":"Raikou jumped out at you!"}
execute as @a[tag=DogEncounterSuccess,scores={Raikou=0,RaikouCD=0,DogEncounter=1,rng=0..63}] run scoreboard players set @s Raikou 1
execute as @a[tag=DogEncounterSuccess,scores={Raikou=1..,RaikouCD=0,DogEncounter=1,rng=0..63}] run tag @s remove DogEncounterSuccess


#Entei
###execute as @a[tag=DogEncounterSuccess,scores={Entei=0,EnteiCD=0,DogEncounter=1,rng=64..127}] run pokespawn Entei lvl:45 gr:7
execute as @a[tag=DogEncounterSuccess,scores={Entei=0,EnteiCD=0,DogEncounter=1,rng=64..127}] run playsound entei record @s ~ ~ ~ 1 1 1
execute as @a[tag=DogEncounterSuccess,scores={Entei=0,EnteiCD=0,DogEncounter=1,rng=64..127}] run tellraw @s {"text":"Entei jumped out at you!"}
execute as @a[tag=DogEncounterSuccess,scores={Entei=0,EnteiCD=0,DogEncounter=1,rng=64..127}] run scoreboard players set @s Entei 1
execute as @a[tag=DogEncounterSuccess,scores={Entei_min=1..,EnteiCD=0,DogEncounter=1,rng=64..127}] run tag @s remove DogEncounterSuccess


#Suicune
#Moved to Dialogues
#execute @a[tag=DogEncounterSuccess,score_Suicune=0,score_SuicuneCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=86,score_rng=127] ~ ~3 ~ pokespawn suicune lvl:45 gr:7
#execute @a[tag=DogEncounterSuccess,score_Suicune=0,score_SuicuneCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=86,score_rng=127] ~ ~ ~ playsound Suicune record @s ~ ~ ~ 1 1 1
#execute @a[tag=DogEncounterSuccess,score_Suicune=0,score_SuicuneCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=86,score_rng=127] ~ ~ ~ tellraw @s {"text":"Suicune jumped out at you!"}
#execute @a[tag=DogEncounterSuccess,score_Suicune=0,score_SuicuneCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=86,score_rng=127] ~ ~ ~ scoreboard players set @s Suicune 1
#execute @a[tag=DogEncounterSuccess,score_Suicune_min=1,score_SuicuneCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=86,score_rng=127] ~ ~ ~ scoreboard players tag @s remove DogEncounterSuccess


#Gives players with all dogs a score of DogEncounter 2
scoreboard players set @a[scores={Entei=1..,Raikou=1..}] DogEncounter 2





#Revisits function if player has the success tag without a species they can spawn
#Might be causing crashing bugs, turned off
#function custom:grassencounters if @a[tag=DogEncounterSuccess,score_DogEncounter_min=1,score_DogEncounter=1]
#function custom:grassencounters if @a[tag=EonEncounterSuccess,score_EonEncounter_min=1,score_EonEncounter=1]






tag @a[scores={TallGrass=1..}] add GrassRoll
scoreboard players set @a[scores={TallGrass=1..}] Air 0
scoreboard players set @a[scores={TallGrass=1..}] TallGrass 0


tag @a[scores={TallGrass=1..}] remove DogEncounterSuccess
tag @a[scores={TallGrass=1..}] remove EonEncounterSuccess













#
