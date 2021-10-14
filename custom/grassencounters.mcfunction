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
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players set @e[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 0
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 1
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 2
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 4
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 8
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 16
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 32
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 64

scoreboard players operation @a[score_TallGrass_min=1] rng = @e[x=-867,y=69,z=-200,dy=3] rng

#Adds success tag if rng roll is under 7/128 (5.4% success chance)
scoreboard players tag @a[score_TallGrass_min=1,score_rng_min=0,score_rng=7] add EonEncounterSuccess



#Rolls RNG score again for species
#Rolls RNG Score
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players set @e[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 0
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 1
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 2
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 4
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 8
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 16
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 32
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 64

scoreboard players operation @a[tag=EonEncounterSuccess] rng = @e[x=-867,y=69,z=-200,dy=3] rng





#Latios and Latias Success

#Latios
execute @a[tag=EonEncounterSuccess,score_Latios=0,score_LatiosCD=0,score_EonEncounter_min=1,score_rng_min=0,score_rng=63] ~ ~1 ~ pokespawn Latios lvl:45 gr:7
execute @a[tag=EonEncounterSuccess,score_Latios=0,score_LatiosCD=0,score_EonEncounter_min=1,score_rng_min=0,score_rng=63] ~ ~ ~ playsound latios record @s ~ ~ ~ 1 1 1
execute @a[tag=EonEncounterSuccess,score_Latios=0,score_LatiosCD=0,score_EonEncounter_min=1,score_rng_min=0,score_rng=63] ~ ~ ~ tellraw @s {"text":"Latios jumped out at you!"}
execute @a[tag=EonEncounterSuccess,score_Latios=0,score_LatiosCD=0,score_EonEncounter_min=1,score_rng_min=0,score_rng=63] ~ ~ ~ scoreboard players set @s Latios 1
execute @a[tag=EonEncounterSuccess,score_Latios_min=1,score_LatiosCD=0,score_EonEncounter_min=1,score_rng_min=0,score_rng=63] ~ ~ ~ scoreboard players tag @s remove EonEncounterSuccess


#Latias
execute @a[tag=EonEncounterSuccess,score_Latias=0,score_LatiasCD=0,score_EonEncounter_min=1,score_rng_min=64,score_rng=127] ~ ~1 ~ pokespawn Latias lvl:45 gr:7
execute @a[tag=EonEncounterSuccess,score_Latias=0,score_LatiasCD=0,score_EonEncounter_min=1,score_rng_min=64,score_rng=127] ~ ~ ~ playsound latias record @s ~ ~ ~ 1 1 1
execute @a[tag=EonEncounterSuccess,score_Latias=0,score_LatiasCD=0,score_EonEncounter_min=1,score_rng_min=64,score_rng=127] ~ ~ ~ tellraw @s {"text":"Latias jumped out at you!"}
execute @a[tag=EonEncounterSuccess,score_Latias=0,score_LatiasCD=0,score_EonEncounter_min=1,score_rng_min=64,score_rng=127] ~ ~ ~ scoreboard players set @s Latias 1
execute @a[tag=EonEncounterSuccess,score_Latias_min=1,score_LatiasCD=0,score_EonEncounter_min=1,score_rng_min=64,score_rng=127] ~ ~ ~ scoreboard players tag @s remove EonEncounterSuccess


#Gives players with both Latios and Latias a score of EonEncounter 2
scoreboard players set @a[score_Latios_min=1,score_Latias_min=1] EonEncounter 2






#Dog Trio

#Rolls initial RNG Score
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players set @e[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 0
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 1
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 2
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 4
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 8
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 16
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 32
execute @a[score_TallGrass_min=1,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 64

scoreboard players operation @a[score_TallGrass_min=1,score_DogEncounter_min=1,score_DogEncounter=1] rng = @e[x=-867,y=69,z=-200,dy=3] rng


#Adds success tag if rng roll is under 7/128 (5.4% success chance)
scoreboard players tag @a[score_TallGrass_min=1,score_rng_min=0,score_rng=7] add DogEncounterSuccess




#Rolls RNG score again for species
#Rolls RNG Score
execute @a[tag=DogEncounterSuccess,c=1] ~ ~ ~ scoreboard players set @e[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 0
execute @a[tag=DogEncounterSuccess,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 1
execute @a[tag=DogEncounterSuccess,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 2
execute @a[tag=DogEncounterSuccess,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 4
execute @a[tag=DogEncounterSuccess,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 8
execute @a[tag=DogEncounterSuccess,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 16
execute @a[tag=DogEncounterSuccess,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 32
execute @a[tag=DogEncounterSuccess,c=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 64

scoreboard players operation @a[tag=DogEncounterSuccess] rng = @e[x=-867,y=69,z=-200,dy=3] rng





#Raikou
execute @a[tag=DogEncounterSuccess,score_Raikou=0,score_RaikouCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=0,score_rng=63] ~ ~3 ~ pokespawn Raikou lvl:45 gr:7
execute @a[tag=DogEncounterSuccess,score_Raikou=0,score_RaikouCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=0,score_rng=63] ~ ~ ~ playsound raikou record @s ~ ~ ~ 1 1 1
execute @a[tag=DogEncounterSuccess,score_Raikou=0,score_RaikouCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=0,score_rng=63] ~ ~ ~ tellraw @s {"text":"Raikou jumped out at you!"}
execute @a[tag=DogEncounterSuccess,score_Raikou=0,score_RaikouCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=0,score_rng=63] ~ ~ ~ scoreboard players set @s Raikou 1
execute @a[tag=DogEncounterSuccess,score_Raikou_min=1,score_RaikouCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=0,score_rng=63] ~ ~ ~ scoreboard players tag @s remove DogEncounterSuccess


#Entei
execute @a[tag=DogEncounterSuccess,score_Entei=0,score_EnteiCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=64,score_rng=127] ~ ~3 ~ pokespawn Entei lvl:45 gr:7
execute @a[tag=DogEncounterSuccess,score_Entei=0,score_EnteiCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=64,score_rng=127] ~ ~ ~ playsound entei record @s ~ ~ ~ 1 1 1
execute @a[tag=DogEncounterSuccess,score_Entei=0,score_EnteiCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=64,score_rng=127] ~ ~ ~ tellraw @s {"text":"Entei jumped out at you!"}
execute @a[tag=DogEncounterSuccess,score_Entei=0,score_EnteiCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=64,score_rng=127] ~ ~ ~ scoreboard players set @s Entei 1
execute @a[tag=DogEncounterSuccess,score_Entei_min=1,score_EnteiCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=64,score_rng=127] ~ ~ ~ scoreboard players tag @s remove DogEncounterSuccess


#Suicune
#Moved to Dialogues
#execute @a[tag=DogEncounterSuccess,score_Suicune=0,score_SuicuneCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=86,score_rng=127] ~ ~3 ~ pokespawn suicune lvl:45 gr:7
#execute @a[tag=DogEncounterSuccess,score_Suicune=0,score_SuicuneCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=86,score_rng=127] ~ ~ ~ playsound Suicune record @s ~ ~ ~ 1 1 1
#execute @a[tag=DogEncounterSuccess,score_Suicune=0,score_SuicuneCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=86,score_rng=127] ~ ~ ~ tellraw @s {"text":"Suicune jumped out at you!"}
#execute @a[tag=DogEncounterSuccess,score_Suicune=0,score_SuicuneCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=86,score_rng=127] ~ ~ ~ scoreboard players set @s Suicune 1
#execute @a[tag=DogEncounterSuccess,score_Suicune_min=1,score_SuicuneCD=0,score_DogEncounter_min=1,score_DogEncounter=1,score_rng_min=86,score_rng=127] ~ ~ ~ scoreboard players tag @s remove DogEncounterSuccess


#Gives players with all dogs a score of DogEncounter 2
scoreboard players set @a[score_Entei_min=1,score_Raikou_min=1] DogEncounter 2





#Revisits function if player has the success tag without a species they can spawn
#Might be causing crashing bugs, turned off
#function custom:grassencounters if @a[tag=DogEncounterSuccess,score_DogEncounter_min=1,score_DogEncounter=1]
#function custom:grassencounters if @a[tag=EonEncounterSuccess,score_EonEncounter_min=1,score_EonEncounter=1]






scoreboard players tag @a[score_TallGrass_min=1] add GrassRoll
scoreboard players set @a[score_TallGrass_min=1] Air 0
scoreboard players set @a[score_TallGrass_min=1] TallGrass 0


scoreboard players tag @a[score_TallGrass_min=1] remove DogEncounterSuccess
scoreboard players tag @a[score_TallGrass_min=1] remove EonEncounterSuccess













#
