var text = instance_create_layer(o_player.x, o_player.y, "Instances", o_pickup_text);
switch (holding) {
	default: text.item_name = "uh oh!"; break;
	case 0: text.item_name = "laser!"; break;
	case 1: text.item_name = "shotgun!"; break;
	case 2: text.item_name = "machinegun!"; break;
	case 3: text.item_name = "railgun!"; break;
	case 4: text.item_name = "tracker!"; break;
	case 5: text.item_name = "launcher!"; break;
}
var replace = instance_create_layer(x, y, "Instances", o_weapon_pick);
replace.holding = o_weapon.current_weap;
o_weapon.current_weap = holding;
