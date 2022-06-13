if(room == room_game) {
	if(score >= 1000) {
		room_goto(room_win)
	}

	if(lives <= 0) {
		room_goto(room_gameover)	
	}
}
