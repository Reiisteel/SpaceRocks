switch(room) {
	case room_start:
		room_goto(room_game)
	break
	
	case room_win:
	case room_gameover:
		game_restart()
	break
}
