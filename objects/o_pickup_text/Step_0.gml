/// @description 
y -= travelSpeed;
travelSpeed *= 0.96;
pickupTime--;
if (pickupTime < 0) {
	instance_destroy(); }