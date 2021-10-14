#for day of week tracks and effects:
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand] ~ ~ ~ /

#Days of the week armor stand
scoreboard players add @e[x=-799,y=64,z=-284,dy=3,type=armor_stand] WeekdayTrack 1
scoreboard players set @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=8] WeekdayTrack 1

#Sets days of the week score names
scoreboard players reset Monday
scoreboard players reset Tuesday
scoreboard players reset Wednesday
scoreboard players reset Thursday
scoreboard players reset Friday
scoreboard players reset Saturday
scoreboard players reset Sunday

execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ /scoreboard players set Monday Weekday 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /scoreboard players set Tuesday Weekday 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ /scoreboard players set Wednesday Weekday 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ /scoreboard players set Thursday Weekday 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ /scoreboard players set Friday Weekday 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ /scoreboard players set Saturday Weekday 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ /scoreboard players set Sunday Weekday 1


execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ /title @a actionbar {"text":"Monday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /title @a actionbar {"text":"Tuesday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ /title @a actionbar {"text":"Wednesday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ /title @a actionbar {"text":"Thursday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ /title @a actionbar {"text":"Friday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ /title @a actionbar {"text":"Saturday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ /title @a actionbar {"text":"Sunday","italic":true}



#Day Specific Commands

#Sets rematch scores for Dojo calibration
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ /scoreboard players set @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] Rematch 3
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /scoreboard players set @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] Rematch 6
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ /scoreboard players set @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] Rematch 9
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ /scoreboard players set @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] Rematch 12
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ /scoreboard players set @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] Rematch 15
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ /scoreboard players set @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] Rematch 18
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ /scoreboard players set @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] Rematch 21
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=7] ~ ~ ~ function custom:gymrematches if @a[x=-2781,y=64,z=421,r=100,tag=AllGyms]

#Bug Catching Contest commands
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ /setblock -822 65 -176 minecraft:redstone_block
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ /setblock -822 65 -176 minecraft:redstone_block
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ /setblock -822 65 -176 minecraft:redstone_block

#Bug Catching Contest signs
fill -785 65 -242 -791 65 -242 minecraft:iron_block
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ /setblock -785 65 -242 minecraft:redstone_block
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /setblock -786 65 -242 minecraft:redstone_block
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ /setblock -787 65 -242 minecraft:redstone_block
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ /setblock -788 65 -242 minecraft:redstone_block
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ /setblock -789 65 -242 minecraft:redstone_block
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ /setblock -790 65 -242 minecraft:redstone_block
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ /setblock -791 65 -242 minecraft:redstone_block

#Toggles Bargain Merchant Off
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /setblock -813 65 -282 minecraft:iron_block




#Adds rematch score for Gym Leaders Dojo
scoreboard players add @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] Rematch 1


#Daily Resets:
#Mom:
setblock -806 65 -264 minecraft:redstone_wire

#Radio Talks
scoreboard players tag @a[tag=LuckyNumberTalk] remove LuckyNumberTalk
scoreboard players tag @a[tag=PokemonMusicTalk] remove PokemonMusicTalk
scoreboard players tag @a[tag=Dialogue185] remove Dialogue185
scoreboard players tag @a[tag=LuckyNumberCD] remove LuckyNumberCD

scoreboard players tag @a[tag=BuenasPasswordCD] remove BuenasPasswordCD
scoreboard players tag @a[tag=BuenasPasswordDaily] remove BuenasPasswordDaily
scoreboard players tag @a[tag=Dialogue225] remove Dialogue225

#Beauty Salon Cooldown
scoreboard players tag @a[tag=BeautyCD] remove BeautyCD



#Removes Dialogue Tag for Friday Lapras
scoreboard players tag @a[tag=Dialogue105] remove Dialogue105


#Kurt inspecting the GS Ball, makes the ball ready for next part of the story.
scoreboard players tag @a[tag=Dialogue107] add GSBallReady


#Disables Mega Stones if active
setblock -809 64 -331 minecraft:iron_block


#Resets Mr. Pokemon's Red Scale dialogue if player doesn't answer. Won't reactivate since scale is part of trigger
scoreboard players tag @a[tag=Dialogue50] remove Dialogue50

#Clones in more badge cases on the table in New Bark Town
clone -748 75 -242 -748 75 -242 -732 64 -482



#Enables Night-only trainers via tag
scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add Night
















#
