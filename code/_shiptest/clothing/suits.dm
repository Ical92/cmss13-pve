/* CLOTHING SUITS */

/obj/item/clothing/suit/shiptest
	name = "clip suit parent object"
	desc = "This shouldn't be here..."
	contained_sprite = TRUE
	icon = 'icons/shiptest/clothing/suits.dmi'
	blood_overlay_type = "armor"
	allowed = list(
		/obj/item/storage/fancy/cigarettes,
		/obj/item/tool/lighter,
		/obj/item/weapon/baton,
		/obj/item/restraint/handcuffs,
		/obj/item/device/binoculars,
		/obj/item/attachable/bayonet,

		/obj/item/storage/belt/gun/m4a3,
		/obj/item/storage/belt/gun/m44,
		/obj/item/storage/belt/gun/mateba,
		/obj/item/storage/belt/gun/smartpistol,
		/obj/item/weapon/gun,

		/obj/item/device/flashlight,
		/obj/item/device/healthanalyzer,
		/obj/item/device/radio,
		/obj/item/tank/emergency_oxygen,
		/obj/item/tool/crowbar,
		/obj/item/tool/crew_monitor,
		/obj/item/tool/pen,
		/obj/item/storage/large_holster/machete,
		/obj/item/storage/large_holster/katana,
		/obj/item/device/motiondetector,
	)
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_ARMS
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMBAND, ACCESSORY_SLOT_DECOR, ACCESSORY_SLOT_MEDAL)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMBAND)

/obj/item/clothing/suit/shiptest/toggle
	var/zipped = FALSE
	var/zip_sound = 'sound/handling/clothingrustle4.ogg'
	var/zip_wording = "button"
	actions_types = list(/datum/action/item_action/toggle)

/obj/item/clothing/suit/shiptest/toggle/attack_self(mob/user) //Adds UI button
	..()

	if(!ishuman(user))
		return

	var/mob/living/carbon/human/H = user
	if(H.wear_suit != src)
		return

	if(zip_sound)
		playsound(user, zip_sound, 10, TRUE)
	zip_unzip(user)

/obj/item/clothing/suit/shiptest/toggle/proc/zip_unzip(mob/user)

	if(zipped)
		icon_state = initial(icon_state)
		to_chat(user, SPAN_NOTICE("You [zip_wording] \the [src]."))

	else
		icon_state = "[initial(icon_state)]_dj"
		to_chat(user, SPAN_NOTICE("You un[zip_wording] \the [src]."))
	zipped = !zipped

	update_clothing_icon()

//list("melee" = 25, "bullet" = 10, "laser" = 25, "energy" = 10, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 0, "wound" = 10)
/obj/item/clothing/suit/shiptest/clip/trenchcoat
	name = "\improper CLIP trenchcoat"
	desc = "A trenchcoat in Confederated League colors. Despite its reputation as a military officer coat, it's used by all divisions within CLIP. Has a lot of pockets."
	icon_state = "clip_trenchcoat"

//list("melee" = 25, "bullet" = 10, "laser" = 25, "energy" = 10, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 0, "wound" = 10)
/obj/item/clothing/suit/shiptest/clip/captain
	name = "\improper Minutemen captain coat"
	desc = "The coat issued to all CLIP Minutemen officers worthy of the rank of Captain. Features thick padding which, while protective, does not replace proper armor."
	icon_state = "clip_captaincoat"

//list("melee" = 50, "bullet" = 40, "laser" = 50, "energy" = 50, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 90, "wound" = 20)
/obj/item/clothing/suit/shiptest/clip/general
	name = "\improper Minutemen general coat"
	desc = "This flamboyant overwear is employed by the field generals of the CLIP Minutemen."
	icon_state = "clip_general"

//list("melee" = 50, "bullet" = 40, "laser" = 50, "energy" = 50, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 90, "wound" = 20)
/obj/item/clothing/suit/shiptest/clip/admiral
	name = "\improper Minutemen admiral trenchcoat"
	desc = "A very fancy trenchcoat used by naval admirals of the CLIP Minutemen."
	icon_state = "clip_admiral"

