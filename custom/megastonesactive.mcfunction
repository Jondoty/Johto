

#Example from Kalos:

#Aggronite, Cyllage Gym
#execute @e[name=Aggronite,type=armor_stand,x=-1700,y=115,z=-1924,r=2] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Aggronite=0,r=30]
#execute @e[name=Aggronite,type=armor_stand,x=-1700,y=115,z=-1924,r=2] ~ ~ ~ /give @p[score_Aggronite=0,r=2] pixelmon:Aggronite 1
#execute @e[name=Aggronite,type=armor_stand,x=-1700,y=115,z=-1924,r=2] ~ ~ ~ /playsound megastoneget ambient @p[score_Aggronite=0,r=2] ~ ~ ~ 100 1 1
#execute @e[name=Aggronite,type=armor_stand,x=-1700,y=115,z=-1924,r=2] ~ ~ ~ /tellraw @p[score_Aggronite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
#execute @e[name=Aggronite,type=armor_stand,x=-1700,y=115,z=-1924,r=2] ~ ~ ~ /scoreboard players set @p[score_Aggronite=0,r=2] Aggronite 1



#Summon in an Armor Stand as base for Mega Stone:
#/summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,DisabledSlots:2039583}
#/scoreboard players tag @e[r=3,type=armor_stand] add MegaStone



#Enables Mega Stones function
#/setblock -809 64 -331 minecraft:redstone_block

#Disables
#/setblock -809 64 -331 minecraft:iron_block

#Runs function:
#execute @e[tag=MegaStone,type=armor_stand] ~ ~ ~ /function custom:megastonesactive if @a[score_MegaStones_min=1,r=30]



#Beedrillite, Viridian Forest, -1594 64 310
execute @e[type=armor_stand,x=-1594,y=63,z=310,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Beedrillite=0,r=30]
execute @e[type=armor_stand,x=-1594,y=63,z=310,dy=4] ~ ~ ~ /give @p[score_Beedrillite=0,r=2] pixelmon:beedrillite 1
execute @e[type=armor_stand,x=-1594,y=63,z=310,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Beedrillite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-1594,y=63,z=310,dy=4] ~ ~ ~ /tellraw @p[score_Beedrillite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-1594,y=63,z=310,dy=4] ~ ~ ~ /scoreboard players set @p[score_Beedrillite=0,r=2] Beedrillite 1


#Pidgeotite, Route 1, -1662 61 -121
execute @e[type=armor_stand,x=-1662,y=61,z=-121,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Pidgeotite=0,r=30]
execute @e[type=armor_stand,x=-1662,y=61,z=-121,dy=4] ~ ~ ~ /give @p[score_Pidgeotite=0,r=2] pixelmon:Pidgeotite 1
execute @e[type=armor_stand,x=-1662,y=61,z=-121,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Pidgeotite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-1662,y=61,z=-121,dy=4] ~ ~ ~ /tellraw @p[score_Pidgeotite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-1662,y=61,z=-121,dy=4] ~ ~ ~ /scoreboard players set @p[score_Pidgeotite=0,r=2] Pidgeotite 1


#Slowbronite, Slowpoke Well, 291 26 -702
execute @e[type=armor_stand,x=291,y=26,z=-702,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Slowbronite=0,r=30]
execute @e[type=armor_stand,x=291,y=26,z=-702,dy=4] ~ ~ ~ /give @p[score_Slowbronite=0,r=2] pixelmon:Slowbronite 1
execute @e[type=armor_stand,x=291,y=26,z=-702,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Slowbronite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=291,y=26,z=-702,dy=4] ~ ~ ~ /tellraw @p[score_Slowbronite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=291,y=26,z=-702,dy=4] ~ ~ ~ /scoreboard players set @p[score_Slowbronite=0,r=2] Slowbronite 1


#Alakazite, Saffron City, -2846 61 404
execute @e[type=armor_stand,x=-2846,y=61,z=404,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Alakazite=0,r=30]
execute @e[type=armor_stand,x=-2846,y=61,z=404,dy=4] ~ ~ ~ /give @p[score_Alakazite=0,r=2] pixelmon:Alakazite 1
execute @e[type=armor_stand,x=-2846,y=61,z=404,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Alakazite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-2846,y=61,z=404,dy=4] ~ ~ ~ /tellraw @p[score_Alakazite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-2846,y=61,z=404,dy=4] ~ ~ ~ /scoreboard players set @p[score_Alakazite=0,r=2] Alakazite 1


#Gengarite, Lavendar Town, -3229 61 359
execute @e[type=armor_stand,x=-3229,y=61,z=359,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Gengarite=0,r=30]
execute @e[type=armor_stand,x=-3229,y=61,z=359,dy=4] ~ ~ ~ /give @p[score_Gengarite=0,r=2] pixelmon:Gengarite 1
execute @e[type=armor_stand,x=-3229,y=61,z=359,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Gengarite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-3229,y=61,z=359,dy=4] ~ ~ ~ /tellraw @p[score_Gengarite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-3229,y=61,z=359,dy=4] ~ ~ ~ /scoreboard players set @p[score_Gengarite=0,r=2] Gengarite 1


