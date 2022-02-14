drawTimer--;
if (instance_exists(o_player) && drawTimer < 0) {
	if (distance_to_object(o_player) < 32 && keyboard_check_pressed(ord("E"))) {
		if (teleporter_active) {
			global.enemyLevel++;
			if (global.enemyLevel >= 6)
			{
				room_goto(rm_Boss);
			}
			else
			{
				// sets the teleporter to on
				Save_Game();
				room_goto(rm_arena1);
			}
		}
		else if (global.hasBattery) {
			image_speed = 1;
			sprite_index = s_powered_teleporter;
			teleporter_active = true;
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