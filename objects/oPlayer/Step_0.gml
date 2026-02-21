x_speed = 0;
y_speed += .5;

if (!global.input_blocked) {
    // timer logic
    if (!oTimer.isRunning) {
        if (keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down)) {
            oTimer.isRunning = true;
        }
    }

    // walking logic
    if (keyboard_check(vk_right)) {
        x_speed = walk_speed;
        image_xscale = -1;
    } else if (keyboard_check(vk_left)) {
        x_speed = -walk_speed;
        image_xscale = 1;
    }

    if (place_meeting(x, y + 1, oSolid)) {
        if (keyboard_check_pressed(vk_up)) {
            y_speed = -7;
        } else {
            y_speed = 0;
        }
    }

    move_and_collide(x_speed, y_speed, oSolid);

    if (oTimer.isRunning) {
        array_push(global.recording, { x: x, y: y });
    }

    if (place_meeting(x, y, oSpikes)) {
        room_restart();
    }

    if (y > room_height || x > room_width || x < 0) {
        room_restart();
    }
}