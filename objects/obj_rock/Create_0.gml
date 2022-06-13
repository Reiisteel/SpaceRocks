direction = irandom_range(0, 359)
image_angle = irandom_range(0, 359)
rotation_angle = choose(1, -1)

SetRock = function(_rock) {
	rock = _rock
	sprite_index = rock.sprite
	speed = rock.speed
}

SetRock(rock)
