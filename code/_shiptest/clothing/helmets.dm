/obj/item/clothing/head/shiptest
	icon = 'icons/shiptest/clothing/helmets.dmi'
	contained_sprite = TRUE

/obj/item/clothing/head/shiptest/clip
	name = "\improper Minutemen service cap"
	desc = "A service cap commonly seen on Minutemen of all ranks while off-duty, but more daring soldiers may choose to wear it during combat. The design dates back to the uniform used by the deserting forces of the Zohil Republic, who were the first citizens of CLIP."
	icon_state = "clip_cap"

/obj/item/clothing/head/shiptest/clip/medic
	name = "\improper Minutemen medic cap"
	desc = "A service cap seen on Minutemen who choose medicine as their profession. The design dates back to the uniform used by the deserting forces of the Zohil Republic, who were the first citizens of CLIP."
	icon_state = "clip_mediccap"

/obj/item/clothing/head/shiptest/clip/bicorne
	name = "\improper Minutemen General bicorne"
	desc = "A large, flashy bicorne used by generals of the CLIP Minutemen."
	icon_state = "clip_general_hat"

/obj/item/clothing/head/shiptest/clip/boonie
	name = "\improper Minutemen boonie hat"
	desc = "A wide brimmed cap in Confederated League colors to keep oneself cool during blistering hot weather."
	icon_state = "clip_boonie"

/obj/item/clothing/head/shiptest/clip/slouch
	name = "\improper Minutemen officer's slouch hat"
	desc = "A commanding slouch hat, issued to senior enlisted and junior officers of the Minutemen."
	icon_state = "clip_slouch_hat"

/obj/item/clothing/head/shiptest/clip/slouch/officer
	name = "\improper Minutemen senior officer's slouch hat"
	desc = "A commanding slouch hat with a white badge, given to higher-ranking officers of the Minutemen."
	icon_state = "clip_officer_hat"

/* Helmets */

/obj/item/clothing/head/helmet/marine/shiptest
	icon = 'icons/shiptest/clothing/helmets.dmi'
	contained_sprite = TRUE

/obj/item/clothing/head/helmet/marine/shiptest/clip
	name = "\improper Minutemen CM-10 helmet"
	desc = "A special, lightweight helmet issued to the Minutemen of the Confederated League Minutemen."
	specialty = "Minutemen CM-10"
	icon_state = "clip_m10"

/obj/item/clothing/head/helmet/marine/shiptest/clip/x11
	name = "\improper Minutemen CM-11 helmet"
	desc = "A large, bulky bulletproof helmet, in the distinctive blue coloring of the Confederated League. Features a little attachment rail on the side where you can mount a flashlight."
	specialty = "Minutemen CM-11"
	icon_state = "clip_x11"

/obj/item/clothing/head/helmet/marine/shiptest/clip/x11/blank
	icon_state = "clip_x11_a"

/obj/item/clothing/head/helmet/marine/shiptest/clip/x11/stripe
	icon_state = "clip_x11_b"

/obj/item/clothing/head/helmet/marine/shiptest/clip/vc
	name = "\improper Minutemen CM-12 Helmet"
	desc = "A special, lightweight and padded helmet issued to Vehicle Crewmen of the Confederated League Minutemen. Features noise-reducing technology and a microphone that automatically connects with worn headsets. Hopefully protects you from bumpy rides."
	specialty = "Minutemen CM-12"
	icon_state = "clip_m10_vc"

/obj/item/clothing/head/helmet/marine/shiptest/clip/vc/arctic
	icon_state = "clip_m10_vc_a"

//list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 100, "rad" = 20, "fire" = 30, "acid" = 100)
/obj/item/clothing/head/shiptest/clip/bard
	name = "\improper BARD-434 bio hood"
	icon_state = "clip_bard_bio"
	desc = "A simple but effective and lightweight hood for use with CLIP-BARD's biosuits."
	permeability_coefficient = 0.2
	armor_melee = CLOTHING_ARMOR_NONE
	armor_bullet = CLOTHING_ARMOR_NONE
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_ULTRAHIGH
	armor_rad = CLOTHING_ARMOR_MEDIUM
	armor_internaldamage = CLOTHING_ARMOR_LOW
	flags_inv_hide = HIDEEARS|HIDEALLHAIR
	flags_armor_protection = BODY_FLAG_HEAD
	siemens_coefficient = 0.9
	flags_obj = OBJ_NO_HELMET_BAND|OBJ_IS_HELMET_GARB

/obj/item/clothing/head/shiptest/clip/bard/on_enter_storage(obj/item/storage/internal/helmet_internal_inventory)
	..()
	if(!istype(helmet_internal_inventory))
		return
	var/obj/item/clothing/head/helmet/helmet_item = helmet_internal_inventory.master_object

	if(!istype(helmet_item))
		return

	helmet_item.armor_bio += 100
	helmet_item.flags_inv_hide |= HIDEALLHAIR

/obj/item/clothing/head/shiptest/clip/bard/on_exit_storage(obj/item/storage/internal/helmet_internal_inventory)
	..()
	if(!istype(helmet_internal_inventory))
		return
	var/obj/item/clothing/head/helmet/helmet_item = helmet_internal_inventory.master_object

	if(!istype(helmet_item))
		return

	helmet_item.armor_bio -= 100
	helmet_item.flags_inv_hide &= ~HIDEALLHAIR
