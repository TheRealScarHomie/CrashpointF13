/* First aid storage
 * Contains:
 *		First Aid Kits
 * 		Pill Bottles
 *		Dice Pack (in a pill bottle)
 */

/*
 * First Aid Kits
 */
/obj/item/storage/firstaid
	name = "first-aid kit"
	desc = "It's an emergency medical kit for those serious boo-boos."
	icon_state = "firstaid"
	lefthand_file = 'icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/medical_righthand.dmi'
	throw_speed = 3
	throw_range = 7
	var/empty = FALSE

/obj/item/storage/firstaid/regular
	icon_state = "firstaid"
	desc = "A first aid kit with the ability to heal common types of injuries."

/obj/item/storage/firstaid/regular/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] begins giving [user.p_them()]self aids with \the [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return BRUTELOSS

/obj/item/storage/firstaid/regular/PopulateContents()
	if(empty)
		return
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/bruise_pack(src)
	new /obj/item/stack/medical/bruise_pack(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/reagent_containers/hypospray/medipen(src)
	new /obj/item/healthanalyzer(src)

/obj/item/storage/firstaid/ancient
	icon_state = "firstaid"
	desc = "A first aid kit with the ability to heal common types of injuries."

/obj/item/storage/firstaid/ancient/PopulateContents()
	if(empty)
		return
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/bruise_pack(src)
	new /obj/item/stack/medical/bruise_pack(src)
	new /obj/item/stack/medical/bruise_pack(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)

/obj/item/storage/firstaid/fire
	name = "burn treatment kit"
	desc = "A specialized medical kit for when the toxins lab <i>-spontaneously-</i> burns down."
	icon_state = "ointment"
	item_state = "firstaid-ointment"

/obj/item/storage/firstaid/fire/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] begins rubbing \the [src] against [user.p_them()]self! It looks like [user.p_theyre()] trying to start a fire!</span>")
	return FIRELOSS

/obj/item/storage/firstaid/fire/Initialize(mapload)
	. = ..()
	icon_state = pick("ointment","firefirstaid")

/obj/item/storage/firstaid/fire/PopulateContents()
	if(empty)
		return
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/pill/patch/silver_sulf(src)
	new /obj/item/reagent_containers/pill/oxandrolone(src)
	new /obj/item/reagent_containers/pill/oxandrolone(src)
	new /obj/item/reagent_containers/hypospray/medipen(src)
	new /obj/item/healthanalyzer(src)

/obj/item/storage/firstaid/toxin
	name = "toxin treatment kit"
	desc = "Used to treat toxic blood content and radiation poisoning."
	icon_state = "antitoxin"
	item_state = "firstaid-toxin"

/obj/item/storage/firstaid/toxin/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] begins licking the lead paint off \the [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return TOXLOSS

/obj/item/storage/firstaid/toxin/Initialize(mapload)
	. = ..()
	icon_state = pick("antitoxin","antitoxfirstaid","antitoxfirstaid2","antitoxfirstaid3")

/obj/item/storage/firstaid/toxin/PopulateContents()
	if(empty)
		return
	for(var/i in 1 to 4)
		new /obj/item/reagent_containers/syringe/charcoal(src)
	for(var/i in 1 to 2)
		new /obj/item/storage/pill_bottle/charcoal(src)
	new /obj/item/healthanalyzer(src)

/obj/item/storage/firstaid/o2
	name = "oxygen deprivation treatment kit"
	desc = "A box full of oxygen goodies."
	icon_state = "o2"
	item_state = "firstaid-o2"

/obj/item/storage/firstaid/o2/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] begins hitting [user.p_their()] neck with \the [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return OXYLOSS

/obj/item/storage/firstaid/o2/PopulateContents()
	if(empty)
		return
	for(var/i in 1 to 4)
		new /obj/item/reagent_containers/pill/salbutamol(src)
	new /obj/item/reagent_containers/hypospray/medipen(src)
	new /obj/item/reagent_containers/hypospray/medipen(src)
	new /obj/item/healthanalyzer(src)

/obj/item/storage/firstaid/brute
	name = "brute trauma treatment kit"
	desc = "A first aid kit for when you get toolboxed."
	icon_state = "brute"
	item_state = "firstaid-brute"

/obj/item/storage/firstaid/brute/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] begins beating [user.p_them()]self over the head with \the [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return BRUTELOSS

/obj/item/storage/firstaid/brute/PopulateContents()
	if(empty)
		return
	for(var/i in 1 to 4)
		new /obj/item/reagent_containers/pill/patch/styptic(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/healthanalyzer(src)

/obj/item/storage/firstaid/tactical
	name = "combat medical kit"
	desc = "I hope you've got insurance."
	icon_state = "bezerk"

/obj/item/storage/firstaid/tactical/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_NORMAL

/obj/item/storage/firstaid/tactical/PopulateContents()
	if(empty)
		return
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/defibrillator/compact/combat/loaded(src)
	new /obj/item/reagent_containers/hypospray/combat(src)
	new /obj/item/reagent_containers/pill/patch/styptic(src)
	new /obj/item/reagent_containers/pill/patch/silver_sulf(src)
	new /obj/item/reagent_containers/syringe/lethal/choral(src)
	new /obj/item/clothing/glasses/hud/health/night(src)

/*
 * Pill Bottles
 */

/obj/item/storage/pill_bottle
	name = "pill bottle"
	desc = "It's an airtight container for storing medication."
	icon_state = "pill_canister"
	icon = 'icons/obj/chemical.dmi'
	item_state = "contsolid"
	lefthand_file = 'icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/medical_righthand.dmi'
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/pill_bottle/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.allow_quick_gather = TRUE
	STR.click_gather = TRUE
	STR.can_hold = typecacheof(list(/obj/item/reagent_containers/pill, /obj/item/dice))

/obj/item/storage/pill_bottle/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is trying to get the cap off [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return (TOXLOSS)

/obj/item/storage/pill_bottle/charcoal
	name = "bottle of charcoal pills"
	desc = "Contains pills used to counter toxins."

/obj/item/storage/pill_bottle/charcoal/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/charcoal(src)

/obj/item/storage/pill_bottle/epinephrine
	name = "bottle of epinephrine pills"
	desc = "Contains pills used to stabilize patients."

/obj/item/storage/pill_bottle/epinephrine/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/epinephrine(src)

/obj/item/storage/pill_bottle/mutadone
	name = "bottle of mutadone pills"
	desc = "Contains pills used to treat genetic abnormalities."

/obj/item/storage/pill_bottle/mutadone/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/mutadone(src)

/obj/item/storage/pill_bottle/mannitol
	name = "bottle of mannitol pills"
	desc = "Contains pills used to treat brain damage."

/obj/item/storage/pill_bottle/mannitol/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/mannitol(src)

/obj/item/storage/pill_bottle/stimulant
	name = "bottle of stimulant pills"
	desc = "Guaranteed to give you that extra burst of energy during a long shift!"

/obj/item/storage/pill_bottle/stimulant/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/stimulant(src)

/obj/item/storage/pill_bottle/mining
	name = "bottle of patches"
	desc = "Contains patches used to treat brute and burn damage."

/obj/item/storage/pill_bottle/mining/PopulateContents()
	new /obj/item/reagent_containers/pill/patch/silver_sulf(src)
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/pill/patch/styptic(src)

/obj/item/storage/pill_bottle/chem_tin/
	name = "chem tin"
	desc = "A branded tin made to hold ingestable chems."

/obj/item/storage/pill_bottle/chem_tin/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.allow_quick_gather = TRUE
	STR.click_gather = TRUE
	STR.can_hold = typecacheof(list(/obj/item/reagent_containers/pill, /obj/item/reagent_containers/syringe, /obj/item/dice))

/obj/item/storage/pill_bottle/chem_tin/mentats
	name = "Mentats"
	icon_state = "pill_canister_mentats"
	desc = "Contains pills used to increase intelligence and perception."

/obj/item/storage/pill_bottle/chem_tin/mentats/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/mentat(src)

/obj/item/storage/pill_bottle/chem_tin/fixer
	name = "Fixer"
	icon_state = "pill_canister_fixer"
	desc = "Contains pills used to treat addiction and overdose on other chems."

/obj/item/storage/pill_bottle/chem_tin/fixer/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/fixer(src)

/obj/item/storage/pill_bottle/chem_tin/radx
	name = "Rad-X"
	icon_state = "pill_canister_radx"
	desc = "Contains pills used to treat and prevent radiation and minor toxin damage."

/obj/item/storage/pill_bottle/chem_tin/radx/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/radx(src)

/obj/item/storage/pill_bottle/chem_tin/waterpuretablet
	name = "Water Purification Tablets"
	icon_state = "pill_canister_water"
	desc = "Contains tablets used to treat dirty water. Simply drop a tablet in a bottle or cup, and wait a few seconds."

/obj/item/storage/pill_bottle/chem_tin/waterpuretablet/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/waterpuretablet(src)

/obj/item/storage/pill_bottle/chem_tin/foodpaste
	name = "Nutriment Tablets"
	icon_state = "pill_canister_paste"
	desc = "Contains tablets that contain nutriments needed for survival. Don't take more than one every five minutes at once, to avoid wasting them all."

/obj/item/storage/pill_bottle/chem_tin/foodpaste/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/pill/foodpaste(src)
