/obj/item/clothing/glasses/shiptest
	icon = 'icons/shiptest/clothing/glasses.dmi'
	contained_sprite = TRUE

/obj/item/clothing/glasses/shiptest/ballistic
	name = "ballistic goggles"
	desc = "A pair of flash-proof ballistic goggles."
	icon_state = "ballistic_goggles"
	prescription = TRUE
	flags_equip_slot = SLOT_EYES|SLOT_FACE
	eye_protection = EYE_PROTECTION_FLASH

/obj/item/clothing/glasses/hud/shiptest/med
	name = "health scanner HUD"
	desc = "A heads-up display that scans the humanoids in view and provides accurate data about their health status."
	icon = 'icons/shiptest/clothing/glasses.dmi'
	contained_sprite = TRUE
	icon_state = "healthhud"
	hud_type = list(MOB_HUD_MEDICAL_ADVANCED)

/obj/item/clothing/glasses/welding/shiptest
	icon = 'icons/shiptest/clothing/glasses.dmi'
	contained_sprite = TRUE
