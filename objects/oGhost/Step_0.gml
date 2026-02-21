
if (!started && oTimer.isRunning) {
    started = true;
}

if (started) {
    if (frame < array_length(global.ghostFrames)) {
        x = global.ghostFrames[frame].x;
        y = global.ghostFrames[frame].y;
        frame++;
	 } else {
	    global.recording = [];
        global.ghostFrames = [];
        global.bestTime = -1;
        global.inputBlocked = false;
        global.ghostInit = false;
        room_restart();
	}
}