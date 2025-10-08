/obj/item/clothing/gloves/shiptest
	name = "shiptest gloves"
	desc = "Gloves for testing ships, wow!"
	icon = 'icons/shiptest/clothing/gloves.dmi'
	contained_sprite = TRUE
	icon_state = "combat"
	permeability_coefficient = 0.05
	flags_cold_protection = BODY_FLAG_HANDS
	flags_heat_protection = BODY_FLAG_HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROT
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROT
	flags_armor_protection = BODY_FLAG_HANDS
	armor_melee = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_MEDIUM
	armor_laser = CLOTHING_ARMOR_LOW
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_MEDIUM
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_MEDIUM

/obj/item/clothing/gloves/shiptest/combat
	name = "\improper combat gloves"
	desc = "These tactical gloves are extra-durable, offering some fire and acid protection."
	icon_state = "combat"

/obj/item/clothing/gloves/shiptest/insul
	name = "\improper insulated gloves"
	desc = "These gloves provide protection against electric shock."
	siemens_coefficient = 0
	icon_state = "insul"

/obj/item/clothing/gloves/shiptest/nitrile/clip
	name = "\improper long white nitrile gloves"
	desc = "Thick sterile gloves that reach up to the elbows."
	icon_state = "nitrile_clip"
	armor_bio = CLOTHING_ARMOR_HIGH
