// 40mm (Grenade Launcher)
/obj/item/ammo_casing/a40mm
	name = "40mm HE shell"
	desc = "A cased high explosive grenade that can only be activated once fired out of a grenade launcher."
	caliber = "40mm"
	icon_state = "40mmHE"
	projectile_type = /obj/item/projectile/bullet/a40mm

/obj/item/ammo_casing/a40mmg
	name = "40mm TG shell"
	desc = "A thin, cased tear gas grenade. Only activates once it impacts the ground at high speed."
	caliber = "40mmg"
	icon_state = "40mmTG"
	projectile_type = /obj/item/projectile/bullet/a40mmg

// 5.56x45mm
/obj/item/ammo_casing/a556
	name = "5.56x45 FMJ bullet casing"
	desc = "A 5.56x45mm full metal jacket bullet casing, typically used in medium-power rifles."
	caliber = "a556"
	projectile_type = /obj/item/projectile/bullet/a556

/obj/item/ammo_casing/a556/ap
	name = "5.56x45 AP bullet casing"
	desc = "A 5.56x45mm armor piercing bullet casing, for use with armored targets."
	projectile_type = /obj/item/projectile/bullet/a556/ap

/obj/item/ammo_casing/a556/jhp
	name = "5.56x45 JHP bullet casing"
	desc = "A 5.56x45mm jacketed hollow point bullet casing, for use with unarmored targets."
	projectile_type = /obj/item/projectile/bullet/a556/jhp

// 7.62x51, .308 Winchester
/obj/item/ammo_casing/a762
	name = "7.62x51 FMJ bullet casing"
	desc = "A 7.62x51 full metal jacket bullet casing, typically used in high-power, long range rifles."
	icon_state = "762-casing"
	caliber = "a762"
	projectile_type = /obj/item/projectile/bullet/a762

/obj/item/ammo_casing/a762/ap
	name = "7.62x51 AP bullet casing"
	desc = "A 7.62x51 armor piercing bullet casing, for use with armored targets."
	projectile_type = /obj/item/projectile/bullet/a762/ap

/obj/item/ammo_casing/a762/jhp
	name = "7.62x51 JHP bullet casing"
	desc = "A 7.62x51 jacketed hollow point bullet casing, for use with unarmored targets."
	projectile_type = /obj/item/projectile/bullet/a762/jhp

// 2mm EC
/obj/item/ammo_casing/c2mm
	name = "2mm gauss projectile casing"
	desc = "A 2mm gauss projectile casing, used solely in gauss rifles."
	caliber = "2mm"
	projectile_type = /obj/item/projectile/bullet/c2mm


/obj/item/ammo_casing/F13/m308
	desc = "A .308 bullet casing, the goto high-power rifle caliber."
	caliber = "308mm"
	icon_state = "762-casing"
	projectile_type = /obj/item/projectile/bullet/F13/c308mmBullet
	randomspread = 1
	variance = 2

/obj/item/ammo_casing/F13/m308/heap
	projectile_type = /obj/item/projectile/bullet/F13/c308mmBullet/heap

/obj/item/ammo_casing/F13/m308/armourpiercing
	projectile_type = /obj/item/projectile/bullet/F13/c308mmBullet/armourpiercing

/obj/item/ammo_casing/F13/a556
	desc = "A 5.56 bullet casing."
	caliber = "223mm"
	projectile_type = /obj/item/projectile/bullet/F13/c556Bullet
	randomspread = 1
	variance = 2

/obj/item/ammo_casing/F13/a556/heap
	projectile_type = /obj/item/projectile/bullet/F13/c556Bullet/heap

/obj/item/ammo_casing/F13/a556/armourpiercing
	projectile_type = /obj/item/projectile/bullet/F13/c556Bullet/armourpiercing

