
// cool spawn
for (var i = 0; i < 25; i++) {
	createDust(4, random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), random_range(0.5, 0.8), random_range(45, 135));
}

// variables
wiggle = 0;
wiggle2 = 0;

current_attack = -1;
attack_cooldown = 90;
attack_timer = 0;

desiredX = x;
desiredY = y - 40;

targetdir = 0;

hp = 100;
MaxHp = 100;
defense = 0;

arm_version = s_boss_stage2_arms;