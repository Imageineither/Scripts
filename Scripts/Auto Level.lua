--[[Auto Level Spells
Version= 1.0
Auto Levels the Spells of Every Champ
by Imageineither
To Do: Add auto update
       Multiple Ability paths per Champion.
]]


--[[ 		Globals		]]
checkInterval = 250
abilitySequence = {}
abilityLevel = 0
player = GetMyHero()

function getSpellSlot(value)
    if value == Q then return SPELL_1
    elseif value == W then return SPELL_2
    elseif value == E then return SPELL_3
    elseif value == R then return SPELL_4
    end
end

function OnTick()
	
	if player.level > abilityLevel then

		abilityLevel=abilityLevel+1
		LevelSpell(getSpellSlot(abilitySequence[abilityLevel]))
	end
end


champ=player.charName

--I will try to add all the best level routes for the Chamipions. If you feela Champion has a better buildorder, feel free to edit it, or, get ahold of me,and I would confirm it and add it. If you would like to not use auto level for a specific Champion, comment out his/her name. "-- elseif"

if champ=="Jinx" then		abilitySequence={Q,W,E,Q,Q,R,Q,W,Q,W,R,W,W,E,E,R,E,E,}
end


PrintChat("Auto Level v1.0 loaded!")
PrintChat("If you would like to contribute, please message Imageineither")
