
if (!variable_global_exists("ghostInit")) {
    global.recording = [];
    global.ghostFrames = [];
    global.bestTime = -1;
    global.inputBlocked = false;
    global.ghostInit = true;
}

triggered = false;
timer = 0;
isRunning = false;