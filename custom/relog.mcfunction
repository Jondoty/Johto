
#Resets Radio if player logs out while listening to music
scoreboard players set @a[score_Relog_min=1] click 1


#Resets PokemonMusicTalk
scoreboard players tag @a[score_Relog_min=1,tag=PokemonMusicTalk] remove PokemonMusicTalk


#Resets Town Display title cooldowns
scoreboard players set @a[score_TownDisplay_min=1] TownDisplay 0





#Re-tells player the prompts if they crash or log out of important choices and prompt would disappear

#Lance at Lake of Rage
execute @a[score_Relog_min=1,tag=Dialogue51] ~ ~ ~ scoreboard players enable @s[tag=!Dialogue52] TriggerCommand
execute @a[score_Relog_min=1,tag=Dialogue51] ~ ~ ~ tellraw @s[tag=!Dialogue52] ["",{"text":"<Lance> If you don't mind, could you help me investigate?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 39"}},{"text":"]"}]


#Steven giving Hoenn Starters
execute @a[score_Relog_min=1,tag=Dialogue137] ~ ~ ~ scoreboard players enable @s[tag=!Dialogue138] TriggerCommand
execute @a[score_Relog_min=1,tag=Dialogue137] ~ ~ ~ tellraw @a[tag=!Dialogue138] ["",{"text":"<Steven> Which color would you pick?\n\n["},{"text":"Green Stone","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 29"}},{"text":"]\n\n["},{"text":"Red Stone","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 30"}},{"text":"]\n\n["},{"text":"Blue Stone","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 31"}},{"text":"]"}]


#Celebi do you wish to inspect the shrine?
execute @a[x=617,y=64,z=-699,r=15,score_Relog_min=1,score_TalkTime=0,tag=Dialogue161] ~ ~ ~ scoreboard players enable @s[tag=!Dialogue162] TriggerCommand
execute @a[x=617,y=64,z=-699,r=15,score_Relog_min=1,score_TalkTime=0,tag=Dialogue161] ~ ~ ~ tellraw @a[tag=!Dialogue162] ["",{"text":"Celebi is reacting to the energy of the shrine. Do you want to investigate?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 41"}},{"text":"]"}]






#Re-tells player day of the week
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ /title @a[score_Relog_min=1] actionbar {"text":"Monday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ /title @a[score_Relog_min=1] actionbar {"text":"Tuesday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ /title @a[score_Relog_min=1] actionbar {"text":"Wednesday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ /title @a[score_Relog_min=1] actionbar {"text":"Thursday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ /title @a[score_Relog_min=1] actionbar {"text":"Friday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ /title @a[score_Relog_min=1] actionbar {"text":"Saturday","italic":true}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ /title @a[score_Relog_min=1] actionbar {"text":"Sunday","italic":true}

























#Sets Relog score to 0
scoreboard players set @a[score_Relog_min=1] Relog 0