#Kangaskhanite, Fuchsia City, -2448 61 -469
execute @e[type=armor_stand,x=-2448,y=61,z=-469,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Kangaskhanite=0,r=30]
execute @e[type=armor_stand,x=-2448,y=61,z=-469,dy=4] ~ ~ ~ /give @p[score_Kangaskhanite=0,r=2] pixelmon:Kangaskhanite 1
execute @e[type=armor_stand,x=-2448,y=61,z=-469,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Kangaskhanite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-2448,y=61,z=-469,dy=4] ~ ~ ~ /tellraw @p[score_Kangaskhanite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-2448,y=61,z=-469,dy=4] ~ ~ ~ /scoreboard players set @p[score_Kangaskhanite=0,r=2] Kangaskhanite 1


#Pinsirite, Ilex Forest, 560 61 -695
execute @e[type=armor_stand,x=560,y=61,z=-695,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Pinsirite=0,r=30]
execute @e[type=armor_stand,x=560,y=61,z=-695,dy=4] ~ ~ ~ /give @p[score_Pinsirite=0,r=2] pixelmon:Pinsirite 1
execute @e[type=armor_stand,x=560,y=61,z=-695,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Pinsirite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=560,y=61,z=-695,dy=4] ~ ~ ~ /tellraw @p[score_Pinsirite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=560,y=61,z=-695,dy=4] ~ ~ ~ /scoreboard players set @p[score_Pinsirite=0,r=2] Pinsirite 1


#Gyaradosite, Lake of Rage, -128 61 578
execute @e[type=armor_stand,x=-128,y=61,z=578,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Gyaradosite=0,r=30]
execute @e[type=armor_stand,x=-128,y=61,z=578,dy=4] ~ ~ ~ /give @p[score_Gyaradosite=0,r=2] pixelmon:Gyaradosite 1
execute @e[type=armor_stand,x=-128,y=61,z=578,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Gyaradosite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-128,y=61,z=578,dy=4] ~ ~ ~ /tellraw @p[score_Gyaradosite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-128,y=61,z=578,dy=4] ~ ~ ~ /scoreboard players set @p[score_Gyaradosite=0,r=2] Gyaradosite 1


#Aerodactylite, Cinnabar Island, -1680 61 -889
execute @e[type=armor_stand,x=-1680,y=61,z=-889,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Aerodactylite=0,r=30]
execute @e[type=armor_stand,x=-1680,y=61,z=-889,dy=4] ~ ~ ~ /give @p[score_Aerodactylite=0,r=2] pixelmon:Aerodactylite 1
execute @e[type=armor_stand,x=-1680,y=61,z=-889,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Aerodactylite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-1680,y=61,z=-889,dy=4] ~ ~ ~ /tellraw @p[score_Aerodactylite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-1680,y=61,z=-889,dy=4] ~ ~ ~ /scoreboard players set @p[score_Aerodactylite=0,r=2] Aerodactylite 1


#Mewtwonite_X, Cerulean Cave, -2645 50 888
execute @e[type=armor_stand,x=-2645,y=50,z=888,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Mewtwonite_X=0,r=30]
execute @e[type=armor_stand,x=-2645,y=50,z=888,dy=4] ~ ~ ~ /give @p[score_Mewtwonite_X=0,r=2] pixelmon:Mewtwonite_X 1
execute @e[type=armor_stand,x=-2645,y=50,z=888,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Mewtwonite_X=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-2645,y=50,z=888,dy=4] ~ ~ ~ /tellraw @p[score_Mewtwonite_X=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-2645,y=50,z=888,dy=4] ~ ~ ~ /scoreboard players set @p[score_Mewtwonite_X=0,r=2] Mewtwonite_X 1


#Mewtwonite_Y, Cerulean Cave, -2587 52 846
execute @e[type=armor_stand,x=-2587,y=52,z=846,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Mewtwonite_Y=0,r=30]
execute @e[type=armor_stand,x=-2587,y=52,z=846,dy=4] ~ ~ ~ /give @p[score_Mewtwonite_Y=0,r=2] pixelmon:Mewtwonite_Y 1
execute @e[type=armor_stand,x=-2587,y=52,z=846,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Mewtwonite_Y=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-2587,y=52,z=846,dy=4] ~ ~ ~ /tellraw @p[score_Mewtwonite_Y=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-2587,y=52,z=846,dy=4] ~ ~ ~ /scoreboard players set @p[score_Mewtwonite_Y=0,r=2] Mewtwonite_Y 1


