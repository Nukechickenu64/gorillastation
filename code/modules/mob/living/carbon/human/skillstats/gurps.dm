
/proc/dice6(var/times)
	return roll(times,6)


//wing it points, essentially this codebase's version of PQ, made to encourage miracle scenarios in the story,
//in concept should make something it's used on have a 50% chance of being a full roll, or "nat 20" in d&d terms

//should not be given by other players, should be determined by mechanics

/datum/wipoint

//rolls
/datum/gurps
	var/mob/living/carbon/human/char
	var/datum/skills/skills
	var/datum/stats/stats

/datum/gurps/proc/calculate()

/datum/gurps/proc/success_roll_calculate(var/numturn = FALSE,var/target,var/extra_mod = 0,var/list/modifiers, var/mob/living/carbon/human/roller = FALSE) //target should be the same as an attribute or stat or skill
	target += (calculate_mods(modifiers))
	target += (extra_mod)
	var/why = dice6(3) //can't even remotely use the word roll
	if(!roller)
	else
		to_chat(roller,"your target was [target], you rolled [why]")
	if(numturn == TRUE)
		return why
	if(why < target)
		if(why < (target-10))
			return "critsucc"
		else
			return TRUE
	else
		if(why > (target+10))
			return "critfail"
		else
			return FALSE

/datum/gurps/proc/damageroll_calculate(var/why,var/mod, var/dr = 0)//just rolls damage, grab damage resistance for armor
	return (dice6(why) + mod - dr)

//for npc reaction
/datum/gurps/proc/reactionroll_calculate()

/datum/gurps/proc/selfcontrolroll_calculate()// for self control, should be integrated with reactionroll for players and quirks that are a disadvantage which come with their own number

/datum/gurps/proc/quickcontest_calculate()//for two players making a quick check on who's stats are better

//true is a hit
/datum/gurps/proc/to_hit(var/mob/living/carbon/human/attacker,var/mob/living/carbon/human/defender, var/weapon_length = 1, var/weapon_type = "unarmed", var/targetarea = BODY_ZONE_CHEST)
	var/attackmods // all out attack adding later adds 4
	if(attacker.resting == TRUE)
		attackmods -= 4
	if(defender.resting == TRUE)
		attackmods += 4
//	if(attacker) // if pulled
		//attackmods -= 4
//	if(attacker.dir == defender.dir - 2 || attacker.dir == defender.dir + 2 ) //add backstabbing on first attack later

	switch(targetarea)
		if(BODY_ZONE_L_ARM , BODY_ZONE_L_LEG , BODY_ZONE_R_ARM , BODY_ZONE_R_LEG)
			attackmods -= 2
		if(BODY_ZONE_PRECISE_GROIN)
			attackmods -= 3
		if(BODY_ZONE_PRECISE_L_FOOT , BODY_ZONE_PRECISE_R_FOOT , BODY_ZONE_PRECISE_L_HAND , BODY_ZONE_PRECISE_R_HAND)
			attackmods -= 4
		if(BODY_ZONE_HEAD)
			attackmods -= 5
		if(BODY_ZONE_PRECISE_MOUTH)
			attackmods -= 7
		if(BODY_ZONE_PRECISE_EYES)
			attackmods -= 9
	var/success
	switch (weapon_type)
		if("unarmed")
			success = (success_roll_calculate(FALSE,attacker.skills.unarmed + weapon_length + attackmods,roller = attacker))
		if("club")
			success = (success_roll_calculate(FALSE,attacker.skills.clubs + weapon_length + attackmods,roller = attacker))
		if("baton")
			success = (success_roll_calculate(FALSE,attacker.skills.batons + weapon_length + attackmods,roller = attacker))
		if("knife")
			success = (success_roll_calculate(FALSE,attacker.skills.knives + weapon_length + attackmods,roller = attacker))
		if("sword")
			success = (success_roll_calculate(FALSE,attacker.skills.swords + weapon_length + attackmods,roller = attacker))
		if("makeshift")
			success = (success_roll_calculate(FALSE,attacker.skills.makeshift + weapon_length + attackmods,roller = attacker))

	if(success == "critsucc")
		success = TRUE
	else if(success == "critfail")
		success = FALSE
	return success

/datum/gurps/proc/to_defend()

//modifiers

/datum/gurps/proc/calculate_mods(var/n2m,var/list/modifiers) //n2m means number 2 modify
	for(var/mod in modifiers)
		switch(mod)
			if("strength")
				n2m += stats.strength
			if("intelligence")
				n2m += stats.intelligence
			if("perception")
				n2m += stats.perception
			if("dexterity")
				n2m += stats.dexterity
			if("health") //no idea what would use health but i have to cover all my bases
				n2m += stats.health
	return n2m


//reaction table

//since ss13 has so little npc behavior other than animals, this will apply to players who will invuluntary react
