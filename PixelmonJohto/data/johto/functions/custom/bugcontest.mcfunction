#Bug Catching Contest running
#execute @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,score_TalkTime=0,tag=Dialogue198] ~ ~ ~ execute @s[tag=!Dialogue199] ~ ~ ~ execute @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon] ~ ~ ~ function custom:bugcontest


#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /testfor @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,score_TalkTime=0,score_BugContest=0]
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ /testfor @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,score_TalkTime=0,score_BugContest=0]
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ /testfor @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,score_TalkTime=0,score_BugContest=0]

#tellraw @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,score_BugContest=0] {"text":"<Park Worker> Begin your Bug Catching Contest?"}
#scoreboard players enable @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,score_BugContest=0] TriggerCommand
#tellraw @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,score_BugContest=0] ["",{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 28"}},{"text":"]","color":"green"}]


#Skip to Judging:
#testfor @a[x=477,y=64,z=65,dx=2,dy=2,score_DialogueTrigger_min=198,score_DialogueTrigger=198,score_TalkTime_min=25]
#tellraw @a[x=463,y=0,z=-67,dx=175,dy=240,dz=203,score_DialogueTrigger_min=198,score_DialogueTrigger=198,score_TalkTime_min=25] {"text":"<Park Worker> Would you like to begin judging?"}
#scoreboard players enable @a[x=463,y=0,z=-67,dx=175,dy=240,dz=203,score_DialogueTrigger_min=198,score_DialogueTrigger=198,score_TalkTime_min=25] TriggerCommand
#tellraw @a[x=463,y=0,z=-67,dx=175,dy=240,dz=203,score_DialogueTrigger_min=198,score_DialogueTrigger=198,score_TalkTime_min=25] ["",{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 32"}},{"text":"]","color":"green"}]


#Skip Judging
#execute @a[x=477,y=64,z=65,dx=2,dy=2,score_BugContest_min=1,tag=Dialogue198] ~ ~ ~ testfor @s[tag=!Dialouge199]
#tellraw @a[x=463,y=0,z=-67,dx=175,dy=240,dz=203,score_BugContest_min=1,tag=Dialogue198] {"text":"<Park Worker> Would you like to cancel your session without judging?"}
#scoreboard players enable @a[x=463,y=0,z=-67,dx=175,dy=240,dz=203,score_BugContest_min=1,tag=Dialogue198] TriggerCommand
#tellraw @a[x=463,y=0,z=-67,dx=175,dy=240,dz=203,score_BugContest_min=1,tag=Dialogue198] ["",{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 33"}},{"text":"]","color":"green"}]


#TriggerCommand Effects
#execute @a[score_TriggerCommand_min=32,score_TriggerCommand=32] ~ ~ ~ scoreboard players set @s TalkTime 1704


#execute @a[score_TriggerCommand_min=33,score_TriggerCommand=33] ~ ~ ~ scoreboard players set @s TalkTime 30
#execute @a[score_TriggerCommand_min=33,score_TriggerCommand=33] ~ ~ ~ scoreboard players set @s DialogueTrigger 199


#Tags if Pokemon are Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:10s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:11s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:12s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:13s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:14s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:15s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:46s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:48s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:123s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:127s,CaughtBall:20b}] add Eligible

tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:268s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:267s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:415s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:402s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:401s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:313s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:290s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:269s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:266s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:265s,CaughtBall:20b}] add Eligible

tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:102s,CaughtBall:20b}] add Eligible
tag @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible,nbt={ndex:420s,CaughtBall:20b}] add Eligible


#Despawns Pokemon if ineligible
execute as @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible] run tellraw @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,tag=Dialogue198] {"text":"This Pokemon isn't eligible for the contest!","italic":true,"color":"gray"}
execute as @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=!Eligible] run data merge entity @s {Dimension:1}


#Prompts the Judging dialogue when Eligible Pokemon is found

execute at @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=Eligible] run execute as @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,tag=Dialogue198,scores={Cooldown=0}] run tag @s[tag=!Dialogue199,scores={TalkTime=0}] remove Dialogue199
execute at @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=Eligible] run execute as @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,tag=Dialogue198,scores={Cooldown=0}] run tellraw @s[tag=!Dialogue199,scores={TalkTime=0}] {"text":"Submit this Pokemon to be judged?"}
execute at @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=Eligible] run execute as @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,tag=Dialogue198,scores={Cooldown=0}] run tellraw @s[tag=!Dialogue199,scores={TalkTime=0}] ["",{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 27"}},{"text":"]","color":"green"}]
execute at @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=Eligible] run execute as @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,tag=Dialogue198,scores={Cooldown=0}] run scoreboard players enable @s[tag=!Dialogue199,scores={TalkTime=0}] TriggerCommand
execute at @e[x=467,y=63,z=60,dx=18,dy=1,dz=8,type=pixelmon:pixelmon,tag=Eligible] run execute as @a[x=467,y=63,z=60,dx=18,dy=1,dz=8,tag=Dialogue198,scores={Cooldown=0}] run scoreboard players set @s[tag=!Dialogue199,scores={TalkTime=0}] Cooldown 45


































#
