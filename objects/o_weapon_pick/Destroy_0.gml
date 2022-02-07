var text = instance_create_layer(o_player.x, o_player.y, "Instances", o_pickup_text);
switch (holding) {
	default: text.item_name = "uh oh!"; break;
	case 0: text.item_name = "pistol!"; break;
	case 1: text.item_name = "shotgun!"; break;
	case 2: text.item_name = "machinegun!"; break;
}
var replace = instance_create_layer(x, y, "Instances", o_weapon_pick);
replace.holding = o_weapon.current_weap;
o_weapon.current_weap = holding;
