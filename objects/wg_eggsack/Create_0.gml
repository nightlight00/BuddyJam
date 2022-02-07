image_speed = 0;
image_index = 3;/// @description 


contents = instance_number(object_index);
if (contents == 1) { contents = "weapon"; }
else if (contents == 2) { contents = "battery"; }
else if (contents == 3 || contents == 4) { contents = "pickup"; }
else { contents = "dud"; }
