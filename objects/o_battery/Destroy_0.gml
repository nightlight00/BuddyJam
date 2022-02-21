global.hasBattery = true;
var text = instance_create_layer(o_player.x, o_player.y, "Instances", o_pickup_text);
text.item_name = "battery get!";
playSound(snd_clink, 0.5, false, x, y, 0.5);