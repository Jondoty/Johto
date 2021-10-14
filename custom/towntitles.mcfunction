#summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,CustomName:"TownTitles",DisabledSlots:2039583}
#execute @e[name=TownTitles,type=armor_stand] ~ ~ ~ function custom:towntitles if @a[r=30,score_TownDisplay=0]


#Looking True South: rxm=-50,rx=50,rym=-70,ry=70


#Removes TowmDisplay score if present on player
#scoreboard players remove @a[score_TownDisplay_min=1] TownDisplay 1


#New Bark Town
execute @a[x=-762,y=0,z=-526,dx=10,dy=240,dz=32,rxm=-50,rx=50,rym=-160,ry=-20,score_TownDisplay=0] ~ ~ ~ title @s title {"text":"New Bark Town","color":"white"}
execute @a[x=-762,y=0,z=-526,dx=10,dy=240,dz=32,rxm=-50,rx=50,rym=-160,ry=-20,score_TownDisplay=0] ~ ~ ~ title @s subtitle {"text":"Winds of a New Beginning","italic":true}
execute @a[x=-762,y=0,z=-526,dx=10,dy=240,dz=32,rxm=-50,rx=50,rym=-160,ry=-20,score_TownDisplay=0] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-657,y=0,z=-528,dx=12,dy=240,dz=16,rxm=-50,rx=50,rym=20,ry=160,score_TownDisplay=0] ~ ~ ~ title @s title {"text":"New Bark Town","color":"white"}
execute @a[x=-657,y=0,z=-528,dx=12,dy=240,dz=16,rxm=-50,rx=50,rym=20,ry=160,score_TownDisplay=0] ~ ~ ~ title @s subtitle {"text":"Winds of a New Beginning","italic":true}
execute @a[x=-657,y=0,z=-528,dx=12,dy=240,dz=16,rxm=-50,rx=50,rym=20,ry=160,score_TownDisplay=0] ~ ~ ~ scoreboard players set @s TownDisplay 20


