#If in a Dialogue
title @s[scores={Fly=1..,TalkTime=1..}] actionbar {"text":"You can't Fly while in a dialogue!"}
scoreboard players set @s[scores={Fly=1..,TalkTime=1..}] Fly 0

title @s[scores={Fly=1..,DialogueTrigger=1..}] actionbar {"text":"You can't Fly while in a dialogue!"}
scoreboard players set @s[scores={Fly=1..,DialogueTrigger=1..}] Fly 0


#----------------------------------------------------------------
#If player is in the Battle Tower

tellraw @s[scores={Fly=1..,BattleTower=1..}] {"text":"You can't fly while in the Battle Tower!","italic":true,"color":"gray"}
scoreboard players set @s[scores={Fly=1..,BattleTower=1..}] Fly 0

#----------------------------------------------------------------
#If player is in the Sinjoh Ruins

tellraw @s[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189,scores={Fly=1..}] {"text":"You can't fly while in the Sinjoh Ruins!","italic":true,"color":"gray"}
scoreboard players set @s[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189,scores={Fly=1..}] Fly 0

#----------------------------------------------------------------
#If player is a Bug Catching Contest

tellraw @s[scores={Fly=1..,BugContest=1..}] {"text":"You can't fly while in a Bug Contest!","italic":true,"color":"gray"}
scoreboard players set @s[scores={Fly=1..,BugContest=1..}] Fly 0


#----------------------------------------------------------------
#If player is the Safari Zone

tellraw @s[scores={Fly=1..,SafariState=1..}] {"text": "Do you want to cancel your Safari Zone session?", "extra": [{"text":" [Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 25"}}]}
scoreboard players enable @s[scores={Fly=1..,SafariState=1..}] TriggerCommand
scoreboard players set @s[scores={Fly=1..,SafariState=1..}] Fly 0


#----------------------------------------------------------------
#If player is on the SS Aqua

tellraw @s[scores={Fly=1..,SSState=1..}] {"text":"You can't fly from the ship!","italic":true,"color":"gray"}
scoreboard players set @s[scores={Fly=1..,SSState=1..}] Fly 0


#----------------------------------------------------------------
#If inside Dragons Den
tellraw @s[x=-744,y=69,z=507,dx=162,dy=70,dz=147,scores={Fly=1..}] {"text":"You can't fly from this location","italic":true,"color":"gray"}
scoreboard players set @s[x=-744,y=69,z=507,dx=162,dy=70,dz=147,scores={Fly=1..}] Fly 0


#----------------------------------------------------------------
#If player is inside the Kanto Power Plant

tellraw @s[x=-3131,y=35,z=561,dx=42,dy=20,dz=36,scores={Fly=1..}] {"text":"You can't fly from this location","italic":true,"color":"gray"}
scoreboard players set @s[x=-3131,y=35,z=561,dx=42,dy=20,dz=36,scores={Fly=1..}] Fly 0

#----------------------------------------------------------------


#Successful Fly:
playsound minecraft:entity.arrow.shoot ambient @s[scores={Fly=1..}] ~ ~ ~ 1 1 1
tp @s[scores={Fly=1..}] 1169 255 613
scoreboard players set @s[scores={Fly=1..}] EscapeRope 0
tag @s[scores={Fly=1..}] remove GymVictory
scoreboard players set @s[scores={Fly=1..}] Fly 0





#
