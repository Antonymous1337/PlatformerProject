/// @description Size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h/2;

enum TRANS_MODE {
	OFF, // nothing
	NEXT,
	GOTO,
	RESTART,
	INTRO // revealing to player the screen
}
mode = TRANS_MODE.INTRO;
percent = 1.2;
target = room;