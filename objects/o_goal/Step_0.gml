drawTimer--;
if (instance_exists(o_player) && drawTimer < 0) {
	if (distance_to_object(o_player) < 32 && keyboard_check_pressed(ord("E"))) {
		if (global.hasBattery) {
			if (global.enemyLevel >= 6)
			{
				room_goto(rm_Boss);
			}
			else
			{
				// sets the teleporter to on
				image_index = s_powered_teleporter;

				var text = instance_create_layer(o_player.x, o_player.y, "Instances", o_pickup_text);
				text.item_name = "get trolled didnt finish code lul";
				Save_Game();
				room_goto(rm_arena1);
			}
			
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