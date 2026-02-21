
if (!triggered) {
    triggered = true;
	if (oTimer.timer < global.bestTime || global.bestTime == -1) {
	    global.bestTime = oTimer.timer;
	    global.ghostFrames = global.recording;
	}

	global.recording = [];
	oTimer.timer = 0;
	oTimer.isRunning = false;
	global.inputBlocked = true;
	oPlayer.image_speed = 0;

	alarm[0] = room_speed / 2;
}