#CherryGrove City
execute @a[x=-287,y=0,z=-516,dx=8,dy=240,dz=14,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Cherrygrove City","color":"white"}
execute @a[x=-287,y=0,z=-516,dx=8,dy=240,dz=14,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"The City of Fragrant Flowers","italic":true}
execute @a[x=-287,y=0,z=-516,dx=8,dy=240,dz=14,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-190,y=0,z=-491,dx=13,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Cherrygrove City","color":"white"}
execute @a[x=-190,y=0,z=-491,dx=13,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"The City of Fragrant Flowers","italic":true}
execute @a[x=-190,y=0,z=-491,dx=13,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Violet City
execute @a[x=-25,y=0,z=-111,dx=8,dy=240,dz=14,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Violet City","color":"white"}
execute @a[x=-25,y=0,z=-111,dx=8,dy=240,dz=14,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"The City of Nostalgic Scents","italic":true}
execute @a[x=-25,y=0,z=-111,dx=8,dy=240,dz=14,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=115,y=0,z=-99,dx=12,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Violet City","color":"white"}
execute @a[x=115,y=0,z=-99,dx=12,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"The City of Nostalgic Scents","italic":true}
execute @a[x=115,y=0,z=-99,dx=12,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=149,y=0,z=-36,dx=12,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Violet City","color":"white"}
execute @a[x=149,y=0,z=-36,dx=12,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"The City of Nostalgic Scents","italic":true}
execute @a[x=149,y=0,z=-36,dx=12,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Azalea Town
execute @a[x=277,y=48,z=-736,dx=8,dy=240,dz=20,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Azalea Town","color":"white"}
execute @a[x=277,y=48,z=-736,dx=8,dy=240,dz=20,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"Living Happily with Pokémon","italic":true}
execute @a[x=277,y=48,z=-736,dx=8,dy=240,dz=20,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=387,y=0,z=-740,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Azalea Town","color":"white"}
execute @a[x=387,y=0,z=-740,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"Living Happily with Pokémon","italic":true}
execute @a[x=387,y=0,z=-740,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Goldenrod City
execute @a[x=464,y=63,z=-476,dx=24,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Goldenrod City","color":"white"}
execute @a[x=464,y=63,z=-476,dx=24,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"A Happening Big City","italic":true}
execute @a[x=464,y=63,z=-476,dx=24,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=463,y=63,z=-286,dx=28,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Goldenrod City","color":"white"}
execute @a[x=463,y=63,z=-286,dx=28,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"A Happening Big City","italic":true}
execute @a[x=463,y=63,z=-286,dx=28,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Ecruteak City
execute @a[x=368,y=0,z=165,dx=13,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Ecruteak City","color":"white"}
execute @a[x=368,y=0,z=165,dx=13,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"A Historical City","italic":true}
execute @a[x=368,y=0,z=165,dx=13,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=278,y=0,z=183,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Ecruteak City","color":"white"}
execute @a[x=278,y=0,z=183,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"A Historical City","italic":true}
execute @a[x=278,y=0,z=183,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=465,y=0,z=228,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Ecruteak City","color":"white"}
execute @a[x=465,y=0,z=228,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"A Historical City","italic":true}
execute @a[x=465,y=0,z=228,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Olivine City
execute @a[x=744,y=0,z=31,dx=26,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Olivine City","color":"white"}
execute @a[x=744,y=0,z=31,dx=26,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"The Port with Sea Breezes","italic":true}
execute @a[x=744,y=0,z=31,dx=26,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=836,y=0,z=-99,dx=8,dy=240,dz=58,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Olivine City","color":"white"}
execute @a[x=836,y=0,z=-99,dx=8,dy=240,dz=58,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"The Port with Sea Breezes","italic":true}
execute @a[x=836,y=0,z=-99,dx=8,dy=240,dz=58,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Cianwood City
execute @a[x=1295,y=0,z=-373,dx=8,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Cianwood City","color":"white"}
execute @a[x=1295,y=0,z=-373,dx=8,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"A Port of Crashing Waves","italic":true}
execute @a[x=1295,y=0,z=-373,dx=8,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=1186,y=0,z=-406,dx=21,dy=240,dz=15,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Cianwood City","color":"white"}
execute @a[x=1186,y=0,z=-406,dx=21,dy=240,dz=15,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"A Port of Crashing Waves","italic":true}
execute @a[x=1186,y=0,z=-406,dx=21,dy=240,dz=15,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Mahogany Town
execute @a[x=-98,y=63,z=194,dx=8,dy=100,dz=24,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Mahogany Town","color":"white"}
execute @a[x=-98,y=63,z=194,dx=8,dy=100,dz=24,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"Home of the Ninja","italic":true}
execute @a[x=-98,y=63,z=194,dx=8,dy=100,dz=24,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-207,y=62,z=183,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Mahogany Town","color":"white"}
execute @a[x=-207,y=62,z=183,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"Home of the Ninja","italic":true}
execute @a[x=-207,y=62,z=183,dx=8,dy=240,dz=12,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-154,y=62,z=224,dx=21,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Mahogany Town","color":"white"}
execute @a[x=-154,y=62,z=224,dx=21,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"Home of the Ninja","italic":true}
execute @a[x=-154,y=62,z=224,dx=21,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Blackthorn City
execute @a[x=-740,y=0,z=218,dx=23,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Blackthorn City","color":"white"}
execute @a[x=-740,y=0,z=218,dx=23,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"A Quiet Mountain Retreat","italic":true}
execute @a[x=-740,y=0,z=218,dx=23,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-620,y=0,z=142,dx=38,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Blackthorn City","color":"white"}
execute @a[x=-620,y=0,z=142,dx=38,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"A Quiet Mountain Retreat","italic":true}
execute @a[x=-620,y=0,z=142,dx=38,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20



#-----------------------------------------------Kanto-----------------------------------------------



#Indigo Plateau
execute @a[x=-1301,y=0,z=269,dx=18,dy=240,dz=15,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Indigo Plateau","color":"white"}
execute @a[x=-1301,y=0,z=269,dx=18,dy=240,dz=15,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"The Ultimate Goal of Trainers!","italic":true}
execute @a[x=-1301,y=0,z=269,dx=18,dy=240,dz=15,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Pallet Town
execute @a[x=-1703,y=0,z=-261,dx=11,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Pallet Town","color":"white"}
execute @a[x=-1703,y=0,z=-261,dx=11,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"Shades of Your Journey Await!","italic":true}
execute @a[x=-1703,y=0,z=-261,dx=11,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-1687,y=0,z=-351,dx=19,dy=240,dz=11,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Pallet Town","color":"white"}
execute @a[x=-1687,y=0,z=-351,dx=19,dy=240,dz=11,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"Shades of Your Journey Await!","italic":true}
execute @a[x=-1687,y=0,z=-351,dx=19,dy=240,dz=11,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Viridian City
execute @a[x=-1702,y=0,z=-45,dx=20,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Viridian City","color":"white"}
execute @a[x=-1702,y=0,z=-45,dx=20,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"The City of Evergreen","italic":true}
execute @a[x=-1702,y=0,z=-45,dx=20,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-1608,y=0,z=42,dx=10,dy=240,dz=21,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Viridian City","color":"white"}
execute @a[x=-1608,y=0,z=42,dx=10,dy=240,dz=21,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"The City of Evergreen","italic":true}
execute @a[x=-1608,y=0,z=42,dx=10,dy=240,dz=21,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-1693,y=0,z=119,dx=32,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Viridian City","color":"white"}
execute @a[x=-1693,y=0,z=119,dx=32,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"The City of Evergreen","italic":true}
execute @a[x=-1693,y=0,z=119,dx=32,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Pewter City
execute @a[x=-1693,y=0,z=545,dx=21,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Pewter City","color":"white"}
execute @a[x=-1693,y=0,z=545,dx=21,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"Between Rugged Mountains","italic":true}
execute @a[x=-1693,y=0,z=545,dx=21,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-1781,y=0,z=612,dx=9,dy=240,dz=20,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Pewter City","color":"white"}
execute @a[x=-1781,y=0,z=612,dx=9,dy=240,dz=20,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"Between Rugged Mountains","italic":true}
execute @a[x=-1781,y=0,z=612,dx=9,dy=240,dz=20,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Cerulean City
execute @a[x=-2666,y=0,z=711,dx=9,dy=240,dz=19,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Cerulean City","color":"white"}
execute @a[x=-2666,y=0,z=711,dx=9,dy=240,dz=19,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"The Floral Lagoon City","italic":true}
execute @a[x=-2666,y=0,z=711,dx=9,dy=240,dz=19,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-2777,y=0,z=802,dx=37,dy=240,dz=10,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Cerulean City","color":"white"}
execute @a[x=-2777,y=0,z=802,dx=37,dy=240,dz=10,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"The Floral Lagoon City","italic":true}
execute @a[x=-2777,y=0,z=802,dx=37,dy=240,dz=10,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-2845,y=0,z=727,dx=9,dy=240,dz=14,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Cerulean City","color":"white"}
execute @a[x=-2845,y=0,z=727,dx=9,dy=240,dz=14,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"The Floral Lagoon City","italic":true}
execute @a[x=-2845,y=0,z=727,dx=9,dy=240,dz=14,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-2798,y=0,z=646,dx=92,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Cerulean City","color":"white"}
execute @a[x=-2798,y=0,z=646,dx=92,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"The Floral Lagoon City","italic":true}
execute @a[x=-2798,y=0,z=646,dx=92,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Lavender Town
execute @a[x=-3225,y=0,z=322,dx=8,dy=240,dz=21,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Lavender Town","color":"white"}
execute @a[x=-3225,y=0,z=322,dx=8,dy=240,dz=21,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"The Noble Town","italic":true}
execute @a[x=-3225,y=0,z=322,dx=8,dy=240,dz=21,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-3287,y=0,z=282,dx=12,dy=240,dz=10,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Lavender Town","color":"white"}
execute @a[x=-3287,y=0,z=282,dx=12,dy=240,dz=10,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"The Noble Town","italic":true}
execute @a[x=-3287,y=0,z=282,dx=12,dy=240,dz=10,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-3287,y=0,z=385,dx=27,dy=240,dz=10,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Lavender Town","color":"white"}
execute @a[x=-3287,y=0,z=385,dx=27,dy=240,dz=10,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"The Noble Town","italic":true}
execute @a[x=-3287,y=0,z=385,dx=27,dy=240,dz=10,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Saffron City
execute @a[x=-2873,y=0,z=322,dx=8,dy=240,dz=27,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Saffron City","color":"white"}
execute @a[x=-2873,y=0,z=322,dx=8,dy=240,dz=27,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"Shining Big City","italic":true}
execute @a[x=-2873,y=0,z=322,dx=8,dy=240,dz=27,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-2771,y=0,z=433,dx=30,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Saffron City","color":"white"}
execute @a[x=-2771,y=0,z=433,dx=30,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"Shining Big City","italic":true}
execute @a[x=-2771,y=0,z=433,dx=30,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-2637,y=0,z=325,dx=11,dy=240,dz=24,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Saffron City","color":"white"}
execute @a[x=-2637,y=0,z=325,dx=11,dy=240,dz=24,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"Shining Big City","italic":true}
execute @a[x=-2637,y=0,z=325,dx=11,dy=240,dz=24,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-2772,y=0,z=244,dx=31,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Saffron City","color":"white"}
execute @a[x=-2772,y=0,z=244,dx=31,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"Shining Big City","italic":true}
execute @a[x=-2772,y=0,z=244,dx=31,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Celadon City
execute @a[x=-2492,y=0,z=357,dx=14,dy=240,dz=45,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Celadon City","color":"white"}
execute @a[x=-2492,y=0,z=357,dx=14,dy=240,dz=45,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"City of Rainbow Dreams","italic":true}
execute @a[x=-2492,y=0,z=357,dx=14,dy=240,dz=45,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-2240,y=0,z=312,dx=8,dy=240,dz=17,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Celadon City","color":"white"}
execute @a[x=-2240,y=0,z=312,dx=8,dy=240,dz=17,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"City of Rainbow Dreams","italic":true}
execute @a[x=-2240,y=0,z=312,dx=8,dy=240,dz=17,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Fuchsia City
execute @a[x=-2290,y=0,z=-553,dx=10,dy=240,dz=20,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s title {"text":"Fuchsia City","color":"white"}
execute @a[x=-2290,y=0,z=-553,dx=10,dy=240,dz=20,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ title @s subtitle {"text":"Happening and Passing City","italic":true}
execute @a[x=-2290,y=0,z=-553,dx=10,dy=240,dz=20,score_TownDisplay=0,rxm=-50,rx=50,rym=20,ry=160] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-2518,y=0,z=-560,dx=11,dy=240,dz=17,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Fuchsia City","color":"white"}
execute @a[x=-2518,y=0,z=-560,dx=11,dy=240,dz=17,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"Happening and Passing City","italic":true}
execute @a[x=-2518,y=0,z=-560,dx=11,dy=240,dz=17,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-2423,y=0,z=-649,dx=50,dy=256,dz=15,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s title {"text":"Fuchsia City","color":"white"}
execute @a[x=-2423,y=0,z=-649,dx=50,dy=256,dz=15,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ title @s subtitle {"text":"Happening and Passing City","italic":true}
execute @a[x=-2423,y=0,z=-649,dx=50,dy=256,dz=15,score_TownDisplay=0,rxm=-50,rx=50,rym=-70,ry=70] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Cinnabar Island
execute @a[x=-1764,y=0,z=-818,dx=141,dy=240,dz=11,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Cinnabar Island","color":"white"}
execute @a[x=-1764,y=0,z=-818,dx=141,dy=240,dz=11,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"The Ravaged Town of the Past","italic":true}
execute @a[x=-1764,y=0,z=-818,dx=141,dy=240,dz=11,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-1782,y=0,z=-967,dx=18,dy=240,dz=135,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Cinnabar Island","color":"white"}
execute @a[x=-1782,y=0,z=-967,dx=18,dy=240,dz=135,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"The Ravaged Town of the Past","italic":true}
execute @a[x=-1782,y=0,z=-967,dx=18,dy=240,dz=135,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20


#Vermilion City
execute @a[x=-2758,y=0,z=26,dx=18,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s title {"text":"Vermilion City","color":"white"}
execute @a[x=-2758,y=0,z=26,dx=18,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ title @s subtitle {"text":"The Port of Exquisite Sunsets","italic":true}
execute @a[x=-2758,y=0,z=26,dx=18,dy=240,dz=8,score_TownDisplay=0,rxm=-50,rx=50,rym=110,ry=-110] ~ ~ ~ scoreboard players set @s TownDisplay 20

execute @a[x=-2850,y=0,z=-60,dx=14,dy=240,dz=16,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s title {"text":"Vermilion City","color":"white"}
execute @a[x=-2850,y=0,z=-60,dx=14,dy=240,dz=16,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ title @s subtitle {"text":"The Port of Exquisite Sunsets","italic":true}
execute @a[x=-2850,y=0,z=-60,dx=14,dy=240,dz=16,score_TownDisplay=0,rxm=-50,rx=50,rym=-160,ry=-20] ~ ~ ~ scoreboard players set @s TownDisplay 20






#
