 var onGroundPrev = onGround;

event_inherited();

if(onGround && !onGroundPrev){
	repeat(4){
		instance_create(x + random_range(-8, 8), y + 15 + random_range(-2, 2), oParticle);
	}
	
	xscale = 1.33;
	yscale = 0.85;
}
