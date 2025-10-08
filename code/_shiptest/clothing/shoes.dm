/obj/item/clothing/shoes/shiptest/combat
	name = "\improper combat boots"
	desc = "High speed, low drag combat boots."
	icon = 'icons/shiptest/clothing/shoes.dmi'
	icon_state = "combat"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_MEDIUM
	armor_laser = CLOTHING_ARMOR_LOW
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_MEDIUM
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMLOW
	flags_cold_protection = BODY_FLAG_FEET
	flags_heat_protection = BODY_FLAG_FEET
	min_cold_protection_temperature = SHOE_MIN_COLD_PROT
	max_heat_protection_temperature = SHOE_MAX_HEAT_PROT
	siemens_coefficient = 0.7
	var/armor_stage = 0
	allowed_items_typecache = list(
		/obj/item/attachable/bayonet,
		/obj/item/weapon/throwing_knife,
		/obj/item/weapon/gun/pistol/holdout,
		/obj/item/weapon/gun/pistol/clfpistol,
		/obj/item/tool/screwdriver,
		/obj/item/tool/surgery/scalpel,
		/obj/item/weapon/straight_razor,
		/obj/item/weapon/knife/marine,
	)
	drop_sound = "armorequip"

/obj/item/clothing/shoes/shiptest/combat/knife
	spawn_item_type = /obj/item/weapon/knife/marine
