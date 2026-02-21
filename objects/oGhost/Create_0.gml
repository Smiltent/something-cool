
frame = 0;
image_alpha = 0.5;
started = false;

if (array_length(global.ghostFrames) > 0) {
    x = global.ghostFrames[0].x;
    y = global.ghostFrames[0].y;
    frame = 1;
}