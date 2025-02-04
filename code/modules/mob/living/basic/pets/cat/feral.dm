/mob/living/basic/pet/cat/feral
	name = "feral cat"
	desc = "Kitty!! Wait, no no DON'T BITE-"
	health = 30
	maxHealth = 30
	melee_damage_lower = 7
	melee_damage_upper = 15
	ai_controller = /datum/ai_controller/basic_controller/simple_hostile
	icon = 'icons/mob/simple/pets.dmi'
	icon_state = "cat2"
	icon_living = "cat2"
	icon_dead = "cat2_dead"
	held_state = "cat2"
	speak_emote = list("purrs", "meows")
	mob_size = MOB_SIZE_SMALL
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	bodytemp_cold_damage_limit = 200
	bodytemp_heat_damage_limit = 400
	unsuitable_atmos_damage = 0.5
	butcher_results = list(/obj/item/food/meat/slab = 1, /obj/item/organ/internal/ears/cat = 1, /obj/item/organ/external/tail/cat = 1, /obj/item/stack/sheet/animalhide/cat = 1)
	response_help_continuous = "pets"
	response_help_simple = "pet"
	response_disarm_continuous = "gently pushes aside"
	response_disarm_simple = "gently push aside"
	response_harm_continuous = "kicks"
	response_harm_simple = "kick"
	faction = list(FACTION_CAT, ROLE_SYNDICATE)
	attack_verb_continuous = "claws"
	attack_verb_simple = "claw"
	attack_sound = 'sound/weapons/slash.ogg'
	attack_vis_effect = ATTACK_EFFECT_CLAW

/mob/living/basic/pet/cat/feraltabby
	name = "feral cat"
	desc = "Kitty!! Wait, no no DON'T BITE-"
	health = 45
	maxHealth = 45
	melee_damage_lower = 12
	melee_damage_upper = 20
	ai_controller = /datum/ai_controller/basic_controller/simple_hostile
	icon = 'icons/mob/simple/pets.dmi'
	icon_state = "cat"
	icon_living = "cat"
	icon_dead = "cat_dead"
	held_state = "cat"
	speak_emote = list("purrs", "meows")
	mob_size = MOB_SIZE_SMALL
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	bodytemp_cold_damage_limit = 200
	bodytemp_heat_damage_limit = 400
	unsuitable_atmos_damage = 0.5
	butcher_results = list(/obj/item/food/meat/slab = 1, /obj/item/organ/internal/ears/cat = 1, /obj/item/organ/external/tail/cat = 1, /obj/item/stack/sheet/animalhide/cat = 1)
	response_help_continuous = "pets"
	response_help_simple = "pet"
	response_disarm_continuous = "gently pushes aside"
	response_disarm_simple = "gently push aside"
	response_harm_continuous = "kicks"
	response_harm_simple = "kick"
	faction = list(FACTION_CAT, ROLE_SYNDICATE)
	attack_verb_continuous = "claws"
	attack_verb_simple = "claw"
	attack_sound = 'sound/weapons/slash.ogg'
	attack_vis_effect = ATTACK_EFFECT_CLAW

