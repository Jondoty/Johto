#Sets score of random player per day of the week
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ /scoreboard players set @r[lm=10,score_MomState_min=1] Mom 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /scoreboard players set @r[lm=10,score_MomState_min=1] Mom 2
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ /scoreboard players set @r[lm=10,score_MomState_min=1] Mom 3
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ /scoreboard players set @r[lm=10,score_MomState_min=1] Mom 4
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ /scoreboard players set @r[lm=10,score_MomState_min=1] Mom 5
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ /scoreboard players set @r[lm=10,score_MomState_min=1] Mom 6
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ /scoreboard players set @r[lm=10,score_MomState_min=1] Mom 7



#Lucky Egg
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ /give @a[score_Mom_min=1,score_Mom=1,score_MomState_min=1,score_MomState=1,lm=10] pixelmon:lucky_egg
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ /tellraw @a[score_Mom_min=1,score_Mom=1,score_MomState_min=1,score_MomState=1,lm=10]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Lucky Egg! Hope you like it!"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ /xp -10L @a[score_Mom_min=1,score_Mom=1,score_MomState_min=1,score_MomState=1,lm=10]


#Choice Band
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /give @a[score_Mom_min=2,score_Mom=2,score_MomState_min=1,score_MomState=1,lm=10] pixelmon:choice_band
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /tellraw @a[score_Mom_min=2,score_Mom=2,score_MomState_min=1,score_MomState=1,lm=10]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Choice Band! Hope you like it!"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /xp -10L @a[score_Mom_min=2,score_Mom=2,score_MomState_min=1,score_MomState=1,lm=10]


#Super Potion
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ /give @a[score_Mom_min=3,score_Mom=3,score_MomState_min=1,score_MomState=1,lm=10] pixelmon:super_potion
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ /tellraw @a[score_Mom_min=3,score_Mom=3,score_MomState_min=1,score_MomState=1,lm=10]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Super Potion! Hope you like it!"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ /xp -10L @a[score_Mom_min=3,score_Mom=3,score_MomState_min=1,score_MomState=1,lm=10]

#Hyper Potion
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ /give @a[score_Mom_min=4,score_Mom=4,score_MomState_min=1,score_MomState=1,lm=10] pixelmon:hyper_potion
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ /tellraw @a[score_Mom_min=4,score_Mom=4,score_MomState_min=1,score_MomState=1,lm=10]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Hyper Potion! Hope you like it!"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ /xp -10L @a[score_Mom_min=4,score_Mom=4,score_MomState_min=1,score_MomState=1,lm=10]


#Moon Stone
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ /give @a[score_Mom_min=5,score_Mom=5,score_MomState_min=1,score_MomState=1,lm=10] pixelmon:moon_stone
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ /tellraw @a[score_Mom_min=5,score_Mom=5,score_MomState_min=1,score_MomState=1,lm=10]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Moon Stone! Hope you like it!"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ /xp -10L @a[score_Mom_min=5,score_Mom=5,score_MomState_min=1,score_MomState=1,lm=10]


#Leppa Berry
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ /give @a[score_Mom_min=6,score_Mom=6,score_MomState_min=1,score_MomState=1,lm=10] pixelmon:leppa_berry
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ /tellraw @a[score_Mom_min=6,score_Mom=6,score_MomState_min=1,score_MomState=1,lm=10]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Leppa Berry! Hope you like it!"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ /xp -10L @a[score_Mom_min=6,score_Mom=6,score_MomState_min=1,score_MomState=1,lm=10]


#Rawst Berry
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ /give @a[score_Mom_min=7,score_Mom=7,score_MomState_min=1,score_MomState=1,lm=10] pixelmon:rawst_berry
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ /tellraw @a[score_Mom_min=7,score_Mom=7,score_MomState_min=1,score_MomState=1,lm=10]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Rawst Berry! Hope you like it!"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ /xp -10L @a[score_Mom_min=7,score_Mom=7,score_MomState_min=1,score_MomState=1,lm=10]


#Post Mom commands
execute @a[score_Mom_min=1] ~ ~ ~ /setblock -806 65 -264 air
execute @a[score_Mom_min=1] ~ ~ ~ /fill -788 64 -258 -794 64 -258 air
scoreboard players set @a[score_Mom_min=1,score_MomState_min=1,score_MomState=1] Mom 0
