#Sets score of random player per day of the week
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run scoreboard players set @r[limit=1,level=10..,scores={MomState=1..}] Mom 1
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run scoreboard players set @r[limit=1,level=10..,scores={MomState=1..}] Mom 2
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run scoreboard players set @r[limit=1,level=10..,scores={MomState=1..}] Mom 3
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run scoreboard players set @r[limit=1,level=10..,scores={MomState=1..}] Mom 4
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run scoreboard players set @r[limit=1,level=10..,scores={MomState=1..}] Mom 5
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run scoreboard players set @r[limit=1,level=10..,scores={MomState=1..}] Mom 6
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run scoreboard players set @r[limit=1,level=10..,scores={MomState=1..}] Mom 7



#Lucky Egg
###execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run give @a[scores={Mom=1}] pixelmon:lucky_egg
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run tellraw @a[scores={Mom=1}]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Lucky Egg! Hope you like it!"}

#Choice Band
###execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run give @a[scores={Mom=2}] pixelmon:choice_band
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run tellraw @a[scores={Mom=2}]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Choice Band! Hope you like it!"}

#Super Potion
###execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run give @a[scores={Mom=3}] pixelmon:super_potion
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run tellraw @a[scores={Mom=3}]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Super Potion! Hope you like it!"}

#Hyper Potion
###execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run give @a[scores={Mom=4}] pixelmon:hyper_potion
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run tellraw @a[scores={Mom=4}]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Hyper Potion! Hope you like it!"}

#Moon Stone
###execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run give @a[scores={Mom=5}] pixelmon:moon_stone
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run tellraw @a[scores={Mom=5}]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Moon Stone! Hope you like it!"}

#Leppa Berry
###execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run give @a[scores={Mom=6}] pixelmon:leppa_berry
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run tellraw @a[scores={Mom=6}]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Leppa Berry! Hope you like it!"}

#Rawst Berry
###execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run give @a[scores={Mom=7}] pixelmon:rawst_berry
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run tellraw @a[scores={Mom=7}]  {"text":"<Mom> Hey, sweetie, check your inventory! I bought you an item with your xp. I got you a Rawst Berry! Hope you like it!"}


#Post Mom commands
xp add @a[scores={Mom=1..7}] -10 levels
execute as @a[scores={Mom=1..}] run setblock -806 65 -264 air
execute as @a[scores={Mom=1..}] run fill -788 64 -258 -794 64 -258 air
scoreboard players set @a[scores={Mom=1..}] Mom 0
