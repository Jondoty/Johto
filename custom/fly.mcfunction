#If in a Dialogue
title @a[score_Fly_min=1,score_TalkTime_min=1] actionbar {"text":"You can't Fly while in a dialogue!"}
scoreboard players set @a[score_Fly_min=1,score_TalkTime_min=1] Fly 0

title @a[score_Fly_min=1,score_DialogueTrigger_min=1] actionbar {"text":"You can't Fly while in a dialogue!"}
scoreboard players set @a[score_Fly_min=1,score_DialogueTrigger_min=1] Fly 0


#----------------------------------------------------------------
#If player is in the Battle Tower

tellraw @a[score_BattleTower_min=1,score_Fly_min=1] {"text":"You can't fly while in the Battle Tower!","italic":true,"color":"gray"}
scoreboard players set @a[score_BattleTower_min=1,score_Fly_min=1] Fly 0

#----------------------------------------------------------------
#If player is in the Sinjoh Ruins

tellraw @a[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189,score_Fly_min=1] {"text":"You can't fly while in the Sinjoh Ruins!","italic":true,"color":"gray"}
scoreboard players set @a[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189,score_Fly_min=1] Fly 0

#----------------------------------------------------------------
#If player is a Bug Catching Contest

tellraw @a[score_BugContest_min=1,score_Fly_min=1] {"text":"You can't fly while in a Bug Contest!","italic":true,"color":"gray"}
scoreboard players set @a[score_BugContest_min=1,score_Fly_min=1] Fly 0

#----------------------------------------------------------------
#If player is the Safari Zone

tellraw @a[score_Fly_min=1,score_SafariState_min=1] {"text": "Do you want to cancel your Safari Zone session?", "extra": [{"text":" [Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 25"}}]}
scoreboard players enable @a[score_Fly_min=1,score_SafariState_min=1] TriggerCommand
scoreboard players set @a[score_Fly_min=1,score_SafariState_min=1] Fly 0

#----------------------------------------------------------------
#If player is on the SS Aqua

tellraw @a[score_SSState_min=1,score_Fly_min=1] {"text":"You can't fly from the ship!","italic":true,"color":"gray"}
scoreboard players set @a[score_SSState_min=1,score_Fly_min=1] Fly 0

#----------------------------------------------------------------
#If inside Dragons Den
tellraw @a[x=-744,y=69,z=507,dx=162,dy=70,dz=147,score_Fly_min=1] {"text":"You can't fly from this location","italic":true,"color":"gray"}
scoreboard players set @a[x=-744,y=69,z=507,dx=162,dy=70,dz=147,score_Fly_min=1] Fly 0


#----------------------------------------------------------------
#If player is inside the Kanto Power Plant

tellraw @a[x=-3131,y=35,z=561,dx=42,dy=20,dz=36,score_Fly_min=1] {"text":"You can't fly from this location","italic":true,"color":"gray"}
scoreboard players set @a[x=-3131,y=35,z=561,dx=42,dy=20,dz=36,score_Fly_min=1] Fly 0

#----------------------------------------------------------------


#Successful Fly:
tp @a[score_Fly_min=1] 1169 255 613
scoreboard players set @a[score_Fly_min=1] EscapeRope 0
scoreboard players tag @a[score_Fly_min=1] remove GymVictory
scoreboard players set @a[score_Fly_min=1] Fly 0





#