#Steelixite, Olivine City, 835 61 8
execute @e[type=armor_stand,x=835,y=61,z=8,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Steelixite=0,r=30]
execute @e[type=armor_stand,x=835,y=61,z=8,dy=4] ~ ~ ~ /give @p[score_Steelixite=0,r=2] pixelmon:Steelixite 1
execute @e[type=armor_stand,x=835,y=61,z=8,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Steelixite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=835,y=61,z=8,dy=4] ~ ~ ~ /tellraw @p[score_Steelixite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=835,y=61,z=8,dy=4] ~ ~ ~ /scoreboard players set @p[score_Steelixite=0,r=2] Steelixite 1


#Ampharosite, Olivine City, 703 61 -77
execute @e[type=armor_stand,x=703,y=61,z=-77,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Ampharosite=0,r=30]
execute @e[type=armor_stand,x=703,y=61,z=-77,dy=4] ~ ~ ~ /give @p[score_Ampharosite=0,r=2] pixelmon:Ampharosite 1
execute @e[type=armor_stand,x=703,y=61,z=-77,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Ampharosite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=703,y=61,z=-77,dy=4] ~ ~ ~ /tellraw @p[score_Ampharosite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=703,y=61,z=-77,dy=4] ~ ~ ~ /scoreboard players set @p[score_Ampharosite=0,r=2] Ampharosite 1


#Scizorite, Viridian Forest, -1627 61 439
execute @e[type=armor_stand,x=-1627,y=61,z=439,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Scizorite=0,r=30]
execute @e[type=armor_stand,x=-1627,y=61,z=439,dy=4] ~ ~ ~ /give @p[score_Scizorite=0,r=2] pixelmon:Scizorite 1
execute @e[type=armor_stand,x=-1627,y=61,z=439,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Scizorite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-1627,y=61,z=439,dy=4] ~ ~ ~ /tellraw @p[score_Scizorite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-1627,y=61,z=439,dy=4] ~ ~ ~ /scoreboard players set @p[score_Scizorite=0,r=2] Scizorite 1


#Heracronite, Ilex Forest, 566 61 -623
execute @e[type=armor_stand,x=566,y=61,z=-623,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Heracronite=0,r=30]
execute @e[type=armor_stand,x=566,y=61,z=-623,dy=4] ~ ~ ~ /give @p[score_Heracronite=0,r=2] pixelmon:Heracronite 1
execute @e[type=armor_stand,x=566,y=61,z=-623,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Heracronite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=566,y=61,z=-623,dy=4] ~ ~ ~ /tellraw @p[score_Heracronite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=566,y=61,z=-623,dy=4] ~ ~ ~ /scoreboard players set @p[score_Heracronite=0,r=2] Heracronite 1


#Houndoominite, Route 7, -2609 61 310
execute @e[type=armor_stand,x=-2609,y=61,z=310,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Houndoominite=0,r=30]
execute @e[type=armor_stand,x=-2609,y=61,z=310,dy=4] ~ ~ ~ /give @p[score_Houndoominite=0,r=2] pixelmon:Houndoominite 1
execute @e[type=armor_stand,x=-2609,y=61,z=310,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Houndoominite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-2609,y=61,z=310,dy=4] ~ ~ ~ /tellraw @p[score_Houndoominite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-2609,y=61,z=310,dy=4] ~ ~ ~ /scoreboard players set @p[score_Houndoominite=0,r=2] Houndoominite 1


#Tyranitarite, Mt. Silver, -1027 83 322
execute @e[type=armor_stand,x=-1027,y=83,z=322,dy=4] ~ ~ ~ /particle reddust ~ ~0.25 ~ 2 2 2 1 10 normal @a[score_Tyranitarite=0,r=30]
execute @e[type=armor_stand,x=-1027,y=83,z=322,dy=4] ~ ~ ~ /give @p[score_Tyranitarite=0,r=2] pixelmon:Tyranitarite 1
execute @e[type=armor_stand,x=-1027,y=83,z=322,dy=4] ~ ~ ~ /playsound pixelmon:pixelmon.block.pokelootobtained ambient @p[score_Tyranitarite=0,r=2] ~ ~ ~ 10 1 1
execute @e[type=armor_stand,x=-1027,y=83,z=322,dy=4] ~ ~ ~ /tellraw @p[score_Tyranitarite=0,r=2] {"text":"You found a Mega Stone!","italic":true,"color":"gray"}
execute @e[type=armor_stand,x=-1027,y=83,z=322,dy=4] ~ ~ ~ /scoreboard players set @p[score_Tyranitarite=0,r=2] Tyranitarite 1

#Grants advancement when all scores are _min=1
execute @a[score_Beedrillite_min=1,score_Pidgeotite_min=1,score_Slowbronite_min=1,score_Alakazite_min=1,score_Gengarite_min=1,score_Kangaskhanite_min=1,score_Pinsirite_min=1,score_Gyaradosite_min=1,score_Aerodactylite_min=1,score_Mewtwonite_X_min=1,score_Mewtwonite_Y_min=1,score_Steelixite_min=1,score_Ampharosite_min=1,score_Scizorite_min=1,score_Heracronite_min=1,score_Houndoominite_min=1,score_Tyranitarite_min=1] ~ ~ ~ advancement grant @s only johto:allstones
