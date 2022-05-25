#
#function custom:gymrematches if @a[x=-2781,y=64,z=421,r=100,tag=AllGyms]

#Sets Rematch Score to 1 if above 22, since there are only 21 options
execute at @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,scores={Rematch=22}] run scoreboard players set @s Rematch 1


#Adds skip tag for when a player is currently in the Dojo
execute at @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15] run tag @e[x=-792,y=65,z=-284,dy=3] add Skip


#tps out current Gym Leader
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Morty] -789 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Chuck] -791 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Jasmine] -793 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Pryce] -795 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Clair] -797 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Brock] -799 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Misty] -801 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Surge] -803 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Erika] -805 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Janine] -807 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Sabrina] -809 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Blaine] -811 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Blue] -813 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Falkner] -783 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Bugsy] -785 88 -242
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tp @e[x=-2781,y=63,z=421,dy=3,type=pixelmon:npc_trainer,name=Whitney] -787 88 -242

#tps in needed Gym Leader
#execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run particle cloud -2781 64 421 1 1 1 1 100
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip] run tag @a[tag=RematchTalked] remove RematchTalked

execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=1}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Erika] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=2}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Sabrina] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=3}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Blue] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=4}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Pryce] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=5}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Janine] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=8}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Blaine] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=9}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Morty] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=10}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Misty] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=11}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Jasmine] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=12}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Chuck] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=14}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Bugsy] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=16}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Surge] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=18}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Clair] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=19}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Falkner] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=20}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Whitney] -2781 64 421
execute at @e[x=-792,y=65,z=-284,dy=3,tag=!Skip,scores={Rematch=21}] run tp @e[x=-814,y=87,z=-243,dx=32,dy=3,dz=1,name=Brock] -2781 64 421










#Tellraws for dialogue
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Blue] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Blue> Good! Thanks for coming to lose to me!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Blaine] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Blaine> You keep your word. That's a good thing, kiddo!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Sabrina] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Sabrina> I knew you'd come! I had a feeling. What? We promised each other, so it's no surprise? Well, you may be right."}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Janine] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Janine> I can't use my ninja technique, but I won't let you win!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Erika] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Erika> How are you? Good to see you again! This place doesn't really suit me, but...let's ignore that and battle!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Surge] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Lt. Surge> Hey! The promise we made! Let's battle again!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Misty] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Misty> So here you are… Don’t make me wait! I’ve heard a lot of good things about you since our last battle. Let me test how good you are!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Brock] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Brock> All right! Time to fulfill our promise!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Clair] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Clair> ...You are here. Now let's battle!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Pryce] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Pryce> Finally. No need for words. A Pokémon battle is the way for us to communicate."}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Jasmine] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Jasmine> We're here as we promised... Are you prepared?"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Chuck] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Chuck> There you are! Taste my 24-hour training!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Morty] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Morty> I was just talking about you... Let's battle!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Whitney] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Whitney> I never break my promises! Are you ready?"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Bugsy] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Bugsy> Good to see you again! Behold my bug research!"}
execute at @e[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,type=pixelmon:npc_trainer,name=Falkner] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"<Falkner> Hi! I've been waiting for you! It's a pleasure to be able to battle you again!"}

#Empty days
execute at @e[x=-792,y=65,z=-284,dy=3,scores={Rematch=6}] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"No one seems to be in at the moment..."}
execute at @e[x=-792,y=65,z=-284,dy=3,scores={Rematch=7}] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"No one seems to be in at the moment..."}
execute at @e[x=-792,y=65,z=-284,dy=3,scores={Rematch=13}] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"No one seems to be in at the moment..."}
execute at @e[x=-792,y=65,z=-284,dy=3,scores={Rematch=15}] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"No one seems to be in at the moment..."}
execute at @e[x=-792,y=65,z=-284,dy=3,scores={Rematch=17}] run tellraw @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15,tag=!RematchTalked] {"text":"No one seems to be in at the moment..."}

#Adds RematchTalked tag so player doesn't get repeat dialogue until trainers switch over
tag @a[x=-2794,y=63,z=410,dx=26,dy=5,dz=15] add RematchTalked






#Removes skip tag
tag @e[x=-792,y=65,z=-284,dy=3,tag=Skip] remove Skip



#1 - Erika
#2 -  Sabrina
#3 - Blue
#4 - Pryce
#5 - Janine
#6 - Empty
#7 - Empty
#8 - Blaine
#9 - Morty
#10 - Misty
#11 - Jasmine
#12 - Chuck
#13 - Empty
#14 - Bugsy
#15 - Empty
#16 - Surge
#17 - Empty
#18 - Clair
#19 - Falkner
#20 - Whitney
#21 - Brock













#
