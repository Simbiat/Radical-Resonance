function damagePlayer(force = false)
{
	if instance_exists(obj_player) {
		obj_game.combo = 0;
		musicDistort(true);
		if obj_game.hp >= 0 {
			if !obj_player.invincible || force {
				obj_game.hp--;
				if !force {
					instance_create_layer(obj_player.x, obj_player.y, "UI", obj_live_remove);
					obj_game.hp_lost++;
				}
			}
			if !obj_player.is_grounded {
				with obj_player {
					//Change sprite to falling animation
					sprite_index = asset_get_index("char_"+string(obj_res_manager.charid)+"_falling");
					//Gold tone and black&white luminence (close to sepia effect)
					blinkShader(sha_tone, 5, room_speed/10, [1.0, 0.843, 0.0], [0.299, 0.587, 0.114]);
					//Block jumping
					invincible = true;
					canJump = false
					//If it's not our last HP - set alarm to restore jump ability
					if  obj_game.hp >= 0 && alarm[1] < 0 {
						alarm[1] = room_speed;
					}
					//Set alarm to remove invincibility
					if alarm[3] < 0 {
						alarm[3] = room_speed;
					}
					//Bring to ground
					vspeed = obj_player.jump_height;
					//move_and_collide(0, room_height-y, room_floor);
				}
			}
			if obj_game.hp < 0 {
				//Update highest points
				if totalScore() > obj_res_manager.points_highest {
					obj_game.newRecord = true;
					obj_res_manager.points_highest = obj_game.points_enemies + obj_game.points_prompts + obj_game.points_time;
				}
				//Disable prompts
				obj_game.allow_prompts = false;
				//Disable enemies
				obj_game.generate_enemies = false;
				//Remove prompts
				if instance_exists(obj_prompt) {
					instance_destroy(obj_prompt);
				}
				//Stop music
				audio_stop_sound(obj_res_manager.music_file);
				//Create sequence
				layer_sequence_create("DarkenForGO", room_width/2, room_height/2, seq_go_darken)
				layer_sequence_create("GameOver", room_width/2, room_height/2, seq_game_over);
			}
		}
	}
}

function damageEnemy(addPoints = true)
{
	hp -= 1;
	if (hp == 0) {
		//Add points
		if addPoints {
			if obj_game.hp >= 0 {
				obj_game.points_previous = totalScore();
				obj_game.enemies_killed++;
				obj_game.points_enemies += obj_game.score_multiplier*points;
				addHPForScore();
			}
			instance_create_layer(x, y, "UI", obj_points, {points: obj_game.score_multiplier*points});
			killed = true;
		}
		//Destroy the instance
		instance_destroy();
	} else {
		blink_on_hit = true;
		alarm[0] = 0.25*room_speed;
	}
}

function addHP()
{
	layer_sequence_create("UI", room_width/2, room_height/2, seq_add_life);
}

function addHPForScore()
{
	var currentScore = totalScore();
	if currentScore == 0 || currentScore < obj_game.points_previous {
		return;
	}
	if currentScore%5000 == 0 {
		addHP();
		return;
	}
	var milestones_passed = floor(currentScore / 5000) - floor(obj_game.points_previous / 5000);
	for (i = 0; i < milestones_passed; i++) {
		addHP();
	}
}

function addHPForCombo()
{
	//Add HP for S, SS, SSS
	if obj_game.combo == 55 || obj_game.combo == 45 || obj_game.combo == 35 {
		addHP();
	}
}

function autoTarget(targetXPos = 0)
{
	var toTarget = noone;
	var enemiesNumber = instance_number(obj_enemy);
	if enemiesNumber > 0 {
	    for (var i = 0; i < enemiesNumber; ++i;) {
			var alreadyTargeted = false;
			//Get the enemy
			var enemy = instance_find(obj_enemy,i);
			//Enemy is a potential target only if it's X position is less than argument
			if enemy.x <= targetXPos {
				//Check if any instakill bullets are targetting this enemy already
				for (var j = 0; j < instance_number(obj_bullet); ++j;) {
					var bullet = instance_find(obj_bullet,j);
					if bullet.target == enemy {
						alreadyTargeted = true;
						//Break loop early
						break;
					}
				}
				if !alreadyTargeted {
					//Shoot a note towards the enemy
					toTarget = enemy;
				}
			}
	    }
	}
	return toTarget;
}