/obj/item/clothing/suit/shiptest/clip/toggle/suitjacket
	name = "\improper CLIP senior officer suit jacket"
	desc = "A fancy buttoned dress jacket issued to officers of CLIP."
	icon_state = "suitjacket_clip"

/obj/item/clothing/suit/shiptest/clip/toggle/suitjacket/command
	name = "\improper CLIP officer suit jacket"
	desc = "A fancy buttoned dress jacket issued to senior officers of CLIP."
	icon_state = "suitjacket_clip_command"

/* ARMOR */

//list("melee" = 50, "bullet" = 15, "laser" = 25, "energy" = 35, "bomb" = 25, "bio" = 100, "rad" = 20, "fire" = 30, "acid" = 100)
/obj/item/clothing/suit/storage/marine/shiptest/clip
	name = "\improper BARD-434-2 combat bio suit"
	desc = "A special model of bio suit, made to specific CLIP-BARD certification and issued to teams expecting combat against dangerous xenofauna. Cumbersome."
	icon = 'icons/shiptest/clothing/suits.dmi'
	icon_state = "clip_bard_biosuit_medium"
	contained_sprite = TRUE
	flags_atom = FPRINT|CONDUCT
	flags_inventory = BLOCKSHARPOBJ
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	flags_cold_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	flags_heat_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	min_cold_protection_temperature = HELMET_MIN_COLD_PROT
	max_heat_protection_temperature = HELMET_MAX_HEAT_PROT
	blood_overlay_type = "suit"
	armor_melee = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_MEDIUM
	armor_laser = CLOTHING_ARMOR_MEDIUMLOW
	armor_energy = CLOTHING_ARMOR_LOW
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_MEDIUM
	armor_rad = CLOTHING_ARMOR_MEDIUMLOW
	armor_internaldamage = CLOTHING_ARMOR_MEDIUM
	movement_compensation = SLOWDOWN_ARMOR_LIGHT
	storage_slots = 3
	siemens_coefficient = 0.7
	slowdown = SLOWDOWN_ARMOR_MEDIUM
	allowed = list(
		/obj/item/weapon/gun,
		/obj/item/prop/prop_gun,
		/obj/item/tank/emergency_oxygen,
		/obj/item/device/flashlight,
		/obj/item/storage/fancy/cigarettes,
		/obj/item/tool/lighter,
		/obj/item/storage/bible,
		/obj/item/attachable/bayonet,
		/obj/item/storage/backpack/general_belt,
		/obj/item/storage/large_holster/machete,
		/obj/item/storage/belt/gun/type47,
		/obj/item/storage/belt/gun/m4a3,
		/obj/item/storage/belt/gun/m44,
		/obj/item/storage/belt/gun/smartpistol,
		/obj/item/storage/belt/gun/flaregun,
		/obj/item/device/motiondetector,
		/obj/item/device/walkman,
		/obj/item/storage/belt/gun/m39,
		/obj/item/storage/belt/gun/xm51,
	)
	valid_accessory_slots = list(ACCESSORY_SLOT_MEDAL, ACCESSORY_SLOT_PONCHO)

	light_system = NO_LIGHT_SUPPORT // C-MM lights are on the helmets, not the suits
	light_power = 0
	light_range = 0

	actions_types = null
	flags_marine_armor = ARMOR_SQUAD_OVERLAY|SYNTH_ALLOWED
	specialty = "BARD-434-2 Combat"
	has_light = FALSE
	armor_variation = FALSE
	/// The dmi where the grayscale squad overlays are contained
	squad_overlay_icon = 'icons/mob/humans/onmob/suit_1.dmi'

