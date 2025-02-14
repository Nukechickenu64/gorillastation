/datum/stats
	var/strength = 10
	var/intelligence = 10
	var/perception = 10
	var/dexterity = 10
	var/health = 10
	var/willpower = 0
	var/mob/living/carbon/human/pnt

/datum/stats/proc/update_health()
	pnt.maxHealth = health * 10

/datum/base_stats
	var/strength = 10
	var/intelligence = 10
	var/perception = 10
	var/dexterity = 10
	var/health = 10
	var/willpower = 0
