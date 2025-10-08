/obj/item/storage/backpack/shiptest
	icon = 'icons/shiptest/clothing/backpacks.dmi'
	icon_state = "backpack"
	contained_sprite = TRUE

	max_storage_space = 21 // No change, for reference

/obj/item/storage/backpack/shiptest/satchel
	name = "\improper leather satchel"
	desc = "It's a very fancy satchel made with fine leather."
	icon_state = "satchel"
	worn_accessible = TRUE
	storage_slots = null
	max_storage_space = 15

/obj/item/storage/backpack/shiptest/clip
	name = "\improper CLIP backpack"
	desc = "It's a very blue backpack, branded with the stars of the Confederated League."
	icon_state = "clippack"

/obj/item/storage/backpack/shiptest/satchel/clip
	name = "\improper CLIP satchel"
	desc = "It's a very blue satchel, branded with the stars of the Confederated League."
	icon_state = "satchel-clip"

/obj/item/storage/backpack/marine/satchel/rto/shiptest
	name = "\improper CLIP Radio Telephone Pack"
	desc = "A heavy-duty pack, used for telecommunications between command. Commonly carried by Signaleers."
	icon = 'icons/shiptest/clothing/backpacks.dmi'
	icon_state = "ert_commander"
	contained_sprite = TRUE
	// networks_receive = list(FACTION_CMM)
	// networks_transmit = list(FACTION_CMM)
