drawTimer--;
if (instance_exists(o_player) && drawTimer < 0) {
	if (distance_to_object(o_player) < 32 && keyboard_check_pressed(ord("E"))) {
		if (global.hasBattery) {
			// get trolled didnt finish code lul
			var text = instance_create_layer(o_player.x, o_player.y, "Instances", o_pickup_text);
			text.item_name = "get trolled didnt finish code lul";
		}
		else {
			// tell player cant be used yet
			var text = instance_create_layer(o_player.x, o_player.y, "Instances", o_pickup_text);
			text.item_name = "needs a power source to work...";
		}
		// so you cant spam click it
		drawTimer = 60;
	}
}