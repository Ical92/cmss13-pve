/obj/item/clothing/under/marine/shiptest/clip
	name = "\improper CLIP deck worker jumpsuit"
	desc = "A jumpsuit worn by non-Minutemen workers in CLIP vessels."
	icon = 'icons/shiptest/clothing/uniforms.dmi'
	icon_state = "clip_deck"
	worn_state = "clip_deck"
	specialty = "CLIP Deck Worker"
	contained_sprite = TRUE
	flags_jumpsuit = FALSE
	sensor_faction = FACTION_CMM

/obj/item/clothing/under/marine/shiptest/clip/cmm
	name = "\improper Minutemen combat fatigues"
	desc = "The distinctive blue uniform of the Confederated League Minutemen, worn during field work and battle. Smells faintly of blueberries."
	icon_state = "clip_minuteman"
	worn_state = "clip_minuteman"
	specialty = "C-MM"
	flags_jumpsuit = UNIFORM_SLEEVE_ROLLABLE|UNIFORM_JACKET_REMOVABLE

/obj/item/clothing/under/marine/shiptest/clip/cmm/formal
	name = "\improper CLIP service uniform"
	desc = "A formal outfit consisting of CLIP-issued navy slacks and white dress shirt. Commonly seen on white-collar CLIP bureaucrats, but also worn by minutemen outside of combat."
	icon_state = "clip_formal"
	worn_state = "clip_formal"
	specialty = "C-MM Service"
	flags_jumpsuit = FALSE

/obj/item/clothing/under/marine/shiptest/clip/cmm/officer
	name = "\improper Minutemen officer service uniform"
	desc = "The brown service uniform worn by officers of the CLIP Minutemen."
	icon_state = "clip_officer"
	worn_state = "clip_officer"
	specialty = "C-MM Officer"
	flags_jumpsuit = FALSE

/obj/item/clothing/under/marine/shiptest/clip/cmm/officer/skirt
	icon_state = "clip_officer_skirt"
	worn_state = "clip_officer_skirt"

/obj/item/clothing/under/marine/shiptest/clip/cmm/medic
	name = "\improper CLIP medic uniform"
	desc = "A Confederated League uniform with navy slacks and a blue button-down shirt, embroidered with white shoulder patches. The patches feature a medical cross, denoting the wearer as medical personnel."
	icon_state = "clip_medic"
	worn_state = "clip_medic"
	specialty = "C-MM Medic"
	flags_jumpsuit = FALSE
