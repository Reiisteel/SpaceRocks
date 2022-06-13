// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Rock(_sprite) constructor {

	sprite = _sprite
	speed = 1
	
	static MakeDebris = function(_x, _y) {
		repeat(10) {
			instance_create_layer(_x, _y, "Instances", obj_debris)
		}
	}
	
	static Split = function(_x, _y, _obj_rock) {
		repeat(2) {
			var new_rock = instance_create_layer(_x, _y, "Instances", _obj_rock)
		}
	}
	
	static Explode = function(_x, _y) {
		MakeDebris(_x, _y)
	}
}

function RockSmall() : Rock(spr_rock_small) constructor {}

function RockMedium() : Rock(spr_rock_medium) constructor {
	
	static Explode = function(_instanceId, _x, _y) {
		Split(_x, _y, obj_rock_small)
		MakeDebris(_x, _y)
	}
}

function RockHuge() : Rock(spr_rock_huge) constructor {
	
	static Explode = function(_instanceId, _x, _y) {
		Split(_x, _y, obj_rock_medium)
		MakeDebris(_x, _y)
	}
}