/obj/item/clothing/suit/storage/marine/clip/Initialize(mapload)
	. = ..()
	if(!(flags_atom & NO_NAME_OVERRIDE))
		name = "[specialty] Bio Suit"

	if(!(flags_atom & NO_SNOW_TYPE))
		select_gamemode_skin(type)
	pockets.max_w_class = SIZE_SMALL //Can contain small items AND rifle magazines.
	pockets.bypass_w_limit = list(
		/obj/item/ammo_magazine/rifle,
		/obj/item/ammo_magazine/smg,
		/obj/item/ammo_magazine/sniper,
	)
	pockets.max_storage_space = 8

/obj/item/clothing/suit/storage/marine/clip/Destroy()
	QDEL_NULL(light_holder)
	return ..()

/obj/item/clothing/suit/storage/marine/clip/post_vendor_spawn_hook(mob/living/carbon/human/user) //used for randomizing/selecting a variant for armors.
	return

/obj/item/clothing/suit/storage/marine/clip/turn_light(mob/user, toggle_on)
	return

/obj/item/clothing/suit/storage/marine/clip/item_action_slot_check(mob/user, slot)
	return FALSE

//list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 100, "rad" = 20, "fire" = 30, "acid" = 100)
/obj/item/clothing/suit/storage/marine/shiptest/clip/light
	name = "\improper BARD-440 bio suit"
	desc = "The iconic biosuit of CLIP-BARD agents on the frontier and elsewhere."
	specialty = "BARD-440"
	icon_state = "clip_bard_biosuit"
	slowdown = SLOWDOWN_ARMOR_LIGHT
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_bio = CLOTHING_ARMOR_MEDIUMLOW
	armor_rad = CLOTHING_ARMOR_MEDIUMHIGH
	armor_internaldamage = CLOTHING_ARMOR_LOW
	storage_slots = 2

//list("melee" = 60, "bullet" = 30, "laser" = 35, "energy" = 35, "bomb" = 50, "bio" = 100, "fire" = 40, "rad" = 20, "acid" = 100)
/obj/item/clothing/suit/storage/marine/shiptest/clip/heavy
	name = "\improper BARD-434-3 heavy combat bio suit"
	desc = "A special model of bio suit, made to specific CLIP-BARD certification and issued to teams expecting combat against dangerous xenofauna. Cumbersome."
	specialty = "BARD-434-3 Heavy Combat"
	icon_state = "clip_bard_biosuit_heavy"
	armor_melee = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bullet = CLOTHING_ARMOR_HIGHPLUS
	armor_bomb = CLOTHING_ARMOR_HIGHPLUS
	armor_bio = CLOTHING_ARMOR_MEDIUMHIGH
	armor_rad = CLOTHING_ARMOR_MEDIUM
	armor_energy = CLOTHING_ARMOR_MEDIUMLOW
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH
	storage_slots = 2
	slowdown = SLOWDOWN_ARMOR_LOWHEAVY
	movement_compensation = SLOWDOWN_ARMOR_MEDIUM

//list("melee" = 15, "bullet" = 60, "laser" = 10, "energy" = 10, "bomb" = 40, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50, "wound" = 20)
/obj/item/clothing/suit/shiptest/armor
	name = "\improper bulletproof armor"
	desc = "A Type III heavy bulletproof vest that excels in protecting the wearer against traditional projectile weaponry and explosives to a minor extent."
	icon_state = "bulletproof"
	blood_overlay_type = "armor"
	slowdown = SLOWDOWN_ARMOR_LIGHT
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_bio = CLOTHING_ARMOR_MEDIUMLOW
	armor_rad = CLOTHING_ARMOR_MEDIUMHIGH
	armor_internaldamage = CLOTHING_ARMOR_LOW

//list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50, "wound" = 10)
/obj/item/clothing/suit/shiptest/armor/correspondent
	name = "\improper correspondent armor vest"
	desc = "A slim Type I armored vest that provides decent protection against most types of damage. The white letters on the front read \"PRESS\" in CLIP Kalixcian."
	icon_state = "clip_correspondent"
