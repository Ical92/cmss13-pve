/obj/item/storage/pouch/shiptest
	name = "utility pouch"
	desc = "A small pouch for storing items."
	icon = 'icons/shiptest/clothing/pouches.dmi'
	icon_state = "pouch"
	contained_sprite = TRUE
	flap = FALSE
	storage_slots = 2

/obj/item/storage/pouch/shiptest/ammo
	name = "ammunition pouch"
	desc = "An ammunition pouch, commonly used by soldiers to hold additional ammo in an accessible location."
	icon_state = "pouch_ammo"
	storage_slots = 3
	can_hold = list(
		/obj/item/ammo_magazine,
	)

/obj/item/storage/pouch/shiptest/engi
	name = "technician pouch"
	desc = "An orange pouch used to hold a small amount of tools or supplies, often used for emergency repair kits."
	icon_state = "pouch_engi"
	storage_slots = 4
	max_w_class = SIZE_MEDIUM
	can_hold = list(
		/obj/item/tool/crowbar,
		/obj/item/tool/screwdriver,
		/obj/item/tool/weldingtool,
		/obj/item/tool/wirecutters,
		/obj/item/tool/wrench,
		/obj/item/tool/extinguisher/mini,
		/obj/item/tool/shovel/etool,
		/obj/item/stack/cable_coil,
		/obj/item/weapon/gun/smg/nailgun/compact,
		/obj/item/cell,
		/obj/item/circuitboard,
		/obj/item/stock_parts,
		/obj/item/device/demo_scanner,
		/obj/item/device/reagent_scanner,
		/obj/item/device/assembly,
		/obj/item/device/multitool,
		/obj/item/device/flashlight,
		/obj/item/device/t_scanner,
		/obj/item/device/analyzer,
		/obj/item/explosive/plastic,
		/obj/item/device/lightreplacer,
	)
	bypass_w_limit = list(
		/obj/item/tool/shovel/etool,
		/obj/item/device/lightreplacer,
	)

/obj/item/storage/pouch/shiptest/grenade
	name = "grenade pouch"
	desc = "A row of small pouches intended for holding explosives safely, primarily grenades."
	icon_state = "pouch_grenade"
	storage_slots = 3
	can_hold = list(
		/obj/item/explosive/plastic,
		/obj/item/explosive/mine,
		/obj/item/explosive/grenade,
	)

/obj/item/storage/pouch/shiptest/medical
	name = "aid pouch"
	desc = "An individual first aid kit, for use preventing and treating battlefield injuries."
	icon_state = "pouch_medical"
	storage_slots = 4
	can_hold = list(
		/obj/item/device/healthanalyzer,
		/obj/item/reagent_container/dropper,
		/obj/item/reagent_container/pill,
		/obj/item/reagent_container/glass/bottle,
		/obj/item/reagent_container/syringe,
		/obj/item/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/device/flashlight/pen,
		/obj/item/reagent_container/hypospray,
		/obj/item/tool/extinguisher/mini,
		/obj/item/storage/syringe_case,
		/obj/item/tool/surgery/surgical_line,
		/obj/item/tool/surgery/synthgraft,
	)

/obj/item/storage/pouch/shiptest/squad
	name = "command pouch"
	desc = "A light blue pouch used by squad leaders everywhere to hold command equipment."
	icon_state = "pouch_squad"
	storage_slots = 5
