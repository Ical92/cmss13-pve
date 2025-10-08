/obj/item/storage/belt/shiptest
	icon = 'icons/shiptest/clothing/belts.dmi'
	contained_sprite = TRUE

/obj/item/storage/belt/shiptest/toolbelt
	name = "\improper toolbelt"
	desc = "Holds tools."
	icon_state = "utility"
	item_state = "utility"
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
	storage_slots = 10

/obj/item/storage/belt/shiptest/clip
	name = "\improper Minutemen belt rig"
	desc = "This belt features many large pouches colored in Confederated League blue. The bulk of the pouches makes it only slightly uncomfortable to wear."
	icon_state = "clipwebbing-alt"
	item_state = "clipwebbing-alt"
	storage_slots = 5

/obj/item/storage/belt/shiptest/clip/rig
	name = "\improper Minutemen chest rig"
	desc = "This rig features many large pouches colored in Confederated League blue. The bulk of the pouches makes it only slightly uncomfortable to wear."
	icon_state = "clipwebbing"
	item_state = "clipwebbing"
	storage_slots = 5

/obj/item/storage/belt/shiptest/clip/medical
	name = "\improper CLIP medical webbing"
	desc = "A variation on the standard Minuteman rig, colored white and instead designed to hold various medical supplies."
	icon_state = "clip-medwebbing"
	item_state = "clip-medwebbing"
	storage_slots = 14
	max_w_class = SIZE_MEDIUM
	max_storage_space = 28

	can_hold = list(
		/obj/item/device/healthanalyzer,
		/obj/item/reagent_container/dropper,
		/obj/item/reagent_container/glass/beaker,
		/obj/item/reagent_container/glass/bottle,
		/obj/item/reagent_container/pill,
		/obj/item/reagent_container/syringe,
		/obj/item/tool/lighter,
		/obj/item/storage/fancy/cigarettes,
		/obj/item/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/gloves/latex,
		/obj/item/storage/syringe_case,
		/obj/item/device/flashlight/flare,
		/obj/item/reagent_container/hypospray,
		/obj/item/bodybag,
		/obj/item/device/defibrillator,
		/obj/item/tool/surgery/surgical_line,
		/obj/item/device/reagent_scanner,
		/obj/item/device/analyzer/plant_analyzer,
		/obj/item/roller,
		/obj/item/tool/surgery/synthgraft,
		/obj/item/reagent_container/glass/minitank,
		/obj/item/storage/surgical_case,
		/obj/item/reagent_container/blood,
	)
