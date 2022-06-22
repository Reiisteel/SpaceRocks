lives -= 1

with(obj_game) {
	alarm[1] = room_speed
}

audio_play_sound(snd_explosion, 1, false)
instance_destroy()

with(other) {
	instance_destroy()
}