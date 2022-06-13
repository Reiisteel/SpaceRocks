switch(room) {
	case room_game :
		draw_text(20, 20, "SCORE: " + string(score))
		draw_text(20, 40, "LIVES: " + string(lives))
	break
	
	case room_start :
		var color = c_yellow
		draw_set_halign(fa_center)
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS", 3, 3, 0, color, color, color, color, 1
		)
		draw_text(
			room_width/2, 200,
			@"Score 1000 points to win!
			
			UP: move
			LEFT/RIGHT: change direction
			SPACE: shoot
			
			>> PRESS ENTER TO START <<"
		)
		draw_set_halign(fa_left)
	break
	
	case room_win :
		var color = c_lime
		draw_set_halign(fa_center)
		draw_text_transformed_color(
			room_width/2, 200, "YOU WIN!", 3, 3, 0, color, color, color, color, 1
		)
		draw_text(
			room_width/2, 300,
			"PRESS ENTER TO RESTART"
		)
		draw_set_halign(fa_left)
	break
	
	case room_gameover :
		var color = c_red
		draw_set_halign(fa_center)
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER", 3, 3, 0, color, color, color, color, 1
		)
		draw_text(
			room_width/2, 250,
			"FINAL SCORE: " + string(score)
		)
		draw_text(
			room_width/2, 300,
			"PRESS ENTER TO RESTART"
		)
		draw_set_halign(fa_left)
	break
}
