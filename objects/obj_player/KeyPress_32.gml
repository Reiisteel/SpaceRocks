var inst = instance_create_layer(x,y, "Instances", obj_bullet)
inst.direction = image_angle
audio_play_sound(snd_shoot, 1, false)