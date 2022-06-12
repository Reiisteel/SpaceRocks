instance_destroy()

with(other) {
	instance_destroy()
	
	switch(sprite_index) {
		case spr_rock_huge:
			repeat(2) {
				var new_rock = instance_create_layer(x, y, "Instances", obj_rock)
				new_rock.sprite_index = spr_rock_medium
			}
		break
		
		case spr_rock_medium:
			repeat(2) {
				var new_rock = instance_create_layer(x, y, "Instances", obj_rock)
				new_rock.sprite_index = spr_rock_small
			}
		break
		
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris)
	}